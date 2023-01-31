# add files to be compiled

OBJECTS += main.o

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = ..

# Boiler-plate
###############################################################################
# Project settings

PROJECT := coin

# Project settings
###############################################################################
# Objects and Paths

OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/TIC806x6.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/ZXSpec.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/adventurer12x16.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/donut7x10.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/dragon6x8.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/font3x3.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/font3x5.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/font5x7.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/fontC64.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/fontC64UIGfx.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/fontMonkey.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/karateka8x11.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/koubit7x7.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/mini4x6.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/runes6x8.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/tight4x7.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/FONTS/tiny5x7.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palAction.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palCGA.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palDB16.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palDefault.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palGameboy.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palMagma.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palMono.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palPico.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palRainbow.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PALETTES/palZXSpec.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoBacklight.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoBattery.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoButtons.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoConsole.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoCore.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoDisk.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoDisplay.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoFramebuffer.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoItoa.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoLogos.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoPalette.o
OBJECTS += PokittoLib/Pokitto/POKITTO_CORE/PokittoSound.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/HWButtons.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/HWLCD.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/HWSound.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/PokittoClock.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/PokittoHW.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/Pokitto_extport.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/SoftwareI2C.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/clock_11u6x.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/dma_11u6x.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/iap.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/timer_11u6x.o
OBJECTS += PokittoLib/Pokitto/POKITTO_HW/asm/mode2.o
#OBJECTS += PokittoLib/Pokitto/POKITTO_LIBS/ImageFormat/BmpImage.o
OBJECTS += PokittoLib/Pokitto/POKITTO_LIBS/Synth/Synth.o
OBJECTS += PokittoLib/Pokitto/POKITTO_LIBS/Synth/Synth_envfuncs.o
OBJECTS += PokittoLib/Pokitto/POKITTO_LIBS/Synth/Synth_helpers.o
OBJECTS += PokittoLib/Pokitto/POKITTO_LIBS/Synth/Synth_mixfuncs.o
OBJECTS += PokittoLib/Pokitto/POKITTO_LIBS/Synth/Synth_oscfuncs.o
OBJECTS += PokittoLib/Pokitto/POKITTO_LIBS/Synth/Synth_songfuncs.o
OBJECTS += PokittoLib/Pokitto/POKITTO_LIBS/Synth/Synth_wavefuncs.o
OBJECTS += PokittoLib/Pokitto/POKITTO_XTERNALS/Arduino/delay.o
OBJECTS += PokittoLib/Pokitto/libpff/mmc.o
OBJECTS += PokittoLib/Pokitto/libpff/pff.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/BusIn.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/BusInOut.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/BusOut.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/CAN.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/CallChain.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/Ethernet.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/FileBase.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/FileLike.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/FilePath.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/FileSystemLike.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/I2C.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/I2CSlave.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/InterruptIn.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/InterruptManager.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/LocalFileSystem.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/RawSerial.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/SPI.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/SPISlave.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/Serial.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/SerialBase.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/Stream.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/Ticker.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/Timeout.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/Timer.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/TimerEvent.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/assert.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/board.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/error.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/gpio.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/lp_ticker_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/mbed_interface.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/pinmap_common.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/retarget.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/rtc_time.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/semihost_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/ticker_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/us_ticker_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/common/wait_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X/TOOLCHAIN_GCC_ARM/TARGET_LPC11U68/startup_LPC11U68.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X/cmsis_nvic.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X/system_LPC11U6x.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/analogin_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/gpio_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/gpio_irq_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/i2c_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/pinmap.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/pwmout_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/rtc_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/serial_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/sleep.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/spi_api.o
OBJECTS += PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X/us_ticker.o

INCLUDE_PATHS += -I../:
INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I../PokittoLib/Pokitto
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_CORE
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_CORE/FONTS
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_CORE/PALETTES
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_HW
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_LIBS
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_LIBS/ImageFormat
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_LIBS/Synth
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_LIBS/LibAudio
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_LIBS/File
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_LIBS/LibLog
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_LIBS/LibSchedule
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_LIBS/MemOps
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_XTERNALS
INCLUDE_PATHS += -I../PokittoLib/Pokitto/POKITTO_XTERNALS/Arduino
INCLUDE_PATHS += -I../PokittoLib/Pokitto/libpff
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/api
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/common
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/hal
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X/TOOLCHAIN_GCC_ARM
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X/TOOLCHAIN_GCC_ARM/TARGET_LPC11U68
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TOOLCHAIN_GCC
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/hal
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP
INCLUDE_PATHS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X

