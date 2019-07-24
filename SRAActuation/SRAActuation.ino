#include "RoveComm.h"
#include "RoveStmVnhPwm.h"
#include "SRAActuation.h"

#include "RoveWatchdog.h"

#define SPEED_FLOOR 500

RoveWatchdog        Watchdog;

void setup()
{
  Serial.begin(115200);
  delay(10);

  RoveComm.begin(RC_SRAACTUATIONBOARD_FOURTHOCTET);
  delay(10);

  pinMode(SPECTZ_PB, INPUT);
  pinMode(SPECTX_PB, INPUT);
  pinMode(SPECTY_PB, INPUT);
  pinMode(DIR_SW, INPUT);
  pinMode(UNUSED_PB, INPUT);

  pinMode(SW_IND1, OUTPUT);
  pinMode(SW_IND2, OUTPUT);
  pinMode(SW_ERR, OUTPUT);

  digitalWrite(SW_IND1, LOW);
  digitalWrite(SW_IND2, LOW);
  digitalWrite(SW_ERR, LOW);

  pinMode(SPECTZ_UPP_LS, INPUT);
  pinMode(SPECTZ_MID_LS, INPUT);
  pinMode(SPECTZ_LOW_LS, INPUT);
  pinMode(SPECTX_CENTER, INPUT);

  delay(10);
  Spectz.attach(SPECTZ_HEADER);
  Spectx.attach(SPECTX_HEADER);
  Specty.attach(SPECTY_HEADER);

  Watchdog.attach(watchdogTriggered); 
  Watchdog.start(1000, 99999);
  delay(1);
}

void loop()
{
  Serial.print(".");
  readRoveComm();
  if(watchdog_triggered)
  {
    checkButtons();
  }
  else
  {
    //moveToPos();
  }
  if(do_ls)
  {
    adjustX();
    checkLS();
  }
  writeSpeeds();
  sendStates();
  delay(10);
}

void readRoveComm()
{
  rovecomm_packet packet = RoveComm.read();
  if(packet.data_id) Serial.println(packet.data_id);
  switch(packet.data_id)
  {
    case RC_SRAACTUATION_VERTICALOPENLOOP_DATAID:
    {
      if(packet.data[0] != 0) do_to_pos_z = false;
      
      z_speed = packet.data[0];
      //if(z_speed > 0 && z_speed < SPEED_FLOOR) z_speed = 0;
      //if(z_speed < 0 && z_speed > -SPEED_FLOOR) z_speed = 0;
      Serial.print("..."); Serial.println(z_speed);
      clearWatchdog();
      break;
    }
    case RC_SRAACTUATION_VERTICALTOPOSITION_DATAID:
    {
      do_to_pos_z = true;
      target_position = packet.data[0]  /2;
      break;
    }
    case RC_SRAACTUATION_SPECTROMETERMOVE_DATAID:
    {
      x_speed = -packet.data[0];
      y_speed = -packet.data[1]; 
      if(x_speed >= 100) center = false;
      clearWatchdog();
      break;
    }
    case RC_SRAACTUATION_DOLS_DATAID:
    {
      do_ls = packet.data[0];
    }
    case RC_SRAACTUATION_CENTER_DATAID:
    {
      center = true;
      Serial.println("Center");
    }
  }
}

void checkButtons()
{
  int direction = (digitalRead(UNUSED_PB)? -1 : 1);
  Serial.print(digitalRead(UNUSED_PB));
  z_speed =  digitalRead(SPECTZ_PB) * digitalRead(SPECTZ_PB) * BUTTON_SPEED * direction;
  if(digitalRead(SPECTZ_PB))
  {
    do_to_pos_z = false;
  }
  
  x_speed =  digitalRead(SPECTX_PB) * BUTTON_SPEED * direction;
  y_speed =  digitalRead(SPECTY_PB) * BUTTON_SPEED * direction;
  //Serial.println("Speed"); Serial.println(z_speed); Serial.println(x_speed); Serial.println(y_speed);
  
}

void checkLS()
{
  Serial.println("CHECKING LS");
  if(!digitalRead(SPECTZ_LOW_LS))
  {
    ls_pressed = 0;
    if(z_speed<0) z_speed = 0;
    current_position = 0;
  }
  else if(!digitalRead(SPECTZ_MID_LS))
  {
    ls_pressed = 1;
    current_position = 1;
  }
  else if(!digitalRead(SPECTZ_UPP_LS))
  {
    ls_pressed = 2;
    if(z_speed>0) z_speed = 0;
    current_position = 2;
  }
  else //No LS pressed
  {
    if(ls_pressed == 1)
    {
     ls_pressed = 4;
     if(z_speed <= 0) current_position = 0;
     else if (z_speed > 0) current_position = 1;
    }
    else if(ls_pressed == 2)
    {
      ls_pressed = 4;
      current_position = 1;
    }
  }
  if(x_centered && digitalRead(SPECTX_CENTER))
  {
    x_pos = x_speed < 0? -1:1;
  }
  x_centered = !digitalRead(SPECTX_CENTER);
  if(x_centered)
  {
    found_x_center = true;
    center = false;
  }

  //Serial.println(current_position);
}

void moveToPos()
{
  Serial.println(do_to_pos_z);
  if(do_to_pos_z)
  {
    z_speed = 0;
    if((target_position == 2) && digitalRead(SPECTZ_UPP_LS))
    {
      z_speed = BUTTON_SPEED;
    }
    else if((target_position == 1) && digitalRead(SPECTZ_UPP_LS))
    {
      z_speed = 500* ((target_position - current_position > 0)?1:-1);
    }
  }
}

void writeSpeeds()
{
  Serial.println("Speed"); Serial.println(z_speed); Serial.println(x_speed); Serial.println(y_speed);
  //Serial.println(z_speed);
  Spectz.drive(z_speed);
  Specty.drive(y_speed);
  Spectx.drive(x_speed);
}

void sendStates()
{
  static int last_send = 0;
  if(millis()-last_send > 500)
  {
    last_send = millis();
    RoveComm.write(RC_SRAACTUATION_VERTICALPOSITION_HEADER, current_position);
  }
}

void adjustX()
{
  if(found_x_center)
  {
    if(current_position >= 1 || center)
    {
      x_speed = 0;
      if(!x_centered)
      {
        x_speed = -x_pos * 500;
        if(z_speed > 0) z_speed = 0;
      }
      else
      {
        center = false;
      }
    }
  }
}

void watchdogTriggered()
{
  Serial.println("Watchdog Triggered");
  z_speed = 0;
  x_speed = 0;
  y_speed = 0;
  watchdog_triggered = true;
  digitalWrite(SW_ERR, HIGH);
}

void clearWatchdog()
{
  Watchdog.clear();
  watchdog_triggered = false;
  digitalWrite(SW_ERR, LOW);
}
