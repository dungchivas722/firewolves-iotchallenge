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
#include "bh1750_driver.h"



int main(void)
{
  sl_system_init();
  app_init();

  CMU_ClockEnable(cmuClock_I2C1, true);
  CMU_ClockEnable(cmuClock_GPIO, true);

  BH1750_Set_Power_On();

  BH1750_Set_Mode();
  for(int i = 1; i < 120000; i++){};
  while (1) {
      app_process_action();
      int data = BH1750_I2C_Transfer_Return();
      app_log_info("Light intensity: %d lx\n", data);
      for(int i = 1; i < 10000000; i++){};
  }
}
