/* 
 * File:   szilv_UART.h
 * Author: szilveszter
 *
 * Created on April 17, 2017, 2:33 PM
 */

#ifndef SZILV_UART_H
#define	SZILV_UART_H

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* SZILV_UART_H */



#include <peripheral/uart.h>

#define	GetSystemClock() 			(80000000ul)
#define	GetPeripheralClock()		(GetSystemClock()/(1 << OSCCONbits.PBDIV))
#define	GetInstructionClock()		(GetSystemClock())

void initUART_1();
void SendDataBuffer(const char *buffer, UINT32 size);
UINT32 GetDataBuffer(char *buffer, UINT32 max_size);
UINT8 LIntToChar(UINT32 x, UINT8 * buf);
