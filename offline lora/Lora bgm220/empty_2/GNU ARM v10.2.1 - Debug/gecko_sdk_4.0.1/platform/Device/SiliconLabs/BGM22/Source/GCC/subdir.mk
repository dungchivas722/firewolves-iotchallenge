################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/Device/SiliconLabs/BGM22/Source/GCC/startup_bgm22.c 

OBJS += \
./gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/GCC/startup_bgm22.o 

C_DEPS += \
./gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/GCC/startup_bgm22.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/GCC/startup_bgm22.o: C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1/platform/Device/SiliconLabs/BGM22/Source/GCC/startup_bgm22.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\dungc\SimplicityStudio\v5_workspace\empty_2\config" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\empty_2\autogen" -I"C:\Users\dungc\SimplicityStudio\v5_workspace\empty_2" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//app/common/util/app_log" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//hardware/board/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/CMSIS/RTOS2/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/device_init/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/emlib/host/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/freertos/cmsis/Include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/freertos/kernel/include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/freertos/kernel/portable/GCC/ARM_CM33_NTZ/non_secure" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/driver/i2cspm/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/iostream/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/aws_iot_libs/libraries/abstractions/common_io/include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//util/third_party/aws_iot_libs/vendors/siliconlabs/boards/all/ports/common_io/iot_adc/include" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/common/toolchain/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/system/inc" -I"C:/Users/dungc/SimplicityStudio/SDKs/gecko_sdk1//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/GCC/startup_bgm22.d" -MT"gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/GCC/startup_bgm22.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


