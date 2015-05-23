/*
 * $safeprojectname$.cpp
 *
 * Created: 7/22/2014 10:42:00 PM
 *  Author: Chris
 */ 

#ifdef _ATMEL
	#include "Arduino/Arduino.h"
#else
	#include "Arduino.h"
#endif

#include <avr/io.h>

#include "power_control.h"

void setup();
void loop();

// Weak empty variant initialization function.
// May be redefined by variant files.
void initVariant() __attribute__((weak));
void initVariant() { }
void ErrorMessage(const char *file, const int lineNumber);

int main(void)
{
	// Start the platform
	init();
	initVariant();
	USBDevice.attach();

	// Call setup
	setup();
	
	while (1)
	{
		// Main loop function
		loop();
		
		// Check for USB serial events
		if (serialEventRun)
		{
			serialEventRun();
		}
	}
}

#define NUM_PORTS                   4
#define MILLIS_BETWEEN_POWER_UPDATE 100
#define MILLIS_BETWEEN_TELEM_UPDATE 1000

uint32_t time;
uint32_t nextPowerReading;
uint32_t nextTelemUpdate;

void setup() 
{
	initializePowerBusses();
	turnOnAllMotors();
	
	nextPowerReading = 0;
	nextTelemUpdate  = 5000;
}

void loop()
{
	// put your main code here, to run repeatedly:
	time = millis();
	
	if( nextPowerReading < time )
	{
		nextPowerReading = millis() + MILLIS_BETWEEN_POWER_UPDATE;
		readMotorCurrents();		
	}
	
	if( nextTelemUpdate < time )
	{
		nextTelemUpdate = millis() + MILLIS_BETWEEN_TELEM_UPDATE;
		/* update telemetry here */
	}
}

void ErrorMessage(const char *file, const int lineNumber)
{
	while(true)
	{
		Serial.print("Error occurred at line");
		Serial.print(lineNumber);
		Serial.print(" and file ");
		Serial.println(file);
		delay(1000);
	}
}
