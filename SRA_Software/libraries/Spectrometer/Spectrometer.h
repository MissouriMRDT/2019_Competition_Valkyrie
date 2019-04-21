#ifndef _SPECTROMETER
#define _SPECTROMETER

#define TCP_PORT = 11001
#define MAX_DATA_LENGTH = 4000

//Sets up Spectrometer ADC and interrupt pins and comport
//Must begin RoveComm before eunning spectrometerSetup()
//Must use PE_0 as interrupt pin
void spectrometerSetup(int analogReadPin, bool printSerial = false);

bool spectrometerRun(int analogReadPin, bool printSerial = false);

#endif