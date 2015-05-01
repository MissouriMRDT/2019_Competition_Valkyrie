#include "arduino/arduino.h"
#include "Arduino/eeprom.h"

#include "power_control.h"
#include "pin_defines.h"

void writeConfiguration()
{
	uint16_t i;
	uint16_t writeLocation;
	int tempInt;

	writeLocation = 0;

	EEPROM.get(writeLocation, i);

	EEPROM.put(writeLocation, ++i);
	writeLocation += sizeof(uint8_t);

	for(i = 0; i < NUM_MOTORS; ++i)
	{
		tempInt = analogRead(MOTOR_READ_PIN[i]);
		EEPROM.put(writeLocation, tempInt);
		writeLocation += sizeof(int);
	}
}

void readMotorConfiguration(uint16_t startReadLocation)
{
	uint8_t i;
	// put code here to read data from thingy and enter it into array to use for read conversions
	for(i = 0; i < NUM_MOTORS; ++i)
	{
		EEPROM.get(startReadLocation, motorZeroValues[i]);
		startReadLocation += sizeof(uint16_t);
	}
}
