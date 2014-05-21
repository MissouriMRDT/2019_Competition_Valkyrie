#include <EasyTransfer.h>

EasyTransfer easyTransfer;

/**********************************************************
 * Send/Receive Structs
 **********************************************************/
struct SEND_DATA
{
  int ambientTemperature;
  int busAVoltage;
  int busBVoltage;
  int busCVoltage;
  int inputVoltage;
  int inputCurrent;
};
SEND_DATA powerData;

struct RECEIVE_DATA
{
  boolean receivedMaster;
  boolean receivedPOE;
  boolean receivedBusA;
  boolean receivedBusB;
  boolean receivedBusC;
  boolean receivedAuxiliary;
  boolean receivedMotor1;
  boolean receivedMotor2;
  boolean receivedMotor3;
  boolean receivedMotor4;
  boolean receivedMotor5;
  boolean receivedMotor6;
};
RECEIVE_DATA commands;

/**********************************************************
 * Digital Output Pins
 **********************************************************/
// If Master Pin goes low, the power board will go off.
const uint8_t MASTER_PIN	= 2;
const uint8_t POE_PIN		= 3; // Active low
const uint8_t BUS_C_PIN		= 4; // Active low
const uint8_t MOTOR_4_PIN	= 5;
const uint8_t MOTOR_3_PIN	= 6;
const uint8_t MOTOR_2_PIN	= 7;
const uint8_t MOTOR_1_PIN	= 8;
const uint8_t AUXILIARY_PIN     = 9;
const uint8_t MOTOR_5_PIN	= 10;
const uint8_t MOTOR_6_PIN	= 11;
const uint8_t BUS_A_PIN		= 12; // Active Low
const uint8_t BUS_B_PIN		= 13; // Active Low

/**********************************************************
 * Analog Input Pins
 **********************************************************/
const uint8_t AMBIENT_TEMPERATURE = 0;
const uint8_t BUS_A_VOLTAGE = 1;
const uint8_t BUS_B_VOLTAGE = 2;
const uint8_t BUS_C_VOLTAGE = 3;
const uint8_t INPUT_VOLTAGE = 4;
const uint8_t INPUT_CURRENT = 5;

// Amount of time that the powerboard waits before switching on each motor controller - inrush current.
const int IN_RUSH_DELAY = 50;

/**********************************************************
 * Functions
 **********************************************************/
// Initializes the state of all of the buses
void setBuses()
{
  // Critical MASTER_PIN are brought high first
  digitalWrite(MASTER_PIN, commands.receivedMaster);
  digitalWrite(POE_PIN, commands.receivedPOE);
  // That includes Master, POE and the 24V Aux bus. The 5V bus is always on
  digitalWrite(AUXILIARY_PIN, commands.receivedAuxiliary);
  digitalWrite(BUS_A_PIN, commands.receivedBusA);
  digitalWrite(BUS_B_PIN, commands.receivedBusB);
  digitalWrite(BUS_C_PIN, commands.receivedBusC);

  if (commands.receivedMotor1 == HIGH && digitalRead(MOTOR_1_PIN) == LOW)
  {
    digitalWrite(MOTOR_1_PIN, commands.receivedMotor1);
    delay(IN_RUSH_DELAY);
  }
  else 
  {
    digitalWrite(MOTOR_1_PIN, commands.receivedMotor1);
  }

  if (commands.receivedMotor2 == HIGH && digitalRead(MOTOR_2_PIN) == LOW)
  {
    digitalWrite(MOTOR_2_PIN, commands.receivedMotor2);
    delay(IN_RUSH_DELAY); 
  } 
  else 
  {
    digitalWrite(MOTOR_2_PIN, commands.receivedMotor2);
  }

  if (commands.receivedMotor3 == HIGH && digitalRead(MOTOR_3_PIN) == LOW)
  {
    digitalWrite(MOTOR_3_PIN, commands.receivedMotor3);
    delay(IN_RUSH_DELAY); 
  } 
  else 
  {
    digitalWrite(MOTOR_3_PIN, commands.receivedMotor3);
  }

  if (commands.receivedMotor4 == HIGH && digitalRead(MOTOR_4_PIN) == LOW)
  {
    digitalWrite(MOTOR_4_PIN, commands.receivedMotor4);
    delay(IN_RUSH_DELAY); 
  } 
  else 
  {
    digitalWrite(MOTOR_4_PIN, commands.receivedMotor4);
  }

  if (commands.receivedMotor5 == HIGH && digitalRead(MOTOR_5_PIN) == LOW)
  {
    digitalWrite(MOTOR_5_PIN, commands.receivedMotor5);
    delay(IN_RUSH_DELAY); 
  } 
  else 
  {
    digitalWrite(MOTOR_5_PIN, commands.receivedMotor5);
  }

  if (commands.receivedMotor6 == HIGH && digitalRead(MOTOR_6_PIN) == LOW)
  {
    digitalWrite(MOTOR_6_PIN, commands.receivedMotor6);
    delay(IN_RUSH_DELAY);
  } 
  else 
  {
    digitalWrite(MOTOR_6_PIN, commands.receivedMotor6);
  }
}

