/* Flash Split for 512K chips, no SPIFFS */
/* sketch 487KB */
/* eeprom 20KB */

MEMORY
{
  dport0_0_seg :                        org = 0x3FF00000, len = 0x10
  dram0_0_seg :                         org = 0x3FFE8000, len = 0x14000
  iram1_0_seg :                         org = 0x40100000, len = 0x8000
  irom0_0_seg :                         org = 0x40201010, len = 0x79ff0
}

PROVIDE ( _SPIFFS_start = 0x4027B000 );
PROVIDE ( _SPIFFS_end = 0x4027B000 );
PROVIDE ( _SPIFFS_page = 0 );
PROVIDE ( _SPIFFS_block = 0 );

INCLUDE "esp8266.flash.common.ld"
