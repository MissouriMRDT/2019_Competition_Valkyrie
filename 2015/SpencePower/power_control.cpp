/*
 * powre_control.cpp
 *
 * Created: 4/23/2015 9:15:37 PM
 *  Author: Spencer Vogel
 */

#ifdef _ATMEL
	#include "Arduino/Arduino.h"
	#include "Arduino/eeprom.h"
#else
	#include "Arduino.h"
	#include "eeprom.h"
#endif

#include "eeprom.h"

#include "power_control.h"

uint8_t motorSingalPorts[NUM_IO_PORTS] = {0x00, 0x00, 0x00, 0x00};
float motorVoltageValues[NUM_MOTORS];
uint8_t numOverCurrentReads[NUM_MOTORS];
uint16_t motorZeroValue[NUM_MOTORS];

void initializePowerBusses()
{
	initializeMotorController();
	
	/* turn on all other busses */
	THIRTY_V_EX_REG  |= THIRTY_V_EX_PIN;
	THIRTY_V_EX_PORT |= THIRTY_V_EX_PIN;
	TWELVE_V_REG  |= TWELVE_V_PIN;
	TWELVE_V_PORT |= TWELVE_V_PIN;
}

void initializeMotorController()
{
	uint8_t i;               /* loop iterator */
	uint16_t temp16;         /* temp eeprom read value */
	extern uint8_t motorSingalPorts[NUM_IO_PORTS];

	for( i = 0; i < NUM_MOTORS; ++i ) /* iterate over the number of motors */
	{
		if( MOTOR_SIGNAL_PORT[i] == &PORTB )      /* get all motors signals of port B */
		{
			motorSingalPorts[0] |= MOTOR_SIGNAL_PIN[i];
		}
		else if( MOTOR_SIGNAL_PORT[i] == &PORTC ) /* get all motors signals of port C */
		{
			motorSingalPorts[1] |= MOTOR_SIGNAL_PIN[i];
		}
		else if( MOTOR_SIGNAL_PORT[i] == &PORTD ) /* get all motors signals of port D */
		{
			motorSingalPorts[2] |= MOTOR_SIGNAL_PIN[i];
		}
		else if( MOTOR_SIGNAL_PORT[i] == &PORTE ) /* get all motors signals of port E */
		{
			motorSingalPorts[3] |= MOTOR_SIGNAL_PIN[i];
		}
		numOverCurrentReads[i] = 0;
	}

	/* read tell byte from eeprom */
	EEPROM.get(0, temp16);

	/* check if we should grab zero values from eeprom or predefined values */
	if(temp16 != 0)
	{
		i += sizeof(uint16_t);
		readMotorConfiguration(i); /* grab from eeprom */
	}
	else
	{
		for(i = 0; i < NUM_MOTORS; ++ i);
		{
			motorZeroValue[i] = MID_ANALOG_READ_VALUE; /* predefine them */
		}
	}

	DDRB |= motorSingalPorts[0]; /* set pins as output */
	DDRC |= motorSingalPorts[1]; /* set pins as output */
	DDRD |= motorSingalPorts[2]; /* set pins as output */
	DDRE |= motorSingalPorts[3]; /* set pins as output */
	
	turnOnAllMotors();
}

void readMotorCurrents()
{
	uint8_t i;
	int tempRead;

	for(i = 0; i < NUM_MOTORS; ++i)
	{
		tempRead = analogRead(MOTOR_READ_PIN[i]);
		/* transforming a range of 0 - 1023 to a range of -50 to 50 */
		motorVoltageValues[i] = (tempRead - motorZeroValue[i]) * 50.0/motorZeroValue[i];
		if( motorVoltageValues[i] > MAX_MOTOR_CURRENT )
		{
			numOverCurrentReads[i]++;
			if (numOverCurrentReads[i] == NUM_CURRENT_READS_TRIGGER_FAULT )
			{
				turnOffMotorController(i);
			}
		}
		else
		{
			numOverCurrentReads[i] = 0;
		}
	}
}

inline void turnOffMotorController(const uint8_t motorNumber)
{
	*MOTOR_SIGNAL_PORT[motorNumber] &= ~(MOTOR_SIGNAL_PIN[motorNumber]);
}

inline void turnOnMotorController(const uint8_t motorNumber)
{
	*MOTOR_SIGNAL_PORT[motorNumber] |= MOTOR_SIGNAL_PIN[motorNumber];
}

void turnOnAllMotors()
{
	PORTB |= motorSingalPorts[0];
	PORTC |= motorSingalPorts[1];
	PORTD |= motorSingalPorts[2];
	PORTE |= motorSingalPorts[3];
}

void turnoffAllMotors()
{
	PORTB &= ~(motorSingalPorts[0]);
	PORTC &= ~(motorSingalPorts[1]);
	PORTD &= ~(motorSingalPorts[2]);
	PORTE &= ~(motorSingalPorts[3]);
}
