/*
 * $safeprojectname$.cpp
 *
 * Created: 7/22/2014 10:42:00 PM
 *  Author: Chris
 */ 


#include <avr/io.h>
#include "Arduino/Arduino.h"

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

#define NUM_PORTS  4

void setup() 
{
	initializeMotorController();
	turnOnAllMotors();
	DDRB |= 0b00000001;
	PORTB |= 0b00000001;
}

void loop()
{
	// put your main code here, to run repeatedly:
	readMotorCurrents();
	delay(100);
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