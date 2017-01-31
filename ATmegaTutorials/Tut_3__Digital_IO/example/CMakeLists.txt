CMAKE_MINIMUM_REQUIRED (VERSION 2.8)

##################
# Config Section #
##################

find_program (AVR_CC avr-gcc)
find_program (AVR_OBJCOPY avr-objcopy)
find_program (AVRDUDE avrdude)
set (PROGRAMMER       avrispmkII)
set (PORT             usb)
set (MCU              atmega16m1)

set (CMAKE_SYSTEM_NAME Generic)
set (CMAKE_SYSTEM_PROCESSOR avr)
set (CMAKE_C_COMPILER ${AVR_CC})

set (L_FUSE 0x65) # Default: 0x62
set (H_FUSE 0xD7)

#############
# Functions #
#############
project (DigitalIO C)
set (elf_file ${CMAKE_PROJECT_NAME}.elf)
set (hex_file ${CMAKE_PROJECT_NAME}.hex)
set (map_file ${CMAKE_PROJECT_NAME}.map)

add_executable (${CMAKE_PROJECT_NAME} main.c)
set (CMAKE_C_FLAGS "-mmcu=${MCU} -g -Os -Wall -Wunused -Wl,-Map=${map_file} -lm")
set_target_properties (${CMAKE_PROJECT_NAME} PROPERTIES OUTPUT_NAME ${elf_file})

add_custom_target (
    strip
    ALL avr-strip ${elf_file} 
    DEPENDS ${CMAKE_PROJECT_NAME}
    )

add_custom_target (
    hex
    ALL ${AVR_OBJCOPY} -R .eeprom -O ihex ${elf_file} ${hex_file} 
    DEPENDS strip
    )

add_custom_target (
    flash
    sudo ${AVRDUDE} -p ${MCU} -v -c ${PROGRAMMER} -P ${PORT} -U flash:w:"${CMAKE_PROJECT_NAME}.hex"
    DEPENDS hex
    COMMENT "Flashing ${CMAKE_PROJECT_NAME}.hex"
    )

