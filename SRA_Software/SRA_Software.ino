//Code: Austin Christman
//SRA Software
#include "Adafruit_Sensor.h"
#include "src/DHT/DHT_U.h" //AM2302 Sensor .h files
#include "src/DHT/DHT.h"
#include "src/SHT-XX/SHT1x.h"// SHT-10 Sensor .h files
#include <math.h>


//Rover .h Files
#include "RoveComm.h"
#include "src/Spectrometer/Spectrometer.h"


//pin layout for Tiva C w/ tm4c129
#define SOIL_DATA_PIN          PE_5// Pin located in section X_9:A1, pin PE5
#define CCD_INT_PIN            PE_0// Pin located in section X_9:B1, pin PE0
#define METHANE_VOUT_PIN       PE_2// Pin located in section X_9:B1, pin PE2
#define ATM_DOUT_PIN           PN_2// Pin located in section X_9:D1, pin PN2
#define SW_FLAG1_PIN           PP_4// Pin located in section X_7:A2, pin PP4
#define SW_FLAG2_PIN           PN_5// Pin located in section X_7:A2, pin PN5
#define SW_ERROR_PIN           PN_4// Pin located in section X_7:A2, pin PN4
#define SOIL_SCK_PIN           PB_5// Pin located in seciotn X_7:B2, pin PB5
#define CCD_OS_PIN             A19 // Pin located in section X_7:B2, pin PK3
#define UV_TOGGLE_PIN          PP_5// Pin located in section X_7:D2, pin PP5
#define DHTTYPE                DHT22 // DHT 22 sensor/AM2302 sensor

#define METHANE_ADC_LOW        950 //Value at NewMexico
#define METHANE_ADC_HIGH       1000 
#define METHANE_ACTUAL_LOW     1700 //Average ppb
#define METHANE_ACTUAL_HIGH    1900 //ppb
//#define METHANE_ACTUAL_LOW     1866 //Average ppb
//#define METHANE_ACTUAL_HIGH    970000000 //ppb

int   sensorValue = 0;
uint32_t   methanePpm = 0;
float humidity_atm = 0;
float temperature_atm = 0;
float temperature_soil = 0;
float moisture = 0;


//Rovecomm
RoveCommEthernetUdp Rovecomm;
rovecomm_packet packet;


//delay of 5ms
#define ROVECOMM_DELAY    5

SHT1x th_sensor(SOIL_DATA_PIN, SOIL_SCK_PIN);
DHT dht(ATM_DOUT_PIN, DHTTYPE);

void setup() 
{
  Serial.begin(115200);
  delay(100);
  //Serial.println("Serial Begun");
  Rovecomm.begin(RC_SRASENSORSBOARD_FOURTHOCTET);  // SRA board IP: 138
  delay(ROVECOMM_DELAY);
  //Serial.println("Sensors Begin");
  pinMode(UV_TOGGLE_PIN, OUTPUT);
  pinMode(SW_ERROR_PIN, OUTPUT);
  pinMode(SW_FLAG1_PIN, OUTPUT);
  pinMode(SW_FLAG2_PIN, OUTPUT);

  pinMode(METHANE_VOUT_PIN, INPUT);
  
  //inizalise all output pins outputs and input.
  spectrometerSetup(A19);
  dht.begin();
}

