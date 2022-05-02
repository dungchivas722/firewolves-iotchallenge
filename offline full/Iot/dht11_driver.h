#ifndef DHT11_DRIVER_H_
#define DHT11_DRIVER_H_

#include<stdint.h>

#include "sl_udelay.h"
#include "em_gpio.h"

typedef struct
{
  uint8_t Temp1;
  uint8_t Temp2;
  uint8_t RH1;
  uint8_t RH2;
  uint16_t SUM;
}DHT11;

uint8_t DHT11_Start();

uint8_t DHT11_Read();

void DHT11_Read_Temp_Hum(DHT11* DHT);

#endif
