################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app.c \
../bh1750_driver.c \
../dht11_driver.c \
../lora.c \
../main.c 

OBJS += \
./app.o \
./bh1750_driver.o \
./dht11_driver.o \
./lora.o \
./main.o 

C_DEPS += \
./app.d \
./bh1750_driver.d \
./dht11_driver.d \
./lora.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
app.o: ../app.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"app.d" -MT"app.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bh1750_driver.o: ../bh1750_driver.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"bh1750_driver.d" -MT"bh1750_driver.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

dht11_driver.o: ../dht11_driver.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"dht11_driver.d" -MT"dht11_driver.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lora.o: ../lora.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"lora.d" -MT"lora.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


