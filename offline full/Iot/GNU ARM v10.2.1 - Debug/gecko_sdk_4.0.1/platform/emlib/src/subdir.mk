################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_assert.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_cmu.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_core.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_emu.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_eusart.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_gpio.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_i2c.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_iadc.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_system.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_usart.c 

OBJS += \
./gecko_sdk_4.0.1/platform/emlib/src/em_assert.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_cmu.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_core.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_emu.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_eusart.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_gpio.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_i2c.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_iadc.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_system.o \
./gecko_sdk_4.0.1/platform/emlib/src/em_usart.o 

C_DEPS += \
./gecko_sdk_4.0.1/platform/emlib/src/em_assert.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_cmu.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_core.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_emu.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_eusart.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_gpio.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_i2c.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_iadc.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_system.d \
./gecko_sdk_4.0.1/platform/emlib/src/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.1/platform/emlib/src/em_assert.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_assert.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_assert.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_assert.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_cmu.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_cmu.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_core.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_core.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_core.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_emu.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_emu.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_eusart.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_eusart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_eusart.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_eusart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_gpio.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_gpio.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_i2c.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_i2c.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_i2c.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_iadc.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_iadc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_iadc.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_iadc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_system.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_system.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/emlib/src/em_usart.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/emlib/src/em_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/emlib/src/em_usart.d" -MT"gecko_sdk_4.0.1/platform/emlib/src/em_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


