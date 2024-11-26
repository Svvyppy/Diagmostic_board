################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/SSD_Oled/ssdoled.c 

OBJS += \
./Drivers/SSD_Oled/ssdoled.o 

C_DEPS += \
./Drivers/SSD_Oled/ssdoled.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/SSD_Oled/%.o Drivers/SSD_Oled/%.su Drivers/SSD_Oled/%.cyclo: ../Drivers/SSD_Oled/%.c Drivers/SSD_Oled/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/ARGB -I../Drivers/INA219 -I../Drivers/PWM -I../Drivers/SSD_Oled -I../Drivers/SSD_Interface -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-SSD_Oled

clean-Drivers-2f-SSD_Oled:
	-$(RM) ./Drivers/SSD_Oled/ssdoled.cyclo ./Drivers/SSD_Oled/ssdoled.d ./Drivers/SSD_Oled/ssdoled.o ./Drivers/SSD_Oled/ssdoled.su

.PHONY: clean-Drivers-2f-SSD_Oled

