################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ssd_fonts/fonts.c 

OBJS += \
./Drivers/ssd_fonts/fonts.o 

C_DEPS += \
./Drivers/ssd_fonts/fonts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ssd_fonts/%.o Drivers/ssd_fonts/%.su Drivers/ssd_fonts/%.cyclo: ../Drivers/ssd_fonts/%.c Drivers/ssd_fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Drivers/ssd_fonts -I../Drivers/i2c -I../Drivers/ssd1306 -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/ARGB -I../Drivers/INA219 -I../Drivers/PWM -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-ssd_fonts

clean-Drivers-2f-ssd_fonts:
	-$(RM) ./Drivers/ssd_fonts/fonts.cyclo ./Drivers/ssd_fonts/fonts.d ./Drivers/ssd_fonts/fonts.o ./Drivers/ssd_fonts/fonts.su

.PHONY: clean-Drivers-2f-ssd_fonts

