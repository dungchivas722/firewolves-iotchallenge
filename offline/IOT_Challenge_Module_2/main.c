#include "app_log.h"

#include "sl_component_catalog.h"
#include "sl_system_init.h"
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
#include "sl_power_manager.h"
#endif
#if defined(SL_CATALOG_KERNEL_PRESENT)
#include "sl_system_kernel.h"
#else // SL_CATALOG_KERNEL_PRESENT
#include "sl_system_process_action.h"
#endif // SL_CATALOG_KERNEL_PRESENT
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

  USTIMER_Init();

  #if defined(SL_CATALOG_KERNEL_PRESENT)
  // Start the kernel. Task(s) created in app_init() will start running.
  sl_system_kernel_start();
  #else // SL_CATALOG_KERNEL_PRESENT

  CMU_ClockEnable(cmuClock_I2C1, true);
  CMU_ClockEnable(cmuClock_GPIO, true);

  GPIO_PinModeSet(gpioPortB, 4, gpioModePushPull, 1);

  BH1750_Set_Power_On();

  BH1750_Set_Mode();

  app_log("\n");
  app_log("----------------------------------------------------------------------\n");
  app_log("-------------------------IOT Challenge Module-------------------------\n");
  app_log("----------------------------------------------------------------------\n");

  while (1) {
      sl_system_process_action();
      app_process_action();

      int lux = BH1750_I2C_Transfer_Return();
      DHT11 = DHT11_Read_Temp_Hum();

      app_log_info("Light intensity: %d lx\n", lux);
      for(int i = 1; i < 10000000; i++){};

      app_log_info("Temperature: %d \n", DHT11.Temp);
      app_log_info("Humidity: %d%\n", DHT11.Humid);
      app_log("\n");
      for(int i = 1; i < 10000000; i++){};
#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
    // Let the CPU go to sleep if the system allows it.
    sl_power_manager_sleep();
#endif
  }
#endif // SL_CATALOG_KERNEL_PRESENT
}
