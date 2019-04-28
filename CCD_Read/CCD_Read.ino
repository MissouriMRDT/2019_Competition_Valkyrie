#include <Ethernet.h>
#include "RoveComm.h"

int count = 0;
int16_t data[10000];

RoveCommEthernetUdp RoveComm;
EthernetServer DataServer(11001);

bool spectrometerRun();
void spectrometerSetup();

void setup() {
  Serial.begin(115200);

  RoveComm.begin(135);//RC_SRASENSORSBOARD_FOURTHOCTET);
  
  spectrometerSetup();
}

void loop()
{
  spectrometerRun();
  delay(1000);
}

void spectrometerSetup()
{
  Serial.println("Spectrometer Initializing");
  pinMode(PE_0, INPUT);

  DataServer.begin();
  Serial.println("DataServer Init");
}

bool spectrometerRun() {
  Serial.println("---Spectrometer Run---");
  count = 0;

  //begin data capture
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000001))
  {
    //Serial.println('a');
  }
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000000))
  {
    //Serial.println('b');
  }
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000001))
  {
    data[count] = analogRead(A19);
    count++;
  }

  //End data capture
  
  Serial.print("Count: "); Serial.println(count);
  EthernetClient client = DataServer.available();

  //Print Data
  for(int i = 0; i<count; i++)
  {
    Serial.print(i);
    Serial.print(",");
    Serial.println(data[i]);

    if(client)
    {
      DataServer.print(i);
      DataServer.print(",");
      DataServer.println(data[i]);
    }
  }
  Serial.println("---End of Spectrometer---");
  if(!client)
  {
    Serial.println("XXX Client Error XXX");
    return(false);
  }
  else
  {
    client.stop();
    Serial.println("Clinet Sent");
    return(true);
  }
}
