/**
 * eeprom_manager.h
 */

#pragma once

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#include "eeconfig.h"

#define EECONFIG_KEYBOARD           (uint32_t*)16
#define EECONFIG_KEYMAP_MAGIC       (uint32_t*)20

uint32_t eeconfig_read_kb(void);
void eeconfig_write_kb(uint32_t data);
void eeconfig_update_kb(uint32_t data);


// wrapper functions
uint8_t eeprom_read_byte(const uint8_t *Address);
void eeprom_write_byte(uint8_t *Address, uint8_t Value);
void eeprom_update_byte(uint8_t *Address, uint8_t Value);

uint16_t eeprom_read_word(const uint16_t *Address);
void eeprom_write_word(uint16_t *Address, uint16_t Value);
void eeprom_update_word(uint16_t *Address, uint16_t Value);

uint32_t eeprom_read_dword(const uint32_t *Address);
void eeprom_write_dword(uint32_t *Address, uint32_t Value);
void eeprom_update_dword(uint32_t *Address, uint32_t Value);

void eeprom_read_block(void *buf, const void *addr, size_t len);
void eeprom_write_block(const void *buf, void *addr, size_t len);
void eeprom_update_block(const void *buf, void *addr, size_t len);

bool ee_keymap_is_valid(void);
void ee_keymap_set_valid(bool valid);
void ee_keymap_write(uint8_t layer, const void* keymaps, size_t size);
void ee_keymap_read(uint8_t layer, void* keymaps, size_t size);