/*
 * telemetry.h
 *
 * Created: 5/18/2015 10:15:14 PM
 *  Author: Spencer Vogel
 */ 


#ifndef TELEMETRY_H_
#define TELEMETRY_H_

struct TransferInt8
{
	uint8_t key;
	uint8_t payload;
};

struct TransferFloat
{
	uint8_t key;
	float payload;
};

void writeTelemetry();

#endif /* TELEMETRY_H_ */