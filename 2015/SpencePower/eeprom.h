
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

void writeConfiguration();

void readMotorConfiguration(uint16_t startReadLocation);
