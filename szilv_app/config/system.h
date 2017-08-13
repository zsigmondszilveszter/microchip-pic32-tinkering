/* 
 * File:   system.h
 * Author: szilveszter
 *
 * Created on August 13, 2017, 1:05 AM
 */

#ifndef SYSTEM_H
#define	SYSTEM_H

#define	GetSystemClock() 			(80000000ul)
#define	GetPeripheralClock()		(GetSystemClock()/(1 << OSCCONbits.PBDIV))
#define	GetInstructionClock()		(GetSystemClock())

// These directly influence timed events using the Tick module.  They also are used for UART and SPI baud rate generation.
#define SYS_CLK_FrequencySystemGet()  (GetSystemClock()) // Hz
#define SYS_CLK_FrequencyInstructionGet()  (GetInstructionClock()) 
#define SYS_CLK_FrequencyPeripheralGet()  (GetPeripheralClock()) 

void InitAppConfig(void);

#endif	/* SYSTEM_H */

