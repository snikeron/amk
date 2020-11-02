TINYUSB_DIR := $(TOP_DIR)/lib/tinyusb/src

SRCS += \
	$(TINYUSB_DIR)/tusb.c \
	$(TINYUSB_DIR)/class/hid/hid_device.c \
	$(TINYUSB_DIR)/class/vendor/vendor_device.c \
	$(TINYUSB_DIR)/common/tusb_fifo.c \
	$(TINYUSB_DIR)/device/usbd.c \
	$(TINYUSB_DIR)/device/usbd_control.c \

INCS += \
	$(TOP_DIR)/lib \
	$(TINYUSB_DIR) \

ifeq (STM32F103, $(strip $(MCU)))
SRCS += $(TINYUSB_DIR)/portable/st/stm32_fsdev/dcd_stm32_fsdev.c
endif

ifeq (STM32F411, $(strip $(MCU)))
SRCS += $(TINYUSB_DIR)/portable/st/synopsys/dcd_synopsys.c
endif

ifeq (NRF52840, $(strip $(MCU)))
SRCS += $(TINYUSB_DIR)/portable/nordic/nrf5x/dcd_nrf5x.c
endif