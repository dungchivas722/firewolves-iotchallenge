#ifndef DHT11_DRIVER_H_
#define DHT11_DRIVER_H_

#include<stdint.h>

#include "ustimer.h"
#include "em_gpio.h"

struct OneWire
{
  uint8_t Temp;
  uint8_t Humid;
}DHT11;

uint8_t DHT11_Start();

uint8_t DHT11_Read();

struct OneWire DHT11_Read_Temp_Hum();

#endif
