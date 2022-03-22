#include <stdio.h>
#include <stdint.h>

#include "bh1750_driver.h"
#include "sl_i2cspm.h"

/*Them thu vien app log*/
#include "app_log.h"

void BH1750_I2C_Init(){
I2CSPM_Init_TypeDef init;
  init.i2cClhr = i2cClockHLRStandard;
  init.i2cMaxFreq = I2C_FREQ_STANDARD_MAX;
  init.port = I2C1;
  init.sclPort = gpioPortD;
  init.sclPin = 3;
  init.sdaPort = gpioPortD;
  init.sdaPin = 2;
  init.i2cRefFreq = 0;
  I2CSPM_Init(&init);
}

void BH1750_Set_Power_On(){
  I2C_TransferSeq_TypeDef seq;
    uint8_t mode = POWER_ON;
    seq.addr = I2C_SADDR << 1;
    seq.flags = I2C_FLAG_WRITE;

    seq.buf[0].data = &mode;
    seq.buf[0].len  = 1;

    I2CSPM_Transfer(I2C1, &seq);
}

void BH1750_Set_Mode(){
  I2C_TransferSeq_TypeDef seq;
    uint8_t mode = CONTINUOUS_H_1_MODE;
    seq.addr = I2C_SADDR << 1;
    seq.flags = I2C_FLAG_WRITE;

    seq.buf[0].data = &mode;
    seq.buf[0].len  = 1;

    I2CSPM_Transfer(I2C1, &seq);
}

uint16_t BH1750_I2C_Transfer_Return(){
  I2C_TransferReturn_TypeDef ret;
  I2C_TransferSeq_TypeDef seq;
  uint16_t light_data;
  uint8_t i2c_read_data[2];
  seq.addr = I2C_SADDR << 1;
  seq.flags = I2C_FLAG_READ;

  seq.buf[0].data = i2c_read_data;
  seq.buf[0].len  = 2;
  ret = I2C_TransferInit(I2C1, &seq);
  while (ret == i2cTransferInProgress) {
        ret = I2C_Transfer(I2C1);
  }
  app_log_info("Status check: %d\n", ret);
  I2CSPM_Transfer(I2C1, &seq);

  light_data = ((i2c_read_data[0] << 8) + i2c_read_data[1]) / 1.2;
  return light_data;
}