void loop() 
{ 
    
  readAM2302();
  mthnSensorMQ4();
  //  readSHT10();  
  indicateSensorErrorAM2302(humidity_atm, temperature_atm);
  
  uint16_t SRADATA[RC_SRASENSORSBOARD_SENSORDATA_DATACOUNT];
  SRADATA[RC_SRASENSORSBOARD_SENSORDATA_AIRTENTRY]=100*temperature_atm;
  SRADATA[RC_SRASENSORSBOARD_SENSORDATA_AIRMENTRY]=100*humidity_atm;
  SRADATA[RC_SRASENSORSBOARD_SENSORDATA_SOILTENTRY]=1;//100*moisture;
  SRADATA[RC_SRASENSORSBOARD_SENSORDATA_SOILMENTRY]=1;//100*temperature_soil;
  SRADATA[RC_SRASENSORSBOARD_SENSORDATA_METHANEENTRY]= (uint16_t)methanePpm;
  packet = Rovecomm.read();
  Serial.println(".");
  if(packet.data_id!=0)
  {
   
    for(int i=0; i<packet.data_count; i++)
    {
      //Serial.print(packet.data[i]);
    }
    switch(packet.data_id)
    {
      case  RC_SRASENSORSBOARD_UVLEDENABLE_DATAID:
      {
        //Serial.println("UV Toggle");
        toggleUvLed();
        break;
      }
      case RC_SRASENSORSBOARD_SPECTROMETERRUN_DATAID:
      {
        //Serial.println("Spectrometer Running");
        digitalWrite(UV_TOGGLE_PIN, HIGH);
        digitalWrite(SW_FLAG1_PIN, HIGH);
        if(!spectrometerRun(A19, packet.data[0], true)) //True prints data to serial
        {
          digitalWrite(SW_ERROR_PIN, HIGH);
          delay (1000);
          digitalWrite(SW_ERROR_PIN, LOW);
        }
        digitalWrite(SW_FLAG1_PIN, LOW);
        digitalWrite(UV_TOGGLE_PIN, LOW);
      }
    }
  }

  static int timer = 0;

  if(timer > millis()) timer = millis();
  
  if(millis()-timer>=1000)
  {
    bool do_break = false;
    for(int i = 0; i<5; i++)
    {
      Serial.println(SRADATA[i]);
      if(SRADATA[i] == 0) do_break = true;
    }
    if(1)//!do_break)
    {
      Serial.println("Sending//////////////////////////////////////");
      timer = millis();
      Rovecomm.write(RC_SRASENSORSBOARD_SENSORDATA_HEADER, SRADATA);
    }
  }
  
  
  delay(ROVECOMM_DELAY);
}



//SHT-10 Sensor code for soil Temp and Moisture levels 
void readSHT10()
{
  moisture = th_sensor.readHumidity();
  temperature_soil = th_sensor.readTemperatureC();
  Serial.print("Temperature: ");Serial.print(temperature_soil);Serial.print(" C, Humidity: ");Serial.print(moisture);Serial.println(" ");
}



//AM2302 Code for Temp and Humidity.
void readAM2302()
{
  humidity_atm = dht.readHumidity();
  temperature_atm = dht.readTemperature();
  Serial.print(F("Humidity: "));Serial.print(humidity_atm);Serial.print(F("% Temperature: "));Serial.print(temperature_atm);Serial.print(F(" C "));Serial.println((""));
}



//MQ-4 Code for reading Methane Values
void mthnSensorMQ4()
{
  delay(100); //Long delay will slow down code immensly
  uint16_t adc_reading = analogRead(METHANE_VOUT_PIN);
  Serial.print("Methane ADC:");  
  Serial.println(adc_reading);
  methanePpm = adc_reading;//map(adc_reading, METHANE_ADC_LOW, METHANE_ADC_HIGH, METHANE_ACTUAL_LOW, METHANE_ACTUAL_HIGH);//300 - 10,000 are in parts per million.(units)
  constrain(methanePpm, 0, 65535); //to cast to lower unit
  Serial.println("Methane Actual:");
  Serial.println(methanePpm, DEC);
  
}

//Indicates an Error with the SHT-10:
//If flashing most likely cause is connection issues
void indicateSensorErrorSHT10(float moisture, float temperature_soil)
{
  if((isnan(temperature_soil) && isnan(moisture)))
  {
    Serial.println(("Failed to read from the SHT10 sensor!"));
    digitalWrite(SW_ERROR_PIN, HIGH);
    delay (600);
    digitalWrite(SW_ERROR_PIN,LOW);
    delay (300);
    return;
  }
}



//Indicates an error with the AM2302 Sensor.
void indicateSensorErrorAM2302(float humidity_atm, float temperature_atm)
{
  if((isnan(temperature_atm) && isnan(humidity_atm)))
  {
    Serial.println(("Failed to read from the AM2302 sensor!"));
    digitalWrite(SW_ERROR_PIN, HIGH);
    delay (600);
    digitalWrite(SW_ERROR_PIN,LOW);
    delay (300);
    return;
  }
}



//Toggles our UV Led on and off through rovecomm.
void toggleUvLed()
{
  if(packet.data[0] == 1) //RC_SRASENSORSBOARD_UVLEDENABLE_ENABLED)
  {
    digitalWrite(UV_TOGGLE_PIN, HIGH);
  }
  else
  {
    digitalWrite(UV_TOGGLE_PIN, LOW);
  }
}
