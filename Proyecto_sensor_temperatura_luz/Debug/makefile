################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utilities/subdir.mk
-include startup/subdir.mk
-include source/subdir.mk
-include slcd/subdir.mk
-include iot_sdk/iot_sdk_peripherals/subdir.mk
-include iot_sdk/iot_sdk_irq/subdir.mk
-include freertos/freertos_kernel/portable/MemMang/subdir.mk
-include freertos/freertos_kernel/portable/GCC/ARM_CM0/subdir.mk
-include freertos/freertos_kernel/subdir.mk
-include drivers/freertos/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include component/uart/subdir.mk
-include component/timer_manager/subdir.mk
-include component/serial_manager/subdir.mk
-include component/osa/subdir.mk
-include component/lists/subdir.mk
-include component/led/subdir.mk
-include component/gpio/subdir.mk
-include component/common_task/subdir.mk
-include component/button/subdir.mk
-include board/subdir.mk
-include accel/subdir.mk
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
all: Proyecto_sensor_temperatura_luz.axf

# Tool invocations
Proyecto_sensor_temperatura_luz.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker -Map="Proyecto_sensor_temperatura_luz.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m0plus -mthumb -T Proyecto_sensor_temperatura_luz_Debug.ld -o "Proyecto_sensor_temperatura_luz.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) Proyecto_sensor_temperatura_luz.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "Proyecto_sensor_temperatura_luz.axf"; # arm-none-eabi-objcopy -v -O binary "Proyecto_sensor_temperatura_luz.axf" "Proyecto_sensor_temperatura_luz.bin" ; # checksum -p K32L2B31xxxxA -d "Proyecto_sensor_temperatura_luz.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