//  Sends data to the motherboard
void sendData()
{
  powerData.ambientTemperature = analogRead(AMBIENT_TEMPERATURE);
  powerData.busAVoltage = analogRead(BUS_A_VOLTAGE);
  powerData.busBVoltage = analogRead(BUS_B_VOLTAGE);
  powerData.busCVoltage = analogRead(BUS_C_VOLTAGE);
  powerData.inputVoltage = analogRead(INPUT_VOLTAGE);
  powerData.inputCurrent = analogRead(INPUT_CURRENT);

  easyTransfer.sendData();
}

// Defines all pins as either input or output
void setup()
{
  pinMode(MASTER_PIN, OUTPUT);
  pinMode(POE_PIN, OUTPUT);
  pinMode(BUS_A_PIN, OUTPUT);
  pinMode(BUS_B_PIN, OUTPUT);
  pinMode(BUS_C_PIN, OUTPUT);
  pinMode(MOTOR_1_PIN, OUTPUT);
  pinMode(MOTOR_2_PIN, OUTPUT);
  pinMode(MOTOR_3_PIN, OUTPUT);
  pinMode(MOTOR_4_PIN, OUTPUT);
  pinMode(MOTOR_5_PIN, OUTPUT);
  pinMode(MOTOR_6_PIN, OUTPUT);
  pinMode(AUXILIARY_PIN, OUTPUT);
  digitalWrite(MASTER_PIN, HIGH);     //Critical busses are brought on first
  digitalWrite(POE_PIN, LOW);			//That includes Master, POE (active low) and the 24V Aux bus. The 5V bus is alwaus on
  digitalWrite(BUS_A_PIN, LOW);
  digitalWrite(BUS_B_PIN, LOW);
  digitalWrite(BUS_C_PIN, LOW);
  digitalWrite(MOTOR_1_PIN, HIGH);
  delay(IN_RUSH_DELAY);
  digitalWrite(MOTOR_2_PIN, HIGH);
  delay(IN_RUSH_DELAY);
  digitalWrite(MOTOR_3_PIN, HIGH);
  delay(IN_RUSH_DELAY);
  digitalWrite(MOTOR_4_PIN, HIGH);
  delay(IN_RUSH_DELAY);
  digitalWrite(MOTOR_5_PIN, HIGH);
  delay(IN_RUSH_DELAY);
  digitalWrite(MOTOR_6_PIN, HIGH);
  delay(IN_RUSH_DELAY);
  digitalWrite(AUXILIARY_PIN, HIGH);

  Serial.begin(115200);
  easyTransfer.begin(details(powerData), &Serial);
}

void loop()
{
  sendData();

  if(easyTransfer.receiveData())
  {
    setBuses();
  };
}

