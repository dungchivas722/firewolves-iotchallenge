#include<stdint.h>
#include<string.h>

#include "dht11_driver.h"

uint8_t DHT11_Start(){
  uint8_t Response = 0;
  uint8_t index = 0;
  GPIO_PinModeSet(gpioPortB, 4, gpioModePushPull, 1);
  GPIO_PinOutClear(gpioPortB, 4);
  sl_udelay_wait(18000);
  GPIO_PinModeSet(gpioPortB, 4, gpioModeInput, 0);
  sl_udelay_wait(25);
  if(! GPIO_PinInGet(gpioPortB, 4))
  {
      sl_udelay_wait(70);
      if(GPIO_PinInGet(gpioPortB, 4))
      {
          Response = 1;
      }
      else Response = 0;
  }
  index = 0;
  while(GPIO_PinInGet(gpioPortB, 4)){
      index++;
      sl_udelay_wait(1);
      if(index > 100)
        break;

  }

  return Response;
}

uint8_t DHT11_Read(){
  uint8_t Value = 0;
  int index = 0;
  for(uint8_t i = 0; i < 8; i++)
    {
      while(! GPIO_PinInGet(gpioPortB, 4)){
         index++;
         sl_udelay_wait(1);
         if(index > 100)
           break;
      }
      sl_udelay_wait(30);
      if(GPIO_PinInGet(gpioPortB, 4))
        {
          Value = ((Value << 1) | 1);
        }
      else{
          Value = (Value << 1);
      }
      index = 0;
      while(GPIO_PinInGet(gpioPortB, 4)){
      index++;
          sl_udelay_wait(1);
          if(index > 100)
            break;
      }
    }
  return Value;
}

void DHT11_Read_Temp_Hum(DHT11* DHT){
  bool response = false;
  memset(DHT, 0, sizeof(DHT11));
  response = DHT11_Start();
  if(response){
  DHT->RH1 = DHT11_Read();
  DHT->RH2 = DHT11_Read();
  DHT->Temp1 = DHT11_Read();
  DHT->Temp2 = DHT11_Read();
  DHT->SUM = DHT11_Read();
//  if(DHT->SUM != DHT->RH1 + DHT->RH2 + DHT->Temp1 + DHT->Temp2) return 0;
  }
//  return response;
}
