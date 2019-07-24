// Lighting Board Software//////////////////////////////////////////////////////////////
// Header file
//
// 
//
// 
//
// Libraries ////////////////////////////////////////////////////////////////////////////
#ifndef _LightingBoard
#define _LightingBoard

#include <Energia.h> 
#include "RoveComm.h"
#include "Adafruit_NeoPixel.h"

// Constants //////////////////////////////////////////////////////////////////////////////
	//Pinout
#define HEADLIGHT_SIGNAL    PB_3  ///Headlight_OnOff_PWM1
#define White_Switch		PL_4
#define Pattern_Switch		PL_5
#define neoPin				PF_1
#define headlight_Switch    PM_3
	//Hardware Variables
#define LED_COUNT           360//104//256 is number of pixels inside rover //136 is num of pixels on bottom of rover //240 pixels total
#define LED_SPI_MODULE    	3//PF_1//43
//const neoPixelType NEOPIXEL_TYPE = NEO_GRB;

	//Software Variables
#define FREQ 			  1

	//Delays
#define ROVECOMM_DELAY    5

// Function Declarations ////////////////////////////////////////////////////////////////////////////////
void lightingSetup();
void lightingLoop(rovecomm_packet packet, RoveCommEthernetUdp * RoveComm);
//static void chase(uint32_t c, uint32_t b, uint32_t a);
void start_up();
void work_light(uint32_t brightness);
void solid(uint32_t color);
void rainbow(uint32_t arr[]);
void bouncyBoi(uint32_t color);
void Merica(uint32_t color);

#endif