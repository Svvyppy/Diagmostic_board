################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/PWM/src/PWM.c 

OBJS += \
./Core/PWM/src/PWM.o 

C_DEPS += \
./Core/PWM/src/PWM.d 


# Each subdirectory must supply rules for building sources it contributes
Core/PWM/src/%.o Core/PWM/src/%.su Core/PWM/src/%.cyclo: ../Core/PWM/src/%.c Core/PWM/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103x6 -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-PWM-2f-src

clean-Core-2f-PWM-2f-src:
	-$(RM) ./Core/PWM/src/PWM.cyclo ./Core/PWM/src/PWM.d ./Core/PWM/src/PWM.o ./Core/PWM/src/PWM.su

.PHONY: clean-Core-2f-PWM-2f-src

