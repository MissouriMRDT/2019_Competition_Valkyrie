
//Warning: I have literally no idea what I'm doing

#include <EasyTransfer.h>

EasyTransfer ET;

struct SEND_DATA
{
  int temp;
  int volt12a;
  int volt12b;
  int volt12c;
  int main_volt;
  int total_current;

};
SEND_DATA powerData;

struct RECIEVE_DATA
{
  boolean SET_MASTER;    //This should always be high. Think Snoop d̶o̶g̶ Lion.
  boolean SET_POE;       //If the master line is Snoop, this is mother theresa. Mother Theresa never gets high. That would be terrible.
  boolean SET_12A;
  boolean SET_12B;
  boolean SET_12C;
  boolean SET_24;        //If the master line is Snoop, this is Wiz. He gets high just as much as snoop. Basically 81x7 neffew. 
  boolean SET_M1;
  boolean SET_M2;
  boolean SET_M3;
  boolean SET_M4;
  boolean SET_M5;
  boolean SET_M6;
};
RECIEVE_DATA powerCommands;

//Setting up port names
                                 //Digital outs
const uint8_t MASTER = 2;        //Master power pin- If this is pulled low, it switches off the power board. Motherboard will go down. Don't use this. Switch off all outputs instead, or kill at the BMS.
const uint8_t SW_POE = 3;        //POE Control -     If this goes high, we lose radio and cams - Active low
const uint8_t SW_12C = 4;        //12V Bus 3 control- Active low
const uint8_t SW_M4 = 5;         //Motor 4 control
const uint8_t SW_M3 = 6;         //Motor 3 control
const uint8_t SW_M2 = 7;         //Motor 2 control
const uint8_t SW_M1 = 8;         //Motor 1 control
const uint8_t SW_24 = 9;         //24v Aux control- The switch is connected here, so if this drops, we lose comms with the motherboard (Connection with radio should maintain)
const uint8_t SW_M5 = 10;        //Motor 5 control
const uint8_t SW_M6 = 11;        //Motor 6 control
const uint8_t SW_12A = 12;       //12v Bus 1 control- Active low
const uint8_t SW_12B= 13;        //12v bus 2 control- Active low

                                 //Analog ins
const uint8_t TEMP = 0;          //Ambient Temp
const uint8_t V12A = 1;          //Voltage measurement over 12V bus A
const uint8_t V12B = 2;          //Voltage measurement over 12V bus B
const uint8_t V12C = 3;          //Voltage measurement over 12V bus C
const uint8_t VOLT = 4;          //Voltage at Input
const uint8_t CURR = 5;          //Current at input





//i made some variables so let's see if it works
int TEMP_MEAS = 0;     // measured ambient temp
int V12A_MEAS = 0;     // measured voltage over 12V bus A
int V12B_MEAS = 0; 
int V12C_MEAS = 0; 
int VOLT_MEAS = 0;     // measured votlage at input
int CURR_MEAS = 0;     // measured current at input

//I'm making some more because i literally don't know what the shit else to do
boolean MASTER_SW = HIGH;
boolean SW_POE_SW = LOW;      //Lower voltage busses are active low
boolean SW_12A_SW = LOW;
boolean SW_12B_SW = LOW;
boolean SW_12C_SW = LOW;
boolean SW_24_SW = HIGH;
boolean SW_M1_SW = HIGH;
boolean SW_M2_SW = HIGH;
boolean SW_M3_SW = HIGH;
boolean SW_M4_SW = HIGH;
boolean SW_M5_SW = HIGH;
boolean SW_M6_SW = HIGH;



//Other variables that idk probably do shit or something
int INRUSHDELAY = 50; //This is the amount of time that the powerboard waits before switching on each motor controller. Inrush current yo
                      // also i really don't know what this should be so this is a #yolo here.





//This should set the states of the busses

