################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PWM/src/PWM.c 

OBJS += \
./PWM/src/PWM.o 

C_DEPS += \
./PWM/src/PWM.d 


# Each subdirectory must supply rules for building sources it contributes
PWM/src/%.o PWM/src/%.su PWM/src/%.cyclo: ../PWM/src/%.c PWM/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/diagnostic_board/Diagmostic_board/INA219/inc" -I"C:/diagnostic_board/Diagmostic_board/PWM/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-PWM-2f-src

clean-PWM-2f-src:
	-$(RM) ./PWM/src/PWM.cyclo ./PWM/src/PWM.d ./PWM/src/PWM.o ./PWM/src/PWM.su

.PHONY: clean-PWM-2f-src

