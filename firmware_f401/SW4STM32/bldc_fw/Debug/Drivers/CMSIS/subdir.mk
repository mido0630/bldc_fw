################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/system_stm32f4xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

