#ifndef DHT11_DRIVER_H_
#define DHT11_DRIVER_H_

#include<stdint.h>

#include "ustimer.h"
#include "em_gpio.h"

uint8_t DHT11_Start();

uint8_t DHT11_Read();

uint16_t DHT11_Read_Temp_Hum();

#endif
