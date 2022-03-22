################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk/platform/common/toolchain/src/sl_memory.c 

OBJS += \
./gecko_sdk_4.0.1/platform/common/toolchain/src/sl_memory.o 

C_DEPS += \
./gecko_sdk_4.0.1/platform/common/toolchain/src/sl_memory.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.1/platform/common/toolchain/src/sl_memory.o: C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk/platform/common/toolchain/src/sl_memory.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2\config" -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2\autogen" -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/common/toolchain/src/sl_memory.d" -MT"gecko_sdk_4.0.1/platform/common/toolchain/src/sl_memory.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


