
set(MCU_FAMILY stm32)
set(MCU_TYPE stm32f722)
set(LINKER_PATH ${CMAKE_CURRENT_LIST_DIR} CACHE STRING INTERNAL)

set(TINYUSB_ENABLE yes)
set(TINYUSB_USE_HAL yes)
set(SCREEN_ENABLE yes)
set(MSC_ENABLE yes)
set(EECONFIG_FLASH yes)
set(DATETIME_ENABLE yes)
set(DYNAMIC_CONFIGURATION yes)

add_executable(${KEYBOARD} ${KEYBOARD_DIR}/m65_keymap.c ${KEYBOARD_DIR}/m65.c)
target_include_directories(${KEYBOARD} PUBLIC ${CMAKE_CURRENT_LIST_DIR})
