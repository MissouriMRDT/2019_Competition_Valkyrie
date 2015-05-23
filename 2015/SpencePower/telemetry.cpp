/*
 * CPPFile1.cpp
 *
 * Created: 5/18/2015 10:13:20 PM
 *  Author: Spencer Vogel
 */ 
#ifdef _ATMEL
	#include "Arduino/SoftwareSerial.h"
#else
	#inlcude "SoftwareSerial.h"
#endif

#include "ET/SoftEasyTransfer.h"
#include "telemetry.h"
#include "power_control.h"

TransferInt8   int8Transfer;
TransferFloat  floatTransfer;
SoftwareSerial mySerial(0,1);
SoftEasyTransfer ET;
extern float motorVoltageValues[NUM_MOTORS];

void writeTelemetry()
{
	uint8_t i;
	
	
	mySerial.begin(115200);
	floatTransfer.key = 0 - 1; /* TODO: replace 0 with starting motor current read */
	
	for(i = 0; i < NUM_MOTORS; ++i)
	{
		floatTransfer.key++;
		floatTransfer.payload = motorVoltageValues[i];
		ET.begin(details(floatTransfer), &mySerial);
	}
	
	mySerial.end();
}