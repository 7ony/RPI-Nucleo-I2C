################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32f103xb.s 

OBJS += \
./startup/startup_stm32f103xb.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -I"C:/Users/7ony/workspace/I2C/HAL_Driver/Inc/Legacy" -I"C:/Users/7ony/workspace/I2C/Utilities/STM32F1xx_Nucleo" -I"C:/Users/7ony/workspace/I2C/inc" -I"C:/Users/7ony/workspace/I2C/CMSIS/device" -I"C:/Users/7ony/workspace/I2C/CMSIS/core" -I"C:/Users/7ony/workspace/I2C/HAL_Driver/Inc" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


