#include "inc/tm4c1294ncpdt.h"
#include "inc/hw_gpio.h"
#include "roveAttachTimerInterrupt.h"

#define NUM_PIXELS 3694
#define COUNTS_PER_PIXEL 8
#define NUM_COUNTS (NUM_PIXELS+4)*COUNTS_PER_PIXEL-1
#define COUNTS_TO_DUMMY 256+3648*8
//Master clock=callfreq/2
//SH = Master clock freq/8 = callfreq/16
//ICG low for first 16 calls (first SH), high the rest

///////////////////
//Pin Map
//PE0-Master Clock
//PE1-ICG
//PE2-CCD_INT
//PE3-SH

uint16_t count = 0;

void writeClock();

void setup() {
  Serial.begin(9600);
  delay(10);
  Serial.println("init");

  // start the SPI library:
  pinMode(PE_0, OUTPUT);
  pinMode(PE_1, OUTPUT);
  pinMode(PE_2, OUTPUT);
  pinMode(PE_3, OUTPUT);
  pinMode(PE_4, OUTPUT);
  pinMode(PE_5, OUTPUT);

  digitalWrite(PE_0, HIGH);
  digitalWrite(PE_1, HIGH);
  digitalWrite(PE_2, HIGH);
  digitalWrite(PE_3, HIGH);
  digitalWrite(PE_4, HIGH);
  digitalWrite(PE_5, HIGH);

  //roveAttachTimerInterruptTicks24( writeClock,  T0_A, TIMER_INTERRUPT_USE_PISOC,    30, 7 );
  //roveAttachTimerInterruptTicks24( writeClock,  T0_A, TIMER_INTERRUPT_USE_SYSCLOCK, 1, 0 ); 
  
  delay(100);
}
void loop() {
  int count1 = 0;
  int start_micros = micros();
  while(1)
  {
    writeClock();
    //count1++;
  }
  Serial.println(count1);

}

void writeClock()
{
  /*
  byte test = ((count==7)||(count==24))? B00001011: B00001001;
  HWREG(GPIO_PORTE_BASE + (test << 2)) = (count&B00001011)^B00000010;
  Serial.println(test);
  Serial.println(count);
  count < NUM_COUNTS? count++: count = 0;
  */
  if(count==7)                    HWREG(GPIO_PORTE_BASE + (B00001011 << 2)) = (B00000001);
  else if(count==24)              HWREG(GPIO_PORTE_BASE + (B00001011 << 2)) = (B00001010);
  else if(count==255)             HWREG(GPIO_PORTE_BASE + (B00001101 << 2)) = (B00000101);
  else if(count==COUNTS_TO_DUMMY) HWREG(GPIO_PORTE_BASE + (B00001101 << 2)) = (B00001000);
  else                            HWREG(GPIO_PORTE_BASE + (B00001001 << 2)) = (count&B00001001);
 count < NUM_COUNTS? count++: count = 0;
}

