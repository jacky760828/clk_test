################################################################################
# Automatically-generated file. Do not edit!
################################################################################

ifndef ANDESIGHT_ROOT
ANDESIGHT_ROOT=/cygdrive/D/Andestech/AndeSight_RDS_v324
endif

ifndef CROSS_COMPILE
CROSS_COMPILE=nds32le-elf-
endif

ifndef SECONDARY_OUTPUT_PATH
SECONDARY_OUTPUT_PATH=output
endif

$(shell mkdir -p $(SECONDARY_OUTPUT_PATH))

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Project/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
BUILD_ARTIFACT_FILE_BASE_NAME = clk_test

LINKER_OUTPUTS = clk_test.adx

GPROF_OUT += \
../gmon.sum ../gmon.out \

PWR_OUT += \
$(SECONDARY_OUTPUT_PATH)/pwr \

GCOV_OUT += \
$(foreach subdir,$(SUBDIRS),$(wildcard $(subdir)/*.gcda) $(wildcard $(subdir)/*.gcno)) \

SYMBOL_OUTPUTS += \
$(SECONDARY_OUTPUT_PATH)/symbol.txt \

READELF_OUTPUTS += \
$(SECONDARY_OUTPUT_PATH)/readelf.txt \

SIZE_OUTPUTS += \
$(SECONDARY_OUTPUT_PATH)/.PHONY.size \


# All Target
all: clk_test.adx secondary-outputs

# Tool invocations
clk_test.adx: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Andes C Linker'
	$(CROSS_COMPILE)gcc -O0 -static -L"/cygdrive/D/Andestech/AndeSight_RDS_v324/peripheral_lib/16F3910_LibV0.5" -mcmodel=medium -flto -Wa,-mace=/cygdrive/D/Andestech/AndeSight_RDS_v324/target/HY16F3910/lib/libacetool.so -g3 -mcpu=e801 -ffunction-sections -fdata-sections -fmessage-length=0 -fno-schedule-insns -fno-schedule-insns2 -fno-zero-initialized-in-bss -T"/cygdrive/D/Andestech/AndeSight_RDS_v324/peripheral_lib/16F39_src/HY16F3910.ld" -Wl,--gc-sections -mvh -o "clk_test.adx" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

$(foreach subdir,$(SUBDIRS),$(wildcard $(subdir)/*.gcda) $(wildcard $(subdir)/*.gcno)): clk_test.adx $(OBJS) $(USER_OBJS)
../gmon.sum ../gmon.out: clk_test.adx $(OBJS) $(USER_OBJS)
$(SECONDARY_OUTPUT_PATH)/pwr: clk_test.adx $(OBJS) $(USER_OBJS)

$(SECONDARY_OUTPUT_PATH)/symbol.txt: $(LINKER_OUTPUTS)
	@echo 'Invoking: NM (symbol listing)'
	$(CROSS_COMPILE)nm -n -l -C "clk_test.adx" > $(SECONDARY_OUTPUT_PATH)/symbol.txt
	@echo 'Finished building: $@'
	@echo ' '

$(SECONDARY_OUTPUT_PATH)/readelf.txt: $(LINKER_OUTPUTS)
	@echo 'Invoking: Readelf (ELF info listing)'
	$(CROSS_COMPILE)readelf -a "clk_test.adx" > $(SECONDARY_OUTPUT_PATH)/readelf.txt
	@echo 'Finished building: $@'
	@echo ' '

: $(LINKER_OUTPUTS)
	@echo 'Invoking: Objdump (disassembly)'
	$(CROSS_COMPILE)objdump -x -d -C -Mace=/cygdrive/D/Andestech/AndeSight_RDS_v324/target/HY16F3910/lib/libacetool.so "clk_test.adx" >
	@echo 'Finished building: $@'
	@echo ' '

$(SECONDARY_OUTPUT_PATH)/.PHONY.size: $(LINKER_OUTPUTS)
	@echo 'Invoking: Size (section size listing)'
	$(CROSS_COMPILE)size  "clk_test.adx" | tee $(SECONDARY_OUTPUT_PATH)/.PHONY.size
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GPROF_OUT)$(PWR_OUT)$(SIZE_OUTPUTS)$(READELF_OUTPUTS)$(EXECUTABLES)$(OBJS)$(SYMBOL_OUTPUTS)$(S_UPPER_DEPS)$(GCOV_OUT)$(C_DEPS) clk_test.adx
	-@echo ' '

post-build:
	-rm -f output/clk_test*.*;nds32le-elf-objcopy -S -O binary -j .text -j .data -j .rodata -j .jcr -j .sdata_d -j .sdata_w -j .sdata_h -j .sdata_b -j .sdata_f -j .sbss_f -j .sbss_b -j .sbss_h -j .sbss_w -j .sbss_d -j .bss -j .Eric_init -j DATA_EARE0 -j DATA_EARE1 clk_test.adx output/clk_test.bin;nds32le-elf-objcopy -I binary -O ihex output/clk_test.bin output/clk_test.hex;echo "time now :" ; date +%Y%m%d%H%M;cp output/clk_test.bin output/clk_test-`date +%Y%m%d%H%M`-`HYChcekSum output/clk_test.bin  | grep Sum |  sed 's/CheckSum=//g'`.bin;echo "Source, "clk_test-`date +%Y%m%d%H%M`-`HYChcekSum output/clk_test.bin  | grep Sum |  sed 's/CheckSum=//g'`"¡G" ;echo `HYChcekSum output/clk_test.bin`;nds32le-elf-objcopy -S -O binary -j .text -j .data -j .rodata -j .jcr -j .sdata_d -j .sdata_w -j .sdata_h -j .sdata_b -j .sdata_f -j .sbss_f -j .sbss_b -j .sbss_h -j .sbss_w -j .sbss_d -j .bss -j .Eric_init clk_test.adx output/clk_test_APP.bin;nds32le-elf-objcopy -I binary -O ihex output/clk_test_APP.bin output/clk_test_APP.hex;cp output/clk_test_APP.bin output/clk_test_APP-`date +%Y%m%d%H%M`-`HYChcekSum output/clk_test_APP.bin  | grep Sum |  sed 's/CheckSum=//g'`.bin;echo "APP, "clk_test_APP-`date +%Y%m%d%H%M`-`HYChcekSum output/clk_test_APP.bin  | grep Sum |  sed 's/CheckSum=//g'`"¡G" ;echo `HYChcekSum output/clk_test_APP.bin`;nds32le-elf-objcopy -S -O binary -j DATA_EARE0 -j DATA_EARE1 clk_test.adx output/clk_test_DATA.bin;nds32le-elf-objcopy -I binary -O ihex output/clk_test_DATA.bin output/clk_test_DATA.hex;cp output/clk_test_DATA.bin output/clk_test_DATA-`date +%Y%m%d%H%M`-`HYChcekSum output/clk_test_DATA.bin  | grep Sum |  sed 's/CheckSum=//g'`.bin;echo "DATA, "clk_test_DATA-`date +%Y%m%d%H%M`-`HYChcekSum output/clk_test_DATA.bin  | grep Sum |  sed 's/CheckSum=//g'`"¡G" ;echo `HYChcekSum output/clk_test_DATA.bin`; chmod 777 ../Debug/output/*.hex; chmod 777 ../Debug/output/*.bin; rm -f output/clk_test*.hex;rm -f output/clk_test.bin;rm -f output/clk_test_APP.bin;rm -f output/clk_test_DATA.bin;
	-@echo ' '

secondary-outputs: $(SYMBOL_OUTPUTS) $(READELF_OUTPUTS) $(SIZE_OUTPUTS)

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