void setbusses(){
  digitalWrite(MASTER, MASTER_SW);     //Critical busses are brought high first
  digitalWrite(SW_POE, SW_POE_SW);
  digitalWrite(SW_24, SW_24_SW);        //That includes Master, POE and the 24V Aux bus. The 5V bus is alwaus on
  digitalWrite(SW_12A, SW_12A_SW);
  digitalWrite(SW_12B, SW_12B_SW);
  digitalWrite(SW_12C, SW_12C_SW);
  
  if (SW_M1_SW == HIGH && digitalRead(SW_M1) == 0)
  {
    digitalWrite(SW_M1, SW_M1_SW);
    delay (INRUSHDELAY); 
  } else {
  digitalWrite(SW_M1, SW_M1_SW);
  };
  
  if (SW_M2_SW == HIGH && digitalRead(SW_M2) == 0)
  {
    digitalWrite(SW_M2, SW_M2_SW);
    delay (INRUSHDELAY); 
  } else {
  digitalWrite(SW_M2, SW_M2_SW);
  };
  
  if (SW_M3_SW == HIGH && digitalRead(SW_M3) == 0)
  {
    digitalWrite(SW_M3, SW_M3_SW);
    delay (INRUSHDELAY); 
  } else {
  digitalWrite(SW_M3, SW_M3_SW);
  };
  
  if (SW_M4_SW == HIGH && digitalRead(SW_M4) == 0)
  {
    digitalWrite(SW_M4, SW_M4_SW);
    delay (INRUSHDELAY); 
  } else {
  digitalWrite(SW_M4, SW_M4_SW);
  };
  
  if (SW_M5_SW == HIGH && digitalRead(SW_M5) == 0)
  {
    digitalWrite(SW_M5, SW_M5_SW);
    delay (INRUSHDELAY); 
  } else {
  digitalWrite(SW_M5, SW_M5_SW);
  };
  
  if (SW_M6_SW == HIGH && digitalRead(SW_M6) == 0)
  {
    digitalWrite(SW_M6, SW_M6_SW);
    delay (INRUSHDELAY); 
  } else {
  digitalWrite(SW_M6, SW_M6_SW);
  };


}



//This should send shit back to the motherboard
void senddata()
{
  powerData.temp = TEMP_MEAS;
  powerData.volt12a = V12A_MEAS;
  powerData.volt12b = V12B_MEAS;
  powerData.volt12c = V12C_MEAS;
  powerData.main_volt = VOLT_MEAS;
  powerData.total_current= CURR_MEAS;
  
  ET.sendData();
}





void setup(){


pinMode(MASTER, OUTPUT);
pinMode(SW_POE, OUTPUT);
pinMode(SW_12A, OUTPUT);
pinMode(SW_12B, OUTPUT);
pinMode(SW_12C, OUTPUT);
pinMode(SW_M1, OUTPUT);
pinMode(SW_M2, OUTPUT);
pinMode(SW_M3, OUTPUT);
pinMode(SW_M4, OUTPUT);
pinMode(SW_M5, OUTPUT);
pinMode(SW_M6, OUTPUT);
pinMode(SW_24, OUTPUT);
digitalWrite(MASTER, HIGH);     //Critical busses are brought on first
digitalWrite(SW_POE, LOW);     //That includes Master, POE (active low) and the 24V Aux bus. The 5V bus is alwaus on
digitalWrite(SW_12A, HIGH);
digitalWrite(SW_12B, HIGH);
digitalWrite(SW_12C, HIGH);
digitalWrite(SW_M1, LOW);
digitalWrite(SW_M2, LOW);
digitalWrite(SW_M3, LOW);
digitalWrite(SW_M4, LOW);
digitalWrite(SW_M5, LOW);
digitalWrite(SW_M6, LOW);
digitalWrite(SW_24, HIGH);


Serial.begin(115200);
ET.begin(details(powerData),&Serial);



}

void loop(){
  
  
 //Read the analog inputs and store them into the int values I guess, idk
TEMP_MEAS =analogRead(TEMP);
V12A_MEAS =analogRead(V12A);
V12B_MEAS =analogRead(V12B);
V12C_MEAS =analogRead(V12C);
VOLT_MEAS =analogRead(VOLT);
CURR_MEAS =analogRead(CURR); 
 
senddata();

setbusses();


  if(ET.receiveData())
  {
   

    MASTER_SW = powerCommands.SET_MASTER; //I'm playing a dangerous game by letting you fuck with this one. Don't let me down.
    SW_POE_SW = powerCommands.SET_POE;     
    SW_12A_SW = powerCommands.SET_12A;
    SW_12B_SW = powerCommands.SET_12B;
    SW_12C_SW = powerCommands.SET_12C;
    SW_24_SW = powerCommands.SET_24; 
    SW_M1_SW = powerCommands.SET_M1;
    SW_M2_SW = powerCommands.SET_M2;
    SW_M3_SW = powerCommands.SET_M3;
    SW_M4_SW = powerCommands.SET_M4;
    SW_M5_SW = powerCommands.SET_M5;
    SW_M6_SW = powerCommands.SET_M6;
      

  };
  


}



 
 
//This Function reads the average from a port------------- Should I use this? Fuck if I know; i got it from the BMS code
/*
int long_adc(int channel)
{ 
    unsigned int sum = 0;
int temp;
 int i;
  for (i=0; i<AVG_NUM; i++) {            // loop through reading raw adc values AVG_NUM number of times  
    temp = analogRead(channel);          // read the input pin  
    sum += temp;                        // store sum for averaging  
 }
  return(sum / AVG_NUM);                // divide sum by AVG_NUM to get average and return it
}
*/


