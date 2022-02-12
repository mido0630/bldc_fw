################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/user_source/user_main.c 

C_DEPS += \
./Core/Src/user_source/user_main.d 

OBJS += \
./Core/Src/user_source/user_main.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/user_source/%.o: ../Core/Src/user_source/%.c Core/Src/user_source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-user_source

clean-Core-2f-Src-2f-user_source:
	-$(RM) ./Core/Src/user_source/user_main.d ./Core/Src/user_source/user_main.o

.PHONY: clean-Core-2f-Src-2f-user_source

