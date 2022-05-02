################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../autogen/sl_board_default_init.c \
../autogen/sl_device_init_clocks.c \
../autogen/sl_event_handler.c \
../autogen/sl_i2cspm_init.c \
../autogen/sl_iostream_handles.c \
../autogen/sl_iostream_init_usart_instances.c 

OBJS += \
./autogen/sl_board_default_init.o \
./autogen/sl_device_init_clocks.o \
./autogen/sl_event_handler.o \
./autogen/sl_i2cspm_init.o \
./autogen/sl_iostream_handles.o \
./autogen/sl_iostream_init_usart_instances.o 

C_DEPS += \
./autogen/sl_board_default_init.d \
./autogen/sl_device_init_clocks.d \
./autogen/sl_event_handler.d \
./autogen/sl_i2cspm_init.d \
./autogen/sl_iostream_handles.d \
./autogen/sl_iostream_init_usart_instances.d 


# Each subdirectory must supply rules for building sources it contributes
autogen/sl_board_default_init.o: ../autogen/sl_board_default_init.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_board_default_init.d" -MT"autogen/sl_board_default_init.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_device_init_clocks.o: ../autogen/sl_device_init_clocks.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_device_init_clocks.d" -MT"autogen/sl_device_init_clocks.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_event_handler.o: ../autogen/sl_event_handler.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_event_handler.d" -MT"autogen/sl_event_handler.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_i2cspm_init.o: ../autogen/sl_i2cspm_init.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_i2cspm_init.d" -MT"autogen/sl_i2cspm_init.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_iostream_handles.o: ../autogen/sl_iostream_handles.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_iostream_handles.d" -MT"autogen/sl_iostream_handles.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_iostream_init_usart_instances.o: ../autogen/sl_iostream_init_usart_instances.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DRTT_USE_ASM=0' '-DSEGGER_RTT_SECTION="SEGGER_RTT"' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\Iot" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/segger/systemview/SEGGER" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_iostream_init_usart_instances.d" -MT"autogen/sl_iostream_init_usart_instances.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


