#include "app_log.h"

#include "sl_component_catalog.h"
#include "sl_system_init.h"
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#include "app.h"
#include "em_i2c.h"
#include "em_gpio.h"
#include "em_cmu.h"
#include "sl_i2cspm.h"
#include "ustimer.h"

#include "dht11_driver.h"
#include "bh1750_driver.h"



int main()
{

  sl_system_init();

  app_init();
  app_log("#3 Debug\n");
  USTIMER_Init();
  app_log("#4 Debug\n");
  CMU_ClockEnable(cmuClock_I2C1, true);
  CMU_ClockEnable(cmuClock_GPIO, true);
  app_log("#5 Debug\n");
//  BH1750_Set_Power_On();
//
//  BH1750_Set_Mode();

  app_log("\n");
  app_log("----------------------------------------------------------------------\n");
  app_log("-------------------------IOT Challenge Module-------------------------\n");
  app_log("----------------------------------------------------------------------\n");

  while (1) {
      app_process_action();
      app_log("#6 Debug");
//      int data = BH1750_I2C_Transfer_Return();
//      app_log_info("Light intensity: %d lx\n", data);
      int data = DHT11_Read_Temp_Hum();
      app_log_info("Data: %d\n", data);
      for(int i = 1; i < 10000000; i++){};
  }
}
