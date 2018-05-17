/*
 * Science Board Software
 * Rev 1, 2018
 * Used with Science Board Hardware Rev 1
 * Andrew Van Horn, Judah Schad
 * 
 * Controls spectrometer laser, spectrometer mirror motor, mirror motor encoder, and photodiode sensors
 */



#include "RoveComm.h"
RoveCommEthernetUdp RoveComm;

//Energia Libraries
#include <Wire.h>

#define USE_SERIAL 1 //Set to 1 to output sensor data to Serial

////////////////////
//   Board Pins   //
////////////////////

const int LASER_PIN        = PD_4;
const int ENCODER_PIN      = PM_0; //pulseIn()
const int MIRROR_PIN_1     = PK_4;
const int MIRROR_PIN_2     = PK_5;

////////////////////
//  Sensor Pins   //
////////////////////
const int PRESSURE_I2C     = 0;
const int METHANE_PIN      = PE_0;
const int AMMONIA_PIN      = PE_1;
const int UV_PIN           = PE_2;
const int HUMIDITY_PIN     = PE_3;
const int TEMPERATURE_PIN  = PD_7;
const int PHOTODIODE_PIN_1 = PD_0;
const int PHOTODIODE_PIN_2 = PD_1;

/////////////////////
//Sensor Conversion//
/////////////////////

//Min/Max Value Input
#define PRESSURE_MAX_ACTUAL      1
#define PRESSURE_MAX_MEASURED    1
#define PRESSURE_MIN_ACTUAL      1
#define PRESSURE_MIN_MEASURED    1

#define METHANE_MAX_ACTUAL       1
#define METHANE_MAX_MEASURED     1
#define METHANE_MIN_ACTUAL       1
#define METHANE_MIN_MEASURED     1

#define AMMONIA_MAX_ACTUAL       1
#define AMMONIA_MAX_MEASURED     1
#define AMMONIA_MIN_ACTUAL       1
#define AMMONIA_MIN_MEASURED     1

#define UV_MAX_ACTUAL            1
#define UV_MAX_MEASURED          1
#define UV_MIN_ACTUAL            1
#define UV_MIN_MEASURED          1

#define HUMIDITY_MAX_ACTUAL      1
#define HUMIDITY_MAX_MEASURED    1
#define HUMIDITY_MIN_ACTUAL      1
#define HUMIDITY_MIN_MEASURED    1

#define TEMPERATURE_MAX_ACTUAL   1
#define TEMPERATURE_MAX_MEASURED 1
#define TEMPERATURE_MIN_ACTUAL   1
#define TEMPERATURE_MIN_MEASURED 1

////////////////////
//Conversion Math //
////////////////////

//Scalar
int pressure_Scalar    = (PRESSURE_MAX_ACTUAL    - PRESSURE_MIN_ACTUAL)   /(PRESSURE_MAX_MEASURED    - PRESSURE_MIN_MEASURED);              
int methane_Scalar     = (METHANE_MAX_ACTUAL     - METHANE_MIN_ACTUAL)    /(METHANE_MAX_MEASURED     - METHANE_MIN_MEASURED);
int ammonia_Scalar     = (AMMONIA_MAX_ACTUAL     - AMMONIA_MIN_ACTUAL)    /(AMMONIA_MAX_MEASURED     - AMMONIA_MIN_MEASURED);
int uv_Scalar          = (UV_MAX_ACTUAL          - UV_MIN_ACTUAL)         /(UV_MAX_MEASURED          - UV_MIN_MEASURED);
int humidity_Scalar    = (HUMIDITY_MAX_ACTUAL    - HUMIDITY_MIN_ACTUAL)   /(HUMIDITY_MAX_MEASURED    - HUMIDITY_MIN_MEASURED);
int temperature_Scalar = (TEMPERATURE_MAX_ACTUAL - TEMPERATURE_MIN_ACTUAL)/(TEMPERATURE_MAX_MEASURED - TEMPERATURE_MIN_MEASURED);
                        
//Translational
int pressure_Translational    = PRESSURE_MIN_ACTUAL    - (PRESSURE_MIN_MEASURED    * pressure_Scalar);
int methane_Translational     = METHANE_MIN_ACTUAL     - (METHANE_MIN_MEASURED     * methane_Scalar);
int ammonia_Translational     = AMMONIA_MIN_ACTUAL     - (AMMONIA_MIN_MEASURED     * ammonia_Scalar);
int uv_Translational          = UV_MIN_ACTUAL          - (UV_MIN_MEASURED          * uv_Scalar);
int humidity_Translational    = HUMIDITY_MIN_ACTUAL    - (HUMIDITY_MIN_MEASURED    * humidity_Scalar);
int temperature_Translational = TEMPERATURE_MIN_ACTUAL - (TEMPERATURE_MIN_MEASURED * temperature_Scalar);

////////////////////
//Global Variables//
////////////////////

int pressure_Measurement;
int methane_Measurement;
int ammonia_Measurement;
int uv_Measurement;
int humidity_Measurement;
int temperature_Measurement;

uint16_t pressure_Output;
uint16_t methane_Output;
uint16_t ammonia_Output;
uint16_t uv_Output;
uint16_t humidity_Output;
uint16_t temperature_Output;


////////////////////
// RoveComm Setup //
////////////////////

