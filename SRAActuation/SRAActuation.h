#ifndef _SRAActuation
#define _SRAActuation

#include "RoveComm.h"
#include "RoveStmVnhPwm.h"

//////Pinouts//////
#define SPECTZ_INA     PL_0
#define SPECTZ_INB     PL_1
#define SPECTZ_PWM     PF_1
#define SPECTZ_HEADER  SPECTZ_INA,SPECTZ_INB,SPECTZ_PWM
                       
#define SPECTX_INA     PL_2
#define SPECTX_INB     PL_3
#define SPECTX_PWM     PF_2
#define SPECTX_HEADER  SPECTX_INA,SPECTX_INB,SPECTX_PWM
                       
#define SPECTY_INA     PQ_2
#define SPECTY_INB     PQ_3
#define SPECTY_PWM     PK_4
#define SPECTY_HEADER  SPECTY_INA,SPECTY_INB,SPECTY_PWM
                       
#define UNUSED_INA     PP_3
#define UNUSED_INB     PQ_1
#define UNUSED_PWM     PG_1
#define UNUSED_HEADER  UNUSED_INA,UNUSED_INB,UNUSED_PWM
 
#define SPECTZ_PB      PG_0
#define SPECTX_PB      PL_4
#define SPECTY_PB      PE_1
#define UNUSED_PB      PE_2

#define DIR_SW PB_3

#define SPECTZ_LOW_LS  PM_5
#define SPECTZ_MID_LS  PM_4
#define SPECTZ_UPP_LS  PA_6
#define SPECTX_CENTER  PD_7
#define LS_5  PC_7
#define LS_6  PD_3
#define LS_7  PE_5
#define LS_8  PC_6

#define SW_IND1 PM_7
#define SW_IND2 PP_5
#define SW_ERR  PA_7

#define BUTTON_SPEED 500

RoveCommEthernetUdp RoveComm;

RoveStmVnhPwm Spectz;
RoveStmVnhPwm Spectx;
RoveStmVnhPwm Specty;

int z_speed;
int x_speed;
int y_speed;

uint8_t current_position;
uint8_t target_position;
uint8_t ls_pressed;

bool do_to_pos_z;
bool ignore_buttons;
bool watchdog_triggered = false;
bool found_x_center = false;

bool x_centered;
bool do_ls = true;
bool center;
int x_pos;

void readRoveComm();
void sendStates();
void checkButtons();
void checkLS();
void writeSpeeds();
void moveToPos();
void adjustX();
void watchdogTriggered();
void clearWatchdog();

#endif
