################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/INA219/INA219.c 

OBJS += \
./Drivers/INA219/INA219.o 

C_DEPS += \
./Drivers/INA219/INA219.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/INA219/%.o Drivers/INA219/%.su Drivers/INA219/%.cyclo: ../Drivers/INA219/%.c Drivers/INA219/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Drivers/ssd_fonts -I../Drivers/i2c -I../Drivers/ssd1306 -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/ARGB -I../Drivers/INA219 -I../Drivers/PWM -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-INA219

clean-Drivers-2f-INA219:
	-$(RM) ./Drivers/INA219/INA219.cyclo ./Drivers/INA219/INA219.d ./Drivers/INA219/INA219.o ./Drivers/INA219/INA219.su

.PHONY: clean-Drivers-2f-INA219

