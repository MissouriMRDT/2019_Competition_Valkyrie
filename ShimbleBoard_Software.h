// Shimble Board ////////////////////////////////////////////////////////////////////////////////////////
    // Header File
//
// Created for 2019 Valkyrie by: Andrew Phillips, ajpnq2
//
// Libraries /////////////////////////////////////////////////////////////////////////////////////////////
#ifndef _ShimbleBoard
#define _ShimbleBoard

#include "RoveComm.h"
#include "Servo.h"

// Constants /////////////////////////////////////////////////////////////////////////////////////////////
    // Pinout
#define SERVO_1_CRTL_PIN   PM_7
#define SERVO_2_CRTL_PIN   PA_7
#define SERVO_3_CRTL_PIN   PM_6
#define SERVO_4_CRTL_PIN   PM_1
#define SERVO_5_CRTL_PIN   PM_0
#define SERVO_6_CRTL_PIN   PK_5
#define SERVO_7_CRTL_PIN   PK_4
#define SERVO_8_CRTL_PIN   PG_1
    //Delays
#define ROVECOMM_DELAY     5
#define STARTUP_DELAY	   600

	//Misc Values
#define IGNORE_THRESHOLD1  10
#define IGNORE_THRESHOLD2  10
#define INC_VALUE          35
#define STARTUP_INC 	   500

	//Servo Positions
		//Controlling FS5103R continuous servo
#define SERVO_1_REST       1500 //1500 is actual center since the potentiometer was glued in place
#define SERVO_2_REST       1400 //Main cam pitch facing forward.
#define SERVO_3_REST       1320 //Drive cam pan facing forward.
#define SERVO_4_REST       1400 //Drive cam pitch facing forward.

#define SERVO_1_MAX        1560 //Change value to change how fast the pan moves left and right. 
#define SERVO_2_MAX        2250 //Main cam pitch facing down; Higher than 2000 faces camera directly into 3d print.
#define SERVO_3_MAX        1280 //Drive cam pan max right; Lower than 1280 causes servo to jitter.
#define SERVO_4_MAX        2200 //Drive cam pitch facing down; Higher than 2200 causes servo to jitter.

#define SERVO_1_MIN        1440 //Change value to change how fast the pan moves left and right.
#define SERVO_2_MIN        100 //Main cam pitch facing up. Lower value to face further upwards.
#define SERVO_3_MIN        2220 //Drive cam pan max left; Higher than 2220 causes servo to jitter.
#define SERVO_4_MIN        750 //Drive cam pitch facing up; Lower than 750 causes servo to jitter.

		//Controlling RGS-4C continuous servo. Started using once the only FS5103R we had broke.
#define SERVORGS_1_REST	   1500
#define SERVORGS_1_LEFT	   1580 //1580
#define SERVORGS_1_RIGHT   1411 //1411

// Function Declarations ////////////////////////////////////////////////////////////////////////////////
void startupRoutine();

#endif
