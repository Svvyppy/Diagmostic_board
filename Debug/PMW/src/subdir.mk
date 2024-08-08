################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PMW/src/PMW.c 

OBJS += \
./PMW/src/PMW.o 

C_DEPS += \
./PMW/src/PMW.d 


# Each subdirectory must supply rules for building sources it contributes
PMW/src/%.o PMW/src/%.su PMW/src/%.cyclo: ../PMW/src/%.c PMW/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"B:/adc/Diagnosstick_board/PMW/inc" -I"B:/adc/Diagnosstick_board/INA219/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-PMW-2f-src

clean-PMW-2f-src:
	-$(RM) ./PMW/src/PMW.cyclo ./PMW/src/PMW.d ./PMW/src/PMW.o ./PMW/src/PMW.su

.PHONY: clean-PMW-2f-src

