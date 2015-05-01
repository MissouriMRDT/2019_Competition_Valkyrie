#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H

#include "Arduino/Arduino.h"

#include "pin_defines.h"

#define NUM_MOTORS 7
#define MAX_MOTOR_CURRENT 25
#define NUM_CURRENT_READS_TRIGGER_FAULT 5
#define MID_ANALOG_READ_VALUE 511

#define MOTOR1_SIG_PIN      PRTE2
#define MOTOR1_SIG_PORT     PORTE
#define MOTOR1_ARDUINO_NUM  3
#define MOTOR2_SIG_PIN      PRTC7
#define MOTOR2_SIG_PORT     PORTC
#define MOTOR2_ARDUINO_NUM  2
#define MOTOR3_SIG_PIN      PRTC6
#define MOTOR3_SIG_PORT     PORTC
#define MOTOR3_ARDUINO_NUM  1
#define MOTOR4_SIG_PIN      PRTD5
#define MOTOR4_SIG_PORT     PORTD
#define MOTOR4_ARDUINO_NUM  0
#define MOTOR5_SIG_PIN      PRTD1
#define MOTOR5_SIG_PORT     PORTD
#define MOTOR5_ARDUINO_NUM  10
#define MOTOR6_SIG_PIN      PRTD0
#define MOTOR6_SIG_PORT     PORTD
#define MOTOR6_ARDUINO_NUM  9
#define MOTOR7_SIG_PIN      PRTB1
#define MOTOR7_SIG_PORT     PORTB
#define MOTOR7_ARDUINO_NUM  8

volatile uint8_t * const MOTOR_SIGNAL_PORT[] =  {
                                                &MOTOR1_SIG_PORT,
                                                &MOTOR2_SIG_PORT,
                                                &MOTOR3_SIG_PORT,
                                                &MOTOR4_SIG_PORT,
                                                &MOTOR5_SIG_PORT,
                                                &MOTOR6_SIG_PORT,
                                                &MOTOR7_SIG_PORT
                                                };

const uint8_t MOTOR_SIGNAL_PIN[] =  {
                                    MOTOR1_SIG_PIN,
                                    MOTOR2_SIG_PIN,
                                    MOTOR3_SIG_PIN,
                                    MOTOR4_SIG_PIN,
                                    MOTOR5_SIG_PIN,
                                    MOTOR6_SIG_PIN,
                                    MOTOR7_SIG_PIN
                                    };

const uint8_t MOTOR_READ_PIN[] =  {
                                  MOTOR1_ARDUINO_NUM,
                                  MOTOR2_ARDUINO_NUM,
                                  MOTOR3_ARDUINO_NUM,
                                  MOTOR4_ARDUINO_NUM,
                                  MOTOR5_ARDUINO_NUM,
                                  MOTOR6_ARDUINO_NUM,
                                  MOTOR7_ARDUINO_NUM
                                  };


void initializeMotorController();

void readMotorCurrents();

inline void turnOffMotorController(const uint8_t motorNumber);

inline void turnOnMotorController(const uint8_t motorNumber);

void turnOnAllMotors();

void turnoffAllMotors();

#endif
