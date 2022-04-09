#include "sl_i2cspm.h"
#include <stdint.h>

#define I2C_SADDR 0x23
#define CONTINUOUS_H_1_MODE 0x10
#define POWER_ON 0x01

void BH1750_I2C_Init();

void BH1750_Set_Power_On();

void BH1750_Set_Mode();

void BH1750_I2C_Status_Check();

uint16_t BH1750_I2C_Transfer_Return();
