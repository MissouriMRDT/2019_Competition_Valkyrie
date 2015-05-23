
#ifdef _ATMEL
	#include "Arduino/Arduino.h"
	#include "Arduino/eeprom.h"
#else
	#include "Arduino.h"
	#include "eeprom.h"
#endif

#include "power_control.h"
#include "pin_defines.h"

extern uint16_t motorZeroValue[NUM_MOTORS];

void writeConfiguration()
{
	uint16_t i;
	uint16_t writeLocation;
	int tempInt;

	writeLocation = 0;

	EEPROM.get(writeLocation, i);

	EEPROM.put(writeLocation, ++i);
	writeLocation += sizeof(uint16_t);

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
		EEPROM.get(startReadLocation, motorZeroValue[i]);
		startReadLocation += sizeof(uint16_t);
	}
}
