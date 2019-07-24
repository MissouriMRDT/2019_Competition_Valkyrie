/*
 * DriveBoard Software Rev 2 2013
 * Used with ODrive Motor Controllers
 * Writes Serial to 3 motor drives
 * 
 * Andrew Van Horn
 */

#include "RoveComm.h"
#include "RovesODrive.h"
#include "DriveBoardSoftware.h"
#include "RoveWatchdog.h"

RoveCommEthernetUdp RoveComm;
RoveWatchdog        Watchdog;

void RoveCommEstopDriveMotors()
{
  Watchdog.clear();
  for(int i = 0; i<NUMMOTORS; i++)
  {
    if(digitalRead(motor[i].button_pin) == LOW) motor[i].speed = 0;
  }
  writeSpeeds();
  digitalWrite(WATCHDOG_IND_PIN, HIGH);
  Serial.println("Watchdog Triggered");

  watchdog_triggered = true;

  RoveComm.write(RC_DRIVEBOARD_WACHDOGTRIGGERED_HEADER, (uint8_t)1);
}

void idleMotors()
{
  for(int i = 0; i<NUMDRIVES; i++)
  {
    for(int j = 0; j<2; j++)
    {
      Serial.print(i+j*3);
      Serial.print(":");
      Serial.println(motor[i+j*3].speed);

      Drive[i].motor[1-j].idleMotor();
    }
  }
  Serial.println("Out");
}

void checkButtons()
{
    //Serial.println("---BUTTONS---");
    for(int i = 0; i<NUMMOTORS; i++)
    {
      //Serial.print(i);
      //Serial.print(":");
      //Serial.println(digitalRead(motor[i].button_pin));

      if(digitalRead(motor[i].button_pin))
      {
        motor[i].speed = (digitalRead(DIRECTION_SWITCH_PIN)?1:-1)*BUTTONPRESS_SPEED;
      }
      else if(watchdog_triggered)
      {
        motor[i].speed = 0;
      }
    }
}

void writeSpeeds()
{
  //Serial.println("---SPEEDS---");
  for(int i = 0; i<NUMDRIVES; i++)
  {
    for(int j = 0; j<2; j++)
    {
      //Serial.print(i+j*3);
      //Serial.print(":");
      //Serial.println(motor[i+j*3].speed);

      Drive[i].motor[1-j].setRamp(ramp_rate);
      Drive[i].motor[1-j].writeConfig();
      Drive[i].motor[1-j].setSpeed(motor[i+j*3].speed);
    }
  }
  //Serial.println("");
}

void getSpeeds()
{
  for(int i = 0; i<NUMDRIVES; i++)
  {
    for(int j = 0; j<2; j++)
    {
      //Serial.print(2*i+j);
      //Serial.print(":");
      int speed = Drive[i].motor[j].getSpeed();
    }
  }
}

void parseRoveComm()
{
  rovecomm_packet packet = RoveComm.read();
  if(packet.data_id != 0)
  {
    Serial.println(packet.data_id);
  }
  switch(packet.data_id)
  {
    case RC_DRIVEBOARD_DRIVELEFTRIGHT_DATAID:
      motor[LF].speed = packet.data[0];
      motor[LM].speed = packet.data[0];
      motor[LR].speed = packet.data[0];
      motor[RF].speed = packet.data[1];
      motor[RM].speed = packet.data[1];
      motor[RR].speed = packet.data[1];
      /*
      Serial.print("Driving:");
      Serial.print(packet.data[0]);
      Serial.print(",'");
      Serial.println(packet.data[1]);
      */
      Watchdog.clear();
      watchdog_triggered = false;
      Serial.println(packet.data[0]);
      Serial.println(packet.data[1]);
      if(packet.data[0] == 0 && packet.data[1] == 0)
      {
        idleMotors();
      }
      digitalWrite(WATCHDOG_IND_PIN, LOW);
      break;
    case RC_DRIVEBOARD_SPEEDRAMPVALUEs_DATAID:
      Serial.print("Ramp:");
      Serial.println(packet.data[0]);
      ramp_rate = packet.data[0];
      break;
  }
}

void setup()
{
  Serial.begin(115200);
  Serial.println("Begun");

  pinMode(DIRECTION_SWITCH_PIN, INPUT);

  for(int i = 0; i<NUMMOTORS; i++)
  {
    pinMode(motor[i].button_pin, INPUT);
  }
                                
  pinMode(WATCHDOG_IND_PIN    , OUTPUT);
  pinMode(LSPEED_IND_PIN      , OUTPUT);
  pinMode(RSPEED_IND_PIN      , OUTPUT);

  Serial.println("Setting up drive");

  Serial4.begin(115200);

  Drive[0].begin();
  Drive[1].begin();
  Drive[2].begin();
  Drive[0].motor[0].setPolePairs(4);
  Drive[0].motor[0].setKV(480);
  Drive[0].motor[0].setControlMode(CTRL_MODE_SENSORLESS_VELOCITY_CONTROL);
  Drive[0].motor[1].setPolePairs(4);
  Drive[0].motor[1].setKV(480);
  Drive[0].motor[1].setControlMode(CTRL_MODE_SENSORLESS_VELOCITY_CONTROL);
  Drive[1].motor[0].setPolePairs(4);
  Drive[1].motor[0].setKV(480);
  Drive[1].motor[0].setControlMode(CTRL_MODE_SENSORLESS_VELOCITY_CONTROL);
  Drive[1].motor[1].setPolePairs(4);
  Drive[1].motor[1].setKV(480);
  Drive[1].motor[1].setControlMode(CTRL_MODE_SENSORLESS_VELOCITY_CONTROL);
  Drive[2].motor[0].setPolePairs(4);
  Drive[2].motor[0].setKV(480);
  Drive[2].motor[0].setControlMode(CTRL_MODE_SENSORLESS_VELOCITY_CONTROL);
  Drive[2].motor[1].setPolePairs(4);
  Drive[2].motor[1].setKV(480);
  Drive[2].motor[1].setControlMode(CTRL_MODE_SENSORLESS_VELOCITY_CONTROL);
  Serial.print("Drives Init");

  RoveComm.begin(RC_DRIVEBOARD_FOURTHOCTET);
  Watchdog.begin(RoveCommEstopDriveMotors, 150);   
}

void loop()
{
  static int i = 0;
  i++;
  //delay(100);

  parseRoveComm();

  checkButtons();

  if(watchdog_triggered)
  {
    digitalWrite(WATCHDOG_IND_PIN, HIGH);
  }
  writeSpeeds();
  //getSpeeds();
  

}
