################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ssd_tests/ssd1306_tests.c 

OBJS += \
./Drivers/ssd_tests/ssd1306_tests.o 

C_DEPS += \
./Drivers/ssd_tests/ssd1306_tests.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ssd_tests/%.o Drivers/ssd_tests/%.su Drivers/ssd_tests/%.cyclo: ../Drivers/ssd_tests/%.c Drivers/ssd_tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Drivers/ssd_fonts -I../Core/ssd1306 -I../Drivers/ssd1306 -I../Drivers/ssd_tests -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/ARGB -I../Drivers/INA219 -I../Drivers/PWM -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-ssd_tests

clean-Drivers-2f-ssd_tests:
	-$(RM) ./Drivers/ssd_tests/ssd1306_tests.cyclo ./Drivers/ssd_tests/ssd1306_tests.d ./Drivers/ssd_tests/ssd1306_tests.o ./Drivers/ssd_tests/ssd1306_tests.su

.PHONY: clean-Drivers-2f-ssd_tests

