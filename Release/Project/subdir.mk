################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project/Display.c \
../Project/main.c 

OBJS += \
./Project/Display.o \
./Project/main.o 

C_DEPS += \
./Project/Display.d \
./Project/main.d 


# Each subdirectory must supply rules for building sources it contributes
Project/%.o: ../Project/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Andes C Compiler'
	$(CROSS_COMPILE)gcc -I/cygdrive/D/Andestech/AndeSight_RDS_v324/target/HY16F3910/include -Wa,-mace=/cygdrive/D/Andestech/AndeSight_RDS_v324/target/HY16F3910/lib/libacetool.so -I"/cygdrive/D/Andestech/AndeSight_RDS_v324/target/HY16F3910" -I/cygdrive/C/Users/USER/AndeSight3/workspace/clk_test/src -I/cygdrive/C/Users/USER/AndeSight3/workspace/clk_test/Include -I"/cygdrive/D/Andestech/AndeSight_RDS_v324/peripheral_lib/16F3910_LibV0.2" -Os -mcmodel=medium -g3 -Wall -mcpu=e801 -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $(@:%.o=%.o)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


