// Shimble Board ///////////////////////////////////////////////////////////////////////////////////////
    // Main .cpp File
//
// Created for 2019 Valkyrie by: Andrew Phillips, ajpnq2
//
// Libraries ///////////////////////////////////////////////////////////////////////////////////////////
#include "RoveComm.h"
#include "Servo.h"

RoveCommEthernetUdp RoveComm; //Extantiates RoveComm class

// Constants //////////////////////////////////////////////////////////////////////////////////////////////
    // Pinout
#define SERVO_1_CRTL_PIN   PG_1
#define SERVO_2_CRTL_PIN   PK_4
#define SERVO_3_CRTL_PIN   PK_5
#define SERVO_4_CRTL_PIN   PM_0
#define SERVO_5_CRTL_PIN   PM_7
#define SERVO_6_CRTL_PIN   PD_2
#define SERVO_7_CRTL_PIN   PA_4
#define SERVO_8_CRTL_PIN   PA_5

    //Delays
#define ROVECOMM_DELAY    5

    // Declarations
Servo Servos[8];

void getServoPositions(RC_SHIMBLEBOARD_SERVOPOS_DATAID[]);

// Setup & Loop Funcitons /////////////////////////////////////////////////////////////////////////////

void setup()
{
  Serial.begin(9600);
  RoveComm.begin(RC_SHIMBLEBOARD_FOURTHOCTET);
  delay(ROVECOMM_DELAY);

  Servos[0].attach(SERVO_1_CRTL_PIN);
  Servos[1].attach(SERVO_2_CRTL_PIN);
  Servos[2].attach(SERVO_3_CRTL_PIN);
  Servos[3].attach(SERVO_4_CRTL_PIN);
  Servos[4].attach(SERVO_5_CRTL_PIN);
  Servos[5].attach(SERVO_6_CRTL_PIN);
  Servos[6].attach(SERVO_7_CRTL_PIN);
  Servos[7].attach(SERVO_8_CRTL_PIN);

  for (int i = 0; i < 8; i++)
  {
    Servos[i].write(0);
  }
}

void loop() 
{
  // put your main code here, to run repeatedly: 
  rovecomm_packet packet;
  RC_SHIMBLEBOARD_SERVOPOS_DATATYPE servo_posotions[RC_SHIMBLEBOARD_SERVOPOS_DATACOUNT];
  
  packet = RoveComm.read();

  if(packet.data_id != 0)
  {
    switch (packet.data_id)
    {
      case RC_SHIMBLEBOARD_SERVOINC_DATAID:
      {
        RC_SHIMBLEBOARD_SERVOINC_DATATYPE curr_positions[RC_SHIMBLEBOARD_SERVOINC_DATACOUNT];
        getServoPositions(curr_positions);
        for (int i = 0; i < RC_SHIMBLEBOARD_SERVOINC_DATACOUNT; i++)
        {
           Servos[i].write(curr_positions[i] + packet.data[i]);
        }
        break;
      }

      case RC_SHIMBLEBOARD_SERVOTOPOS_DATAID:
      {
        for (int i = 0; i < RC_SHIMBLEBOARD_SERVOTOPOS_DATACOUNT; i++)
        {
           Servos[i].write(packet.data[i]);
        }
        break;    
      }

      /*case RC_SHIMBLEBOARD_SERVOTOSETPOS_DATAID:
      {
        for (int i = 0; i < RC_SHIMBLEBOARD_SERVOTOSETPOS_DATACOUNT; i++)
        {
           Servos[i].write( enum value? );
        }
        break; 
      } */
    }
  }

  getServoPositions(servo_positions);
  RoveComm.write(RC_SHIMBLEBOARD_SERVOPOS_DATAID, RC_SHIMBLEBOARD_SERVOPOS_DATACOUNT, servo_positions);
  delay (ROVECOMM_DELAY);
}


// Functions
void getServoPositions(RC_SHIMBLEBOARD_SERVOPOS_DATAID servo_positions[RC_SHIMBLEBOARD_SERVOPOS_DATACOUNT])
{
  for (int i = 0; i < RC_SHIMBLEBOARD_SERVOPOS_DATACOUNT; i++)
  {
    servo_positions[i] = Servos[i].read();
  }
}
