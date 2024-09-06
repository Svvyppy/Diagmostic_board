################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/INA219/src/INA219.c 

OBJS += \
./Core/INA219/src/INA219.o 

C_DEPS += \
./Core/INA219/src/INA219.d 


# Each subdirectory must supply rules for building sources it contributes
Core/INA219/src/%.o Core/INA219/src/%.su Core/INA219/src/%.cyclo: ../Core/INA219/src/%.c Core/INA219/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103x6 -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-INA219-2f-src

clean-Core-2f-INA219-2f-src:
	-$(RM) ./Core/INA219/src/INA219.cyclo ./Core/INA219/src/INA219.d ./Core/INA219/src/INA219.o ./Core/INA219/src/INA219.su

.PHONY: clean-Core-2f-INA219-2f-src

