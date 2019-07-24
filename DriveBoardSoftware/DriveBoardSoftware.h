#ifndef _DriveBoardSoftware
#define _DriveBoardSoftware

//Hardware Parameters

#define DIRECTION_SWITCH_PIN    PD_2
#define LF_BUTTON_PIN           PK_2
#define LM_BUTTON_PIN           PK_3
#define LR_BUTTON_PIN           PN_4
#define RF_BUTTON_PIN           PN_5
#define RM_BUTTON_PIN           PP_4
#define RR_BUTTON_PIN           PQ_0

#define FRONTDRIVE_SERIAL       Serial4
#define MIDDRIVE_SERIAL         Serial6
#define REARDRIVE_SERIAL        Serial3

#define WATCHDOG_IND_PIN        PB_5
#define LSPEED_IND_PIN          PD_5
#define RSPEED_IND_PIN          PD_4

//Drive Parameters
#define NUMDRIVES   3
#define NUMMOTORS   6
#define FRONT_DRIVE 1
#define MIDDRIVE    2
#define REARDRIVE   3

#define BUTTONPRESS_SPEED 500;

//Motor Definitions
#define LF  0
#define LM  1
#define LR  2
#define RF  3
#define RM  4
#define RR  5

struct motor_params
{
    int16_t speed;
    int button_pin;
};

motor_params motor[6] = { {0, LF_BUTTON_PIN},
                          {0, LM_BUTTON_PIN},
                          {0, LR_BUTTON_PIN},
                          {0, RF_BUTTON_PIN},
                          {0, RM_BUTTON_PIN},
                          {0, RR_BUTTON_PIN}};

bool watchdog_triggered = true;

RovesODrive Drive[] = {&FRONTDRIVE_SERIAL, &MIDDRIVE_SERIAL, &REARDRIVE_SERIAL};

uint16_t ramp_rate = MAX_VELOCITY_RAMP_RATE;


#endif
