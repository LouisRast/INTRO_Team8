################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Generated_Code/AD1.c \
../Generated_Code/AS1.c \
../Generated_Code/ASerialLdd2.c \
../Generated_Code/AdcLdd1.c \
../Generated_Code/BitIoLdd1.c \
../Generated_Code/BitIoLdd2.c \
../Generated_Code/BitIoLdd8.c \
../Generated_Code/BitIoLdd9.c \
../Generated_Code/Cpu.c \
../Generated_Code/ExtIntLdd1.c \
../Generated_Code/ExtIntLdd2.c \
../Generated_Code/ExtIntLdd3.c \
../Generated_Code/ExtIntLdd4.c \
../Generated_Code/ExtIntLdd5.c \
../Generated_Code/IFsh1.c \
../Generated_Code/IntFlashLdd1.c \
../Generated_Code/LEDPin1.c \
../Generated_Code/LEDPin2.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/SW1.c \
../Generated_Code/SW2.c \
../Generated_Code/SW3.c \
../Generated_Code/SW4.c \
../Generated_Code/SW5.c \
../Generated_Code/SW6.c \
../Generated_Code/SW7.c \
../Generated_Code/Vectors.c 

OBJS += \
./Generated_Code/AD1.o \
./Generated_Code/AS1.o \
./Generated_Code/ASerialLdd2.o \
./Generated_Code/AdcLdd1.o \
./Generated_Code/BitIoLdd1.o \
./Generated_Code/BitIoLdd2.o \
./Generated_Code/BitIoLdd8.o \
./Generated_Code/BitIoLdd9.o \
./Generated_Code/Cpu.o \
./Generated_Code/ExtIntLdd1.o \
./Generated_Code/ExtIntLdd2.o \
./Generated_Code/ExtIntLdd3.o \
./Generated_Code/ExtIntLdd4.o \
./Generated_Code/ExtIntLdd5.o \
./Generated_Code/IFsh1.o \
./Generated_Code/IntFlashLdd1.o \
./Generated_Code/LEDPin1.o \
./Generated_Code/LEDPin2.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/SW1.o \
./Generated_Code/SW2.o \
./Generated_Code/SW3.o \
./Generated_Code/SW4.o \
./Generated_Code/SW5.o \
./Generated_Code/SW6.o \
./Generated_Code/SW7.o \
./Generated_Code/Vectors.o 

C_DEPS += \
./Generated_Code/AD1.d \
./Generated_Code/AS1.d \
./Generated_Code/ASerialLdd2.d \
./Generated_Code/AdcLdd1.d \
./Generated_Code/BitIoLdd1.d \
./Generated_Code/BitIoLdd2.d \
./Generated_Code/BitIoLdd8.d \
./Generated_Code/BitIoLdd9.d \
./Generated_Code/Cpu.d \
./Generated_Code/ExtIntLdd1.d \
./Generated_Code/ExtIntLdd2.d \
./Generated_Code/ExtIntLdd3.d \
./Generated_Code/ExtIntLdd4.d \
./Generated_Code/ExtIntLdd5.d \
./Generated_Code/IFsh1.d \
./Generated_Code/IntFlashLdd1.d \
./Generated_Code/LEDPin1.d \
./Generated_Code/LEDPin2.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/SW1.d \
./Generated_Code/SW2.d \
./Generated_Code/SW3.d \
./Generated_Code/SW4.d \
./Generated_Code/SW5.d \
./Generated_Code/SW6.d \
./Generated_Code/SW7.d \
./Generated_Code/Vectors.d 


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/%.o: ../Generated_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"../Sources" -I"../../TEAM_Common" -I"C:/Users/Ueli Steimen/Documents/GitHub/INTRO_HS2018_neu/Projects/Template/TEAM_Freedom/Static_Code/PDD" -I"C:/Users/Ueli Steimen/Documents/GitHub/INTRO_HS2018_neu/Projects/Template/TEAM_Freedom/Static_Code/IO_Map" -I"C:/Users/Ueli Steimen/Documents/GitHub/INTRO_HS2018_neu/Projects/Template/TEAM_Freedom/Generated_Code" -I"C:/Users/Ueli Steimen/Documents/GitHub/INTRO_HS2018_neu/Projects/Template/TEAM_Freedom/Sources" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