//RoveComm Data_ID
const uint16_t PRESSURE_ID         = 1824;
const uint16_t METHANE_ID          = 1830;
const uint16_t AMMONIA_ID          = 1842;
const uint16_t UV_ID               = 1828;
const uint16_t HUMIDITY_ID     = 1826;
const uint16_t TEMPERATURE_ID  = 1824;
const uint16_t COMMAND_ID          = 1808;

//GetMessage Variables
uint16_t data_id;
uint16_t command_data_size;
uint16_t command_data;

const char PHOTODIODE_1_HEADER[] = "photodiode 1:";
const char PHOTODIODE_2_HEADER[] = "photodiode 2:";

//Science Commands
const uint16_t LASER_ON         = 2;
const uint16_t LASER_OFF        = 3;
const uint16_t SPECTROMETER_RUN = 6;

//Ethernet Parameters
const int SPECTROMETER_TCP_PORT = 11001;
const int SCIENCE_BOARD_SUBNET  = 135;

//Function Prottypes
void spectrometerRun();

void sendSensorValues();
float getPressure();
float getMethane();
float getAmmonia();
float getUVIntensity();
float getHumidity();
float getTemperature();

void setup() 
{
  //Initialize Pressure I2C 
  Wire.setModule(PRESSURE_I2C);
  Wire.begin();
  delay(10);
  
  RoveComm.begin(192, 168, 1, SCIENCE_BOARD_SUBNET); 
  delay(10);
  if(USE_SERIAL)
    Serial.begin(9600);
  delay(10);

  pinMode(METHANE_PIN,      INPUT);
  pinMode(AMMONIA_PIN,      INPUT);
  pinMode(UV_PIN,           INPUT);
  pinMode(HUMIDITY_PIN,     INPUT);
  pinMode(TEMPERATURE_PIN,  INPUT);
  pinMode(PHOTODIODE_PIN_1, INPUT);
  pinMode(PHOTODIODE_PIN_2, INPUT);
  pinMode(LASER_PIN,        INPUT);
  pinMode(ENCODER_PIN,      INPUT);
  
  pinMode(MIRROR_PIN_1,    OUTPUT);
  pinMode(MIRROR_PIN_2,    OUTPUT);

 EthernetServer SpectrometerTCP(SPECTROMETER_TCP_PORT);

 //ToDo:Watchdog
}

void loop() 
{
  roveComm.getMessage(data_id, command_data_size, command_data);

  switch case(data_id)
  {
    case(LASER_ON):
      break;/////////////////ToDo
    case(LASER_OFF):
      break;/////////////////ToDo
    case(SPECTROMETER_RUN)
      spectrometerRun();
      break;
    default:
  }

  //Read and send sensor values
  sendSensorValues();
}

////////////////////////////ToDo
void spectrometerRun()
{}

sendSensorValues()
{
  roveComm.write(PRESSURE_ID,    sizeof(float), getPressure()   );
  roveComm.write(METHANE_ID,     sizeof(float), getMethane()    );
  roveComm.write(AMMONIA_ID,     sizeof(float), getAmmonia()    );
  roveComm.write(UV_ID,          sizeof(float), getUV()         );
  roveComm.write(HUMIDITY_ID,    sizeof(float), getHumidity()   );
  roveComm.write(TEMPERATURE_ID, sizeof(float), getTemperature());
  
  return;
}


////ToDo
float getPressure()
{}

float getMethane()
{
  methane_Measurement = analogRead(METHANE_PIN);
  methane_Output = methane_Measurement * methane_Scalar = methane_Translational;
  if(USE_SERIAL)
  {
    Serial.println("");
    Serial.print("Methane Ain:");
    Serial.println(methane_Measurement);
    Serial.print("Methane Out")l
    Serial.println(methane_Output
  }
  return(methane_Output);
}

float getAmmonia()
{
  ammonia_Measurement = analogRead(AMMONIA_PIN);
  ammonia_Output = ammonia_Measurement * ammonia_Scalar = ammonia_Translational;
  if(USE_SERIAL)
  {
    Serial.println("");
    Serial.print("Ammonia Ain:");
    Serial.println(ammonia_Measurement);
    Serial.print("Ammonia Out")l
    Serial.println(ammonia_Output
  }
  return(ammonia_Output);
}

float getUVIntensity()
{
  uv_Measurement = analogRead(UV_PIN);
  uv_Output = uv_Measurement * uv_Scalar = uv_Translational;
  if(USE_SERIAL)
  {
    Serial.println("");
    Serial.print("UV Ain:");
    Serial.println(uv_Measurement);
    Serial.print("UV Out")l
    Serial.println(uv_Output
  }
  return(uv_Output);
}

float getHumidity()
{
  humidity_Measurement = analogRead(HUMIDITY_PIN);
  humidity_Output = humidity_Measurement * humidity_Scalar = humidity_Translational;
  if(USE_SERIAL)
  {
    Serial.println("");
    Serial.print("Humidity Ain:");
    Serial.println(humidity_Measurement);
    Serial.print("Humidity Out")l
    Serial.println(humidity_Output
  }
  return(humidity_Output);
}

float getTemperature()
{
  temperature_Measurement = analogRead(TEMPERATURE_PIN);
  temperature_Output = temperature_Measurement * temperature_Scalar = temperature_Translational;
  if(USE_SERIAL)
  {
    Serial.println("");
    Serial.print("Temperature Ain:");
    Serial.println(temperature_Measurement);
    Serial.print("Temperature Out")l
    Serial.println(temperature_Output
  }
  return(temperature_Output);
}