LIBRARY_PATHS :=
LIBRARIES :=
LINKER_SCRIPT ?= ../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X/TOOLCHAIN_GCC_ARM/TARGET_LPC11U68/LPC11U68.ld

# Objects and Paths
###############################################################################
# Tools and Flags

AS      = 'arm-none-eabi-gcc' '-x' 'assembler-with-cpp' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O3' '-g1' '-DMBED_RTOS_SINGLE_THREAD' '-mcpu=cortex-m0plus' '-mthumb'
CC      = 'arm-none-eabi-gcc' '-std=gnu99' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O3' '-g1' '-DMBED_RTOS_SINGLE_THREAD' '-mcpu=cortex-m0plus' '-mthumb'
CPP     = 'arm-none-eabi-g++' '-std=c++17' '-fno-rtti' '-Wvla' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-O3' '-g1' '-DMBED_RTOS_SINGLE_THREAD' '-mcpu=cortex-m0plus' '-mthumb'
LD      = 'arm-none-eabi-gcc'
ELF2BIN = 'arm-none-eabi-objcopy'
PREPROC = 'arm-none-eabi-cpp' '-E' '-P' '-Wl,--gc-sections' '-Wl,--wrap,main' '-Wl,--wrap,_malloc_r' '-Wl,--wrap,_free_r' '-Wl,--wrap,_realloc_r' '-Wl,--wrap,_memalign_r' '-Wl,--wrap,_calloc_r' '-Wl,--wrap,exit' '-Wl,--wrap,atexit' '-Wl,-n' '--specs=nano.specs' '-mcpu=cortex-m0plus' '-mthumb'

C_FLAGS += -std=gnu99
C_FLAGS += -O3
C_FLAGS += -DTARGET_LPC11U68
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DTARGET_NXP
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DTOOLCHAIN_object
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DTARGET_M0P
C_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DTARGET_LPCTarget
C_FLAGS += -DTARGET_CORTEX
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -D__CORTEX_M0PLUS
C_FLAGS += -DTARGET_FF_ARDUINO
C_FLAGS += -DTARGET_RELEASE
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1526394586.66
C_FLAGS += -DARM_MATH_CM0PLUS
C_FLAGS += -DTARGET_LPC11U6X
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DTARGET_LIKE_CORTEX_M0
C_FLAGS += -include
C_FLAGS += mbed_config.h

CXX_FLAGS += -std=c++17
CXX_FLAGS += -O3
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -DTARGET_LPC11U68
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DTARGET_NXP
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DTOOLCHAIN_object
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DTARGET_M0P
CXX_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DTARGET_LPCTarget
CXX_FLAGS += -DTARGET_CORTEX
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -D__CORTEX_M0PLUS
CXX_FLAGS += -DTARGET_FF_ARDUINO
CXX_FLAGS += -DTARGET_RELEASE
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1526394586.66
CXX_FLAGS += -DARM_MATH_CM0PLUS
CXX_FLAGS += -DTARGET_LPC11U6X
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M0
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -D__CORTEX_M0PLUS
ASM_FLAGS += -DARM_MATH_CM0PLUS
ASM_FLAGS += -I../.
ASM_FLAGS += -I../PokittoLib/Pokitto
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_CORE
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_CORE/FONTS
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_CORE/PALETTES
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_HW
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_LIBS
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_LIBS/ImageFormat
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_LIBS/Synth
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_XTERNALS
ASM_FLAGS += -I../PokittoLib/Pokitto/POKITTO_XTERNALS/Arduino
ASM_FLAGS += -I../PokittoLib/Pokitto/libpff
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/api
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/common
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/hal
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X/TOOLCHAIN_GCC_ARM
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TARGET_NXP/TARGET_LPC11U6X/TOOLCHAIN_GCC_ARM/TARGET_LPC11U68
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/cmsis/TOOLCHAIN_GCC
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/hal
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP
ASM_FLAGS += -I../PokittoLib/Pokitto/mbed-pokitto/targets/hal/TARGET_NXP/TARGET_LPC11U6X

LD_FLAGS :=-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_memalign_r -Wl,-n --specs=nano.specs -mcpu=cortex-m0plus -mthumb
LD_SYS_LIBS :=-Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys  -Wl,--end-group

# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size

all: firmware.bin $(PROJECT).hex size

.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"

	@$(AS) -c $(ASM_FLAGS) -o $@ $<

.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"

	@$(AS) -c $(ASM_FLAGS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<

$(PROJECT).link_script.ld: $(LINKER_SCRIPT)
	@$(PREPROC) $< -o $@

$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(PROJECT).link_script.ld
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) -T $(filter-out %.o, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)

firmware.bin: $(PROJECT).elf
	$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ ====="

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) -O ihex $< $@

# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
