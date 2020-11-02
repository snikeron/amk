
MCU_FAMILY := stm32f4xx
MCU_SRC_PATH := f411
MCU_HAL_PATH := STM32F4xx_HAL_Driver

SRCS += \
	$(STM32SDK_DIR)/startup_stm32f411xe.s \
	$(STM32SDK_DIR)/$(MCU_SRC_PATH)/system_$(MCU_FAMILY).c \
	$(STM32SDK_DIR)/$(MCU_SRC_PATH)/$(MCU_FAMILY)_hal_msp.c \
	$(STM32SDK_DIR)/$(MCU_SRC_PATH)/$(MCU_FAMILY)_it.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_tim.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_tim_ex.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_rcc.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_rcc_ex.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_flash.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_flash_ex.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_flash_ramfunc.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_gpio.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_dma.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_dma_ex.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_pwr.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_pwr_ex.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_cortex.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_exti.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_i2c.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_i2c_ex.c \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Src/$(MCU_FAMILY)_hal_spi.c \

INCS += \
	$(STM32SDK_DIR) \
	$(STM32SDK_DIR)/$(MCU_SRC_PATH) \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Inc \
	$(STM32SDK_DIR)/Drivers/$(MCU_HAL_PATH)/Inc/Legacy \
	$(STM32SDK_DIR)/Drivers/CMSIS/Device/ST/STM32F4xx/Include \
	$(STM32SDK_DIR)/Drivers/CMSIS/Include \

APP_DEFS += \
	-DUSE_HAL_DRIVER \
	-DSTM32F411xE \
    -DCFG_TUSB_MCU=OPT_MCU_STM32F4 \

SDK_DEFS += -mcpu=cortex-m4 -mthumb -mabi=aapcs -mfloat-abi=hard -mfpu=fpv4-sp-d16

LINKER_PATH		:= $(STM32SDK_DIR)
LINKER_SCRIPT	:= $(STM32SDK_DIR)/STM32F411CEUx_FLASH.ld