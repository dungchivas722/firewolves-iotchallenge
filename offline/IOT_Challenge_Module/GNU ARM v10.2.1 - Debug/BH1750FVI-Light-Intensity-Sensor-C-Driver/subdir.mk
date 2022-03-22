################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi.c \
../BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi_low_level.c 

OBJS += \
./BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi.o \
./BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi_low_level.o 

C_DEPS += \
./BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi.d \
./BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi_low_level.d 


# Each subdirectory must supply rules for building sources it contributes
BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi.o: ../BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2\config" -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2\autogen" -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi.d" -MT"BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi_low_level.o: ../BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi_low_level.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2\config" -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2\autogen" -I"C:\Users\Admin\SimplicityStudio\v5_workspace\empty_2" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi_low_level.d" -MT"BH1750FVI-Light-Intensity-Sensor-C-Driver/bh1750fvi_low_level.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


