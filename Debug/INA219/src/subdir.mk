################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../INA219/src/INA219.c 

OBJS += \
./INA219/src/INA219.o 

C_DEPS += \
./INA219/src/INA219.d 


# Each subdirectory must supply rules for building sources it contributes
INA219/src/%.o INA219/src/%.su INA219/src/%.cyclo: ../INA219/src/%.c INA219/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"B:/adc/Diagnosstick_board/INA219/inc" -I"B:/adc/Diagnosstick_board/PWM/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-INA219-2f-src

clean-INA219-2f-src:
	-$(RM) ./INA219/src/INA219.cyclo ./INA219/src/INA219.d ./INA219/src/INA219.o ./INA219/src/INA219.su

.PHONY: clean-INA219-2f-src

