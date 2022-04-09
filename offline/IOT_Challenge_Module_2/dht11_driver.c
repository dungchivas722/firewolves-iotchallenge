#include<stdint.h>

#include "dht11_driver.h"
#include "ustimer.h"
#include "em_gpio.h"

uint8_t DHT11_Start(){
  uint8_t Response = 0;
  GPIO_PinModeSet(gpioPortB, 4, gpioModePushPull, 1);
  GPIO_PortOutClear(gpioPortB, 4);
  USTIMER_Delay(18);
  GPIO_PinModeSet(gpioPortB, 4, gpioModeInput, 1);
  USTIMER_Delay(40);
  if(! GPIO_PinInGet(gpioPortB, 4))
  {
      USTIMER_Delay(40);
      if(GPIO_PinInGet(gpioPortB, 4))
      {
          Response = 1;
      }
      else Response = 0;
  }
  while(GPIO_PinInGet(gpioPortB, 4));

  return Response;
}

uint8_t DHT11_Read(){
  uint8_t Value = 0;
  GPIO_PinModeSet(gpioPortB, 4, gpioModeInput, 1);
  for(int i = 0; i < 8; i++)
    {
      while(! GPIO_PinInGet(gpioPortB, 4));
      USTIMER_Delay(40);
      if(GPIO_PinInGet(gpioPortB, 4))
        {
          Value &= ~(1<<(7 - i));
        }
      else Value |= 1<<(7 - i);
      while(GPIO_PinInGet(gpioPortB, 4));
    }
  return Value;
}

uint16_t DHT11_Read_Temp_Hum(){
  uint8_t Temp1, Temp2, RH1, RH2;
  uint16_t Temp, Humid, SUM = 0;
  DHT11_Start();
  RH1 = DHT11_Read();
  RH2 = DHT11_Read();
  Temp1 = DHT11_Read();
  Temp2 = DHT11_Read();
  SUM = DHT11_Read();
  Temp = (Temp1 << 8) | Temp2;
  Humid = (RH1 << 8) | RH2;


  return SUM;
}
