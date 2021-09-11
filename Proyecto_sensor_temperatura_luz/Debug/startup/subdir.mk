################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../startup/startup_k32l2b31a.c 

OBJS += \
./startup/startup_k32l2b31a.o 

C_DEPS += \
./startup/startup_k32l2b31a.d 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_K32L2B31VLH0A -DCPU_K32L2B31VLH0A_cm0plus -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DPRINTF_FLOAT_ENABLE=1 -DSDK_DEBUGCONSOLE_UART -DSDK_OS_FREE_RTOS -DSERIAL_PORT_TYPE_UART=1 -DSLCD_PANEL_LCD_S401M16KR_H -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\board" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\source" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\freertos\template\ARM_CM0" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\freertos\freertos_kernel\include" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\freertos\freertos_kernel\portable\GCC\ARM_CM0" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\drivers" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\drivers\freertos" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\serial_manager" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\uart" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\utilities" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\accel" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\slcd" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\gpio" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\timer" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\lists" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\button" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\timer_manager" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\common_task" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\osa" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\component\led" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\CMSIS" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\device" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\iot_sdk" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\iot_sdk\iot_sdk_irq" -I"C:\nxp\Diplomado-IoT\Repositorios\DiplomadoIot-Ana\Proyecto_sensor_temperatura_luz\iot_sdk\iot_sdk_peripherals" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


