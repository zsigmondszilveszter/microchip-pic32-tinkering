/* 
 * File:   system_config.h
 * Author: szilveszter
 *
 * Created on August 13, 2017, 12:46 AM
 */

#ifndef __SYSTEM_CONFIG_H_
#define __SYSTEM_CONFIG_H_

#include <stdio.h>
#include <string.h>

#include "system.h"

#include "tcpip_config.h"


// MRF24W I/O pins
// Szilv - the concrete wifi module is the MRF24WB0MA connected to a
// pic32MX320F128H microcontroller on a Cerebot MX3cK development board's E Connector
#define WF_CS_TRIS          (TRISGbits.TRISG9)
#define WF_CS_IO            (LATGbits.LATG9)
#define WF_SDI_TRIS         (TRISGbits.TRISG8)
#define WF_SCK_TRIS         (TRISGbits.TRISG6)
#define WF_SDO_TRIS         (TRISGbits.TRISG7)
#define WF_RESET_TRIS       (TRISBbits.TRISB5)
#define WF_RESET_IO         (LATBbits.LATB5)
#define WF_INT_TRIS         (TRISDbits.TRISD8)
#define WF_INT_IO           (PORTDbits.RD8)
#define WF_HIBERNATE_TRIS   (TRISBbits.TRISB3)
#define WF_HIBERNATE_IO     (PORTBbits.RB3)
#define MRF24W_IN_SPI2      true
#define WF_INT_EDGE         (INTCONbits.INT1EP)
#define WF_INT_IE           (IEC0bits.INT1IE)
#define WF_INT_IF           (IFS0bits.INT1IF)

#define WF_INT_IE_CLEAR     IEC0CLR
#define WF_INT_IF_CLEAR     IFS0CLR
#define WF_INT_IE_SET       IEC0SET
#define WF_INT_IF_SET       IFS0SET
#define WF_INT_BIT          0x00000080
#define WF_INT_IPCSET       IPC1SET
#define WF_INT_IPCCLR       IPC1CLR
#define WF_INT_IPC_MASK     0xFF000000
#define WF_INT_IPC_VALUE    0x0C000000

#define WF_SSPBUF           (SPI2BUF)
#define WF_SPISTAT          (SPI2STAT)
#define WF_SPISTATbits      (SPI2STATbits)
#define WF_SPICON1          (SPI2CON)
#define WF_SPICON1bits      (SPI2CONbits)
#define WF_SPI_IE_CLEAR     IEC1CLR
#define WF_SPI_IF_CLEAR     IFS1CLR
#define WF_SPI_INT_BITS     0x03800000
#define WF_SPI_BRG          (SPI2BRG)
#define WF_MAX_SPI_FREQ     (24000000ul)    // Hz

// Compiler information
//------------------------------------------------------------------------------

// Base RAM and ROM pointer types for given architecture
#define PTR_BASE        unsigned long
#define ROM_PTR_BASE    unsigned long

// Definitions that apply to all except Microchip MPLAB C Compiler for PIC18 MCUs (C18)
#define memcmppgm2ram(a,b,c)    memcmp(a,b,c)
#define strcmppgm2ram(a,b)      strcmp(a,b)
#define memcpypgm2ram(a,b,c)    memcpy(a,b,c)
#define strcpypgm2ram(a,b)      strcpy(a,b)
#define strncpypgm2ram(a,b,c)   strncpy(a,b,c)
#define strstrrampgm(a,b)       strstr(a,b)
#define strlenpgm(a)            strlen(a)
#define strchrpgm(a,b)          strchr(a,b)
#define strcatpgm2ram(a,b)      strcat(a,b)

// Compiler specific definitions
#define ROM    const

// 32-bit specific defines (PIC32)
#define far
#define FAR
#define Reset()     SoftReset()
#define ClrWdt()    (WDTCONSET = _WDTCON_WDTCLR_MASK)

//------------------------------------------------------------------------------
// End of /* Compiler information */

#endif /* __SYSTEM_CONFIG_H_ */
