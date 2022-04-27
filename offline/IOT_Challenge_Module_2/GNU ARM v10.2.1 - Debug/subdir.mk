################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app.c \
../bh1750_driver.c \
../dht11_driver.c \
../main.c 

OBJS += \
./app.o \
./bh1750_driver.o \
./dht11_driver.o \
./main.o 

C_DEPS += \
./app.d \
./bh1750_driver.d \
./dht11_driver.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
app.o: ../app.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2\config" -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2\autogen" -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/ustimer/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"app.d" -MT"app.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

bh1750_driver.o: ../bh1750_driver.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2\config" -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2\autogen" -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/ustimer/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"bh1750_driver.d" -MT"bh1750_driver.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

dht11_driver.o: ../dht11_driver.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2\config" -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2\autogen" -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/ustimer/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"dht11_driver.d" -MT"dht11_driver.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2\config" -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2\autogen" -I"E:\LAB\Iot Challenge\IOT_Challenge\vuonthongminh-iotchallenge\offline\IOT_Challenge_Module_2" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:/Users/Admin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/ustimer/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


