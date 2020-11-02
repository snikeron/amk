
MAIN_DIR := $(TOP_DIR)/main

SRCS += \
	$(MAIN_DIR)/main.c  \
	$(MAIN_DIR)/xprintf.c \
	$(MAIN_DIR)/custom_action.c \
	$(MAIN_DIR)/amk_keymap.c \
	$(MAIN_DIR)/usb_descriptors.c \

INCS += \
	$(MAIN_DIR) \
	$(MAIN_DIR)/rtt \
	$(MAIN_DIR)/porting \
	$(MAIN_DIR)/drivers \
	$(MAIN_DIR)/rgb \
	$(MAIN_DIR)/screen \


ifeq (yes, $(strip $(MATRIX_USE_TCA6424)))
	APP_DEFS += -DMATRIX_USE_TCA6424
	SRCS += $(MAIN_DIR)/drivers/tca6424.c
	SRCS += $(MAIN_DIR)/drivers/i2c.c
endif

ifeq (yes, $(strip $(BOOTMAGIC_ENABLE)))
	SRCS += $(MAIN_DIR)/eeprom_manager.c
endif

ifeq (yes, $(strip $(SCREEN_ENABLE)))
	LVGL_ENABLE = yes
	APP_DEFS += -DSCREEN_ENABLE
	SRCS += $(MAIN_DIR)/drivers/spi.c
	SRCS += $(MAIN_DIR)/drivers/ssd1357.c
	SRCS += $(MAIN_DIR)/screen/screen.c
endif

ifeq (yes, $(strip $(RGB_EFFECTS_ENABLE)))
	SRCS += $(MAIN_DIR)/drivers/aw9523b.c
	SRCS += $(MAIN_DIR)/drivers/ws2812.c
	SRCS += $(MAIN_DIR)/drivers/i2c.c
	SRCS += $(MAIN_DIR)/rgb/rgb_effects.c
	SRCS += $(MAIN_DIR)/rgb/rgb_driver.c
	SRCS += $(MAIN_DIR)/rgb/rgb_color.c
	APP_DEFS += -DRGB_EFFECTS_ENABLE
endif

ifneq (yes, $(strip $(CUSTOM_MATRIX)))
	SRCS += $(MAIN_DIR)/matrix_scan.c
endif

ifneq (,$(filter $(strip $(MCU)),$(NRF_MCUS)))
	include $(MAIN_DIR)/porting/nrf52.mk
endif

ifneq (,$(filter $(strip $(MCU)),$(STM32_MCUS)))
	SRCS += $(MAIN_DIR)/suspend.c
	SRCS += $(MAIN_DIR)/rtt/SEGGER_RTT.c
	SRCS += $(MAIN_DIR)/rtt/SEGGER_RTT_printf.c
	include $(MAIN_DIR)/porting/stm32.mk
endif

#always enable mousekey and extra key
MOUSEKEY_ENABLE = yes
EXTRAKEY_ENABLE = yes