################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ARGB/srs/ARGB.c 

OBJS += \
./Drivers/ARGB/srs/ARGB.o 

C_DEPS += \
./Drivers/ARGB/srs/ARGB.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ARGB/srs/%.o Drivers/ARGB/srs/%.su Drivers/ARGB/srs/%.cyclo: ../Drivers/ARGB/srs/%.c Drivers/ARGB/srs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/ARGB -I../Drivers/INA219 -I../Drivers/PWM -I../Drivers/SSD_Oled -I../Drivers/SSD_Interface -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-ARGB-2f-srs

clean-Drivers-2f-ARGB-2f-srs:
	-$(RM) ./Drivers/ARGB/srs/ARGB.cyclo ./Drivers/ARGB/srs/ARGB.d ./Drivers/ARGB/srs/ARGB.o ./Drivers/ARGB/srs/ARGB.su

.PHONY: clean-Drivers-2f-ARGB-2f-srs

