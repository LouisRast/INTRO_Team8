################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project_Settings/Startup_Code/startup.c 

OBJS += \
./Project_Settings/Startup_Code/startup.o 

C_DEPS += \
./Project_Settings/Startup_Code/startup.d 


# Each subdirectory must supply rules for building sources it contributes
Project_Settings/Startup_Code/%.o: ../Project_Settings/Startup_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../../TEAM_Common" -I"C:/Users/Ueli Steimen/Documents/GitHub/INTRO_HS2018_neu/Projects/Template/TEAM_Freedom/Static_Code/PDD" -I"C:/Users/Ueli Steimen/Documents/GitHub/INTRO_HS2018_neu/Projects/Template/TEAM_Freedom/Static_Code/IO_Map" -I"C:/Users/Ueli Steimen/Documents/GitHub/INTRO_HS2018_neu/Projects/Template/TEAM_Freedom/Generated_Code" -I"C:/Users/Ueli Steimen/Documents/GitHub/INTRO_HS2018_neu/Projects/Template/TEAM_Freedom/Sources" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


