#include <Ethernet.h>
#include "RoveComm.h"
#include "Spectrometer.h"

EthernetServer DataServer(11001);

int data_output[MAX_DATA_LENGTH];
int min_count;

void spectrometerSetup(int analogReadPin, bool printSerial)
{
  if(printSerial) Serial.println("Spectrometer Initializing");
  //pinMode(A4, INPUT);
  pinMode(PE_0, INPUT);

  DataServer.begin();
  if(printSerial) Serial.println("DataServer Init");
}

bool spectrometerRun(int analogReadPin, int num_reads, bool printSerial) 
{
	if(printSerial){Serial.println("---Spectrometer Run---"); Serial.print("Reads:");  Serial.println(num_reads);}
	//Clear data
	for(int i = 0; i<MAX_DATA_LENGTH; i++)
	{
		data_output[i] = 0;
	}
	min_count = MAX_DATA_LENGTH;
	
	for(int i = 0; i< num_reads; i++)
	{
		captureData(analogReadPin, printSerial);
	}
	averageData(num_reads, printSerial);
	sendData(printSerial);
}

bool captureData(int analogReadPin, bool printSerial)
{
	  

  int count = 0;
  int data[MAX_DATA_LENGTH];

  //---Begin data capture---
  //Wait for previous data to finish
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000001))
  {
    //Serial.println('a');
  }
  //Wait for interrupt to go high
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000000))
  {
    //Serial.println('b');
  }
  //While interrput is high
  while(HWREG(GPIO_PORTE_BASE + (B00000001 << 2)) == (B00000001))
  {
    //Capture like your life depends on it
    data[count] = analogRead(A19);
    count++;
  }
/*
	//Mock data for testing
	for(int i = 0; i<1500; i++)
	{
		data[i] = i;
		count ++;
	}
	*/
  //---End data capture---
  
  if(printSerial){Serial.print("Count: "); Serial.println(count);}
  
  if(count < min_count) min_count = count;
  for(int i = 0; i<min_count; i++)
  {
	  data_output[i] += data[i];
  }
}

bool averageData(int num_reads, bool printSerial)
{
  for(int i = 0; i<min_count; i++)
  {
	  //Serial.println(data_output[i]);
	  data_output[i] /= num_reads;
	  
  }
}

bool sendData(bool printSerial)
{
  EthernetClient client = DataServer.available();

  if(printSerial) Serial.println(min_count);
  //Print Data
  for(int i = 0; i<min_count; i++)
  {
	if(printSerial)
	{
	  Serial.print(i);
	  Serial.print(",");
      Serial.println(data_output[i]);
	}

    if(client)
    {
      DataServer.print(i);
      DataServer.print(",");
      DataServer.println(data_output[i]);
    }
  }
  if(printSerial) Serial.println("---End of Spectrometer---");
  if(!client)
  {
    if(printSerial) Serial.println("XXX Client Error XXX");
    return(false);
  }
  else
  {
    client.stop();
    if(printSerial) Serial.println("Clinet Sent");
    return(true);
  }
}
