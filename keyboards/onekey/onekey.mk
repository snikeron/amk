
SRCS += $(wildcard $(KEYBOARD_DIR)/*.c)

MCU = STM32L072 

#MCU = STM32F103
#MCU = STM32F405
#MCU = STM32F411 
#MCU = STM32F722
#MCU = STM32L432
#MCU = ATSAMD21
#MCU = NUC126 
TINYUSB_ENABLE = yes
TINYUSB_USE_HAL = yes
#SCREEN_ENABLE = yes
#RGB_EFFECTS_ENABLE = ws2812
