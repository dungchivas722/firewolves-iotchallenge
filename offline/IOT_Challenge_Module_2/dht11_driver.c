#include<stdint.h>

#include "dht11_driver.h"
#include "ustimer.h"
#include "em_gpio.h"

uint8_t DHT11_Start(){
  uint8_t Response = 0;
//  uint8_t index = 0;
  GPIO_PinModeSet(gpioPortB, 4, gpioModePushPull, 1);
  GPIO_PinOutClear(gpioPortB, 4);
  USTIMER_Delay(18000);
  GPIO_PinModeSet(gpioPortB, 4, gpioModeInput, 0);
  USTIMER_Delay(25);
  if(! GPIO_PinInGet(gpioPortB, 4))
  {
      USTIMER_Delay(70);
      if(GPIO_PinInGet(gpioPortB, 4))
      {
          Response = 1;
      }
      else Response = 0;
  }
//  index = 0;
  while(GPIO_PinInGet(gpioPortB, 4)){
//      index++;
//      USTIMER_Delay(1);
//      if(index > 100)
//        break;

  }

  return Response;
}

uint8_t DHT11_Read(){
  uint8_t Value = 0;
//  int index = 0;
  for(uint8_t i = 0; i < 8; i++)
    {
      while(! GPIO_PinInGet(gpioPortB, 4)){
//         index++;
//         USTIMER_Delay(1);
//         if(index > 100)
//           break;
      }
      USTIMER_Delay(30);
      if(GPIO_PinInGet(gpioPortB, 4))
        {
          Value = ((Value << 1) | 1);
        }
      else{
          Value = (Value << 1);
      }
//      index = 0;
      while(GPIO_PinInGet(gpioPortB, 4)){
//      index++;
//          USTIMER_Delay(1);
//          if(index > 100)
//            break;
      }
    }
  return Value;
}

struct OneWire DHT11_Read_Temp_Hum(){
  uint8_t Temp1, Temp2, RH1, RH2;
  uint16_t SUM;
//  struct OneWire DHT11;
  Temp1 = Temp2 = RH1 = RH2 = SUM = 0;
  DHT11_Start();
  RH1 = DHT11_Read();
  RH2 = DHT11_Read();
  Temp1 = DHT11_Read();
  Temp2 = DHT11_Read();
  SUM = DHT11_Read();
//  if(SUM == RH1 + RH2 + Temp1 + Temp2) return 1;
//  else return 0;
  DHT11.Temp = Temp1;
  DHT11.Humid = RH1;
  return DHT11;
}
