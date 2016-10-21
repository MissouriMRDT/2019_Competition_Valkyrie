#include "PwmReader.h"
#include "driverlib/pwm.h"

float sysClockFreq;

void setup()
{
  Serial.begin(9600);
  //sysClockFreq = SysCtlClockFreqSet(SYSCTL_OSC_INT | SYSCTL_CFG_VCO_320 | SYSCTL_USE_PLL , 15000000); //use the PLL to generate a 320 MHZ clock, with the PLL referencing the internal oscilattor. Convert it into 40,000,000 Mhz for overall system clock
  //setupPwmWrite(4098, 10);

  
  initPwmRead('A', 2); //pin A2 -- associated with timer 1 -- shall read a pwm signal
  initPwmRead('A', 4); //pin A4 -- associated with timer 2 -- shall read a pwm signal
  initPwmRead('A', 6); //pin A6 -- associated with timer 3 -- shall read a pwm signal
  initPwmRead('B', 0); //pin B0 -- associated with timer 4 -- shall read a pwm signal
  initPwmRead('B', 2); //pin B2 -- associated with timer 5 -- shall read a pwm signal
}

void loop()
{
  
  uint32_t onPeriod;
  delay(500);
  
  onPeriod = getOnPeriod_us('A', 2);
  Serial.print("timer1: ");
  Serial.println(onPeriod, DEC);

  onPeriod = getOnPeriod_us('A', 4);
  Serial.print("timer2: ");
  Serial.println(onPeriod, DEC);

  onPeriod = getOnPeriod_us('A', 6);
  Serial.print("timer3: ");
  Serial.println(onPeriod, DEC);

  onPeriod = getOnPeriod_us('B', 0);
  Serial.print("timer4: ");
  Serial.println(onPeriod, DEC);

  onPeriod = getOnPeriod_us('B', 2);
  Serial.print("timer5: ");
  Serial.println(onPeriod, DEC);
}

void setupPwmWrite(float totalPulsePeriod_us, float onPeriod_us)
{
  uint32_t totalPulseTicks = sysClockFreq * (totalPulsePeriod_us/1000000.0); // SysFreq * totalPulsePeriod_s = SysFreq * (totalPulsePeriod_us / 1,000,000) = (system ticks/second) * ( totalPulsePeriod_seconds) = ticks needed
  uint32_t onPulseTicks = sysClockFreq * (onPeriod_us/1000000.0); 
  if(onPeriod_us > totalPulsePeriod_us)
  {
    onPeriod_us = totalPulsePeriod_us;
  }
  // Enable the PWM0 peripheral 
  SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM0);

  //enable pin port F
  SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

  //Configure PF0 Pin as PWM
    GPIOPinConfigure(GPIO_PF0_M0PWM0);
    GPIOPinTypePWM(GPIO_PORTF_BASE, GPIO_PIN_0);
  
  //Configure the PWM generator for count down mode with immediate updates to the parameters. // 
  PWMGenConfigure(PWM0_BASE, PWM_GEN_0, PWM_GEN_MODE_DOWN | PWM_GEN_MODE_NO_SYNC);

  //  Set the overall pulse period 
  PWMGenPeriodSet(PWM0_BASE, PWM_GEN_0, totalPulseTicks);

  // // Set the pulse width of PWM0 // 
  PWMPulseWidthSet(PWM0_BASE, PWM_OUT_0, onPulseTicks);

  // // Start the timers in generator 0. // 
  PWMGenEnable(PWM0_BASE, PWM_GEN_0);

  // // Enable the outputs. // 
  PWMOutputState(PWM0_BASE, (PWM_OUT_0_BIT), true);
  
}
