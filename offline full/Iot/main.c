#include "sl_component_catalog.h"
#include "sl_system_init.h"
#include "app.h"
#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
#include "sl_power_manager.h"
#endif
#if defined(SL_CATALOG_KERNEL_PRESENT)
#include "sl_system_kernel.h"
#else // SL_CATALOG_KERNEL_PRESENT
#include "sl_system_process_action.h"
#endif // SL_CATALOG_KERNEL_PRESENT

#include "app_log.h"
#include "lora.h"
#include "bh1750_driver.h"
#include "dht11_driver.h"

#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_emu.h"
#include "em_iadc.h"
#include "em_gpio.h"
#include "sl_udelay.h"
#define CLK_SRC_ADC_FREQ      20000000  // CLK_SRC_ADC
#define CLK_ADC_FREQ          10000000  // CLK_ADC - 10 MHz max in normal mode


#define NUM_INPUTS 2


#define IADC_INPUT_0_PORT_PIN     iadcPosInputPortBPin0;
#define IADC_INPUT_1_PORT_PIN     iadcPosInputPortCPin3;

#define IADC_INPUT_0_BUS          BBUSALLOC
#define IADC_INPUT_0_BUSALLOC     GPIO_BBUSALLOC_BEVEN0_ADC0
#define IADC_INPUT_1_BUS          BBUSALLOC
#define IADC_INPUT_1_BUSALLOC     GPIO_BBUSALLOC_BODD0_ADC0



static volatile double scanResult[NUM_INPUTS];  // Volts

void initIADC (void)
{
  IADC_Init_t init = IADC_INIT_DEFAULT;
  IADC_AllConfigs_t initAllConfigs = IADC_ALLCONFIGS_DEFAULT;
  IADC_InitScan_t initScan = IADC_INITSCAN_DEFAULT;
  IADC_ScanTable_t initScanTable = IADC_SCANTABLE_DEFAULT;    // Scan Table


  CMU_ClockEnable(cmuClock_IADC0, true);
  CMU_ClockEnable(cmuClock_GPIO, true);

  // Select clock for IADC
  CMU_ClockSelectSet(cmuClock_IADCCLK, cmuSelect_FSRCO);

  // Modify init structures and initialize
  init.warmup = iadcWarmupKeepWarm;

  // Set the HFSCLK prescale value here
  init.srcClkPrescale = IADC_calcSrcClkPrescale(IADC0, CLK_SRC_ADC_FREQ, 0);


  initAllConfigs.configs[0].reference = iadcCfgReferenceVddx;
  initAllConfigs.configs[0].vRef = 3300;
  initAllConfigs.configs[0].osrHighSpeed = iadcCfgOsrHighSpeed2x;

  // Divide CLK_SRC_ADC to set the CLK_ADC frequency
  initAllConfigs.configs[0].adcClkPrescale = IADC_calcAdcClkPrescale(IADC0,
                                             CLK_ADC_FREQ,
                                             0,
                                             iadcCfgModeNormal,
                                             init.srcClkPrescale);


 initScan.dataValidLevel = _IADC_SCANFIFOCFG_DVL_VALID4;


  initScan.showId = true;
  initScanTable.entries[0].posInput = IADC_INPUT_0_PORT_PIN;
  initScanTable.entries[0].negInput = iadcNegInputGnd;
  initScanTable.entries[0].includeInScan = true;

  initScanTable.entries[1].posInput = IADC_INPUT_1_PORT_PIN;
  initScanTable.entries[1].negInput = iadcNegInputGnd;
  initScanTable.entries[1].includeInScan = true;


  // Initialize IADC
  IADC_init(IADC0, &init, &initAllConfigs);

  // Initialize scan
  IADC_initScan(IADC0, &initScan, &initScanTable);

  // Allocate the analog bus for ADC0 inputs
  GPIO->IADC_INPUT_0_BUS |= IADC_INPUT_0_BUSALLOC;
  GPIO->IADC_INPUT_1_BUS |= IADC_INPUT_1_BUSALLOC;

  // Clear any previous interrupt flags
  IADC_clearInt(IADC0, _IADC_IF_MASK);

  // Enable Scan interrupts
  IADC_enableInt(IADC0, IADC_IEN_SCANTABLEDONE);

  // Enable ADC interrupts
  NVIC_ClearPendingIRQ(IADC_IRQn);
  NVIC_EnableIRQ(IADC_IRQn);
}
void IADC_IRQHandler(void)
{
  IADC_Result_t result = {0, 0};

  // While the FIFO count is non-zero...
  while (IADC_getScanFifoCnt(IADC0))
  {
    // Pull a scan result from the FIFO
    result = IADC_pullScanFifoResult(IADC0);
    scanResult[result.id] = result.data;
  }

  IADC_clearInt(IADC0, IADC_IF_SCANTABLEDONE);
}

int main(void)
{
  sl_system_init();

  app_init();

#if defined(SL_CATALOG_KERNEL_PRESENT)
  // Start the kernel. Task(s) created in app_init() will start running.
  sl_system_kernel_start();
#else // SL_CATALOG_KERNEL_PRESENT

  initGPIO();
  initEUSART0();

  BH1750_Set_Power_On();
  BH1750_Set_Mode();

  DHT11 Module;

  CHIP_Init();
  initIADC();
  int data = 0;

  while (1) {
    sl_system_process_action();

    app_process_action();

    int light = BH1750_I2C_Transfer_Return();
    app_log_info("Light: %d\n", light);

    DHT11_Read_Temp_Hum(&Module);
    app_log_info("Humid: %d\n", Module.RH1);
    app_log_info("Temp: %d\n", Module.Temp1);

    IADC_command(IADC0, iadcCmdStartScan);
    data = scanResult[0];
    int soil = data*100/4096;
    app_log_info("Soil Humidity %d \n",soil);
    app_log_info("\n");
    UartTxLinkList(100,Module.Temp1,Module.RH1,soil,0);
    for(int i = 1; i < 10000000; i++);

#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
    // Let the CPU go to sleep if the system allows it.
    sl_power_manager_sleep();
#endif
  }
#endif // SL_CATALOG_KERNEL_PRESENT
}
