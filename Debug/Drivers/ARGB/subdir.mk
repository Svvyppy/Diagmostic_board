################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ARGB/ARGB.c 

OBJS += \
./Drivers/ARGB/ARGB.o 

C_DEPS += \
./Drivers/ARGB/ARGB.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ARGB/%.o Drivers/ARGB/%.su Drivers/ARGB/%.cyclo: ../Drivers/ARGB/%.c Drivers/ARGB/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Drivers/ssd_fonts -I../Drivers/i2c -I../Drivers/ssd1306 -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/ARGB -I../Drivers/INA219 -I../Drivers/PWM -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-ARGB

clean-Drivers-2f-ARGB:
	-$(RM) ./Drivers/ARGB/ARGB.cyclo ./Drivers/ARGB/ARGB.d ./Drivers/ARGB/ARGB.o ./Drivers/ARGB/ARGB.su

.PHONY: clean-Drivers-2f-ARGB

