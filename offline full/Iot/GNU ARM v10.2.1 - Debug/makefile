################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_4.0.1/util/third_party/segger/systemview/SEGGER/subdir.mk
-include gecko_sdk_4.0.1/platform/service/udelay/src/subdir.mk
-include gecko_sdk_4.0.1/platform/service/system/src/subdir.mk
-include gecko_sdk_4.0.1/platform/service/iostream/src/subdir.mk
-include gecko_sdk_4.0.1/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.0.1/platform/emlib/src/subdir.mk
-include gecko_sdk_4.0.1/platform/driver/i2cspm/src/subdir.mk
-include gecko_sdk_4.0.1/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/GCC/subdir.mk
-include gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/subdir.mk
-include gecko_sdk_4.0.1/hardware/board/src/subdir.mk
-include gecko_sdk_4.0.1/app/common/util/app_log/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Iot.axf

# Tool invocations
Iot.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -T "C:\Users\dungc\SimplicityStudio\v5_workspace\Iot/autogen/linkerfile.ld" -Xlinker --gc-sections -Xlinker -Map="Iot.map" -mfpu=fpv5-sp-d16 -mfloat-abi=hard --specs=nano.specs -o Iot.axf -Wl,--start-group "./app.o" "./bh1750_driver.o" "./dht11_driver.o" "./lora.o" "./main.o" "./autogen/sl_board_default_init.o" "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./autogen/sl_i2cspm_init.o" "./autogen/sl_iostream_handles.o" "./autogen/sl_iostream_init_usart_instances.o" "./gecko_sdk_4.0.1/app/common/util/app_log/app_log.o" "./gecko_sdk_4.0.1/hardware/board/src/sl_board_control_gpio.o" "./gecko_sdk_4.0.1/hardware/board/src/sl_board_init.o" "./gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/GCC/startup_bgm22.o" "./gecko_sdk_4.0.1/platform/Device/SiliconLabs/BGM22/Source/system_bgm22.o" "./gecko_sdk_4.0.1/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.0.1/platform/driver/i2cspm/src/sl_i2cspm.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_assert.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_core.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_emu.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_eusart.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_i2c.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_iadc.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_system.o" "./gecko_sdk_4.0.1/platform/emlib/src/em_usart.o" "./gecko_sdk_4.0.1/platform/service/device_init/src/sl_device_init_dcdc_s2.o" "./gecko_sdk_4.0.1/platform/service/device_init/src/sl_device_init_emu_s2.o" "./gecko_sdk_4.0.1/platform/service/device_init/src/sl_device_init_hfxo_s2.o" "./gecko_sdk_4.0.1/platform/service/device_init/src/sl_device_init_lfxo_s2.o" "./gecko_sdk_4.0.1/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream.o" "./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_retarget_stdio.o" "./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_rtt.o" "./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_stdlib_config.o" "./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_uart.o" "./gecko_sdk_4.0.1/platform/service/iostream/src/sl_iostream_usart.o" "./gecko_sdk_4.0.1/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.0.1/platform/service/system/src/sl_system_process_action.o" "./gecko_sdk_4.0.1/platform/service/udelay/src/sl_udelay.o" "./gecko_sdk_4.0.1/platform/service/udelay/src/sl_udelay_armv6m_gcc.o" "./gecko_sdk_4.0.1/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building hex file: Iot.hex'
	arm-none-eabi-objcopy -O ihex "Iot.axf" "Iot.hex"
	@echo ' '

	@echo 'Building bin file: Iot.bin'
	arm-none-eabi-objcopy -O binary "Iot.axf" "Iot.bin"
	@echo ' '

	@echo 'Building s37 file: Iot.s37'
	arm-none-eabi-objcopy -O srec "Iot.axf" "Iot.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "Iot.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) Iot.axf
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
