################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_retarget_stdio.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_rtt.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_stdlib_config.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_uart.c \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_usart.c 

OBJS += \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream.o \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_retarget_stdio.o \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_rtt.o \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_stdlib_config.o \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_uart.o \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_usart.o 

C_DEPS += \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream.d \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_retarget_stdio.d \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_rtt.d \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_stdlib_config.d \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_uart.d \
./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_usart.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream.d" -MT"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_retarget_stdio.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_retarget_stdio.d" -MT"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_retarget_stdio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_rtt.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_rtt.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_rtt.d" -MT"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_rtt.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_stdlib_config.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_stdlib_config.d" -MT"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_stdlib_config.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_uart.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_uart.d" -MT"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_uart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_usart.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/service/iostream/src/sl_iostream_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_usart.d" -MT"gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


