
ONEKEY_DIR := $(TOP_DIR)/keyboards/onekey

SRCS += \
	$(ONEKEY_DIR)/onekey.c \
	$(ONEKEY_DIR)/onekey_keymap.c \

INCS += \
	$(ONEKEY_DIR) \

#MCU = STM32F103
#MCU = STM32F405
MCU = STM32F411 
#MCU = STM32F722
#MCU = STM32L433
BOOTMAGIC_ENABLE = yes
#SCREEN_ENABLE = yes
#RGB_EFFECTS_ENABLE = yes