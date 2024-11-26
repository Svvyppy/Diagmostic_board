################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/SSD_Interface/ssd1306_interface.c 

OBJS += \
./Drivers/SSD_Interface/ssd1306_interface.o 

C_DEPS += \
./Drivers/SSD_Interface/ssd1306_interface.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/SSD_Interface/%.o Drivers/SSD_Interface/%.su Drivers/SSD_Interface/%.cyclo: ../Drivers/SSD_Interface/%.c Drivers/SSD_Interface/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/ARGB -I../Drivers/INA219 -I../Drivers/PWM -I../Drivers/SSD_Oled -I../Drivers/SSD_Interface -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-SSD_Interface

clean-Drivers-2f-SSD_Interface:
	-$(RM) ./Drivers/SSD_Interface/ssd1306_interface.cyclo ./Drivers/SSD_Interface/ssd1306_interface.d ./Drivers/SSD_Interface/ssd1306_interface.o ./Drivers/SSD_Interface/ssd1306_interface.su

.PHONY: clean-Drivers-2f-SSD_Interface

