################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/adc.c \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/dma.c \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/gpio.c \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/i2c.c \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/main.c \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/stm32f4xx_hal_msp.c \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/stm32f4xx_it.c \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/tim.c \
C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/usart.c 

OBJS += \
./Application/User/Core/adc.o \
./Application/User/Core/dma.o \
./Application/User/Core/gpio.o \
./Application/User/Core/i2c.o \
./Application/User/Core/main.o \
./Application/User/Core/stm32f4xx_hal_msp.o \
./Application/User/Core/stm32f4xx_it.o \
./Application/User/Core/tim.o \
./Application/User/Core/usart.o 

C_DEPS += \
./Application/User/Core/adc.d \
./Application/User/Core/dma.d \
./Application/User/Core/gpio.d \
./Application/User/Core/i2c.d \
./Application/User/Core/main.d \
./Application/User/Core/stm32f4xx_hal_msp.d \
./Application/User/Core/stm32f4xx_it.d \
./Application/User/Core/tim.d \
./Application/User/Core/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Core/adc.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/Core/dma.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/Core/gpio.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/Core/i2c.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/Core/main.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/Core/stm32f4xx_hal_msp.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/stm32f4xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/Core/stm32f4xx_it.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/stm32f4xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/Core/tim.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/Core/usart.o: C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Src/usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F401xE -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Core/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/green/drive/make/prog/stm_workspace/bldc_fw/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


