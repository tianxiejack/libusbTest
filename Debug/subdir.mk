################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Test.cpp \
../libusb.cpp 

OBJS += \
./Test.o \
./libusb.o 

CPP_DEPS += \
./Test.d \
./libusb.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I/usr/local/include/libusb-1.0 -I/usr/include -I/usr/include/opencv -I/usr/include/opencv2 -I../OSA_CAP/inc -G -g -O0 -ccbin aarch64-linux-gnu-g++ -gencode arch=compute_20,code=sm_20 -gencode arch=compute_50,code=sm_50 -m64 -odir "." -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I/usr/local/include/libusb-1.0 -I/usr/include -I/usr/include/opencv -I/usr/include/opencv2 -I../OSA_CAP/inc -G -g -O0 --compile -m64 -ccbin aarch64-linux-gnu-g++  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


