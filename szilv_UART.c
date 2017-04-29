/* 
 * File:   szilv_UART.c
 * Author: szilveszter
 *
 * Created on April 16, 2017, 9:49 AM
 */


#include "szilv_UART.h"
#include <xc.h>

#define txBufferFull U1STAbits.UTXBF


void initUART_1(){
    //UART Init
//    UARTConfigure(UART1, UART_ENABLE_PINS_TX_RX_ONLY);
//    UARTSetFifoMode(UART1, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
//    UARTSetLineControl(UART1, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
//    UARTSetDataRate(UART1, GetPeripheralClock(), 115200);
//    UARTEnable(UART1, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
    
    // configure UART module 1
    U1MODEbits.ON = 1;          // Enable UART1
    U1MODEbits.IREN = 0;        // IrDA Encoder and Decoder disabled
    U1MODEbits.UEN = 0b00;      // UART1 Enable bits, U1TX and U1RX pins are enabled and used;
    U1MODEbits.ABAUD = 0;       // Baud rate measurement disabled
    U1MODEbits.BRGH = 1;        // High-Speed mode – 4x baud clock enabled
    U1MODEbits.PDSEL = 0b00;    // 8-bit data, no parity
    U1MODEbits.STSEL = 0;       // 1 Stop bit
    
    U1STAbits.UTXEN = 1;        // Transmit Enable bit
    U1STAbits.URXEN = 1;        // Receiver Enable bit
    
    // set baud rate
//    U1BRG = 64; // 9600 with 10Mhz PBCLK(Pheripheral Bus Clock) and BRGH = 0
//    U1BRG = 10; // 57600 with 10Mhz PBCLK(Pheripheral Bus Clock) and BRGH = 0
    U1BRG = 21; // 115200 with 10Mhz PBCLK(Pheripheral Bus Clock) and BRGH = 1
}

// *****************************************************************************
// void UARTTxBuffer(char *buffer, UINT32 size)
// *****************************************************************************
void SendDataBuffer(const char *buffer, int size){
    int i = 0;
    
    while(size){
        while( txBufferFull ); // wait until the buffer is become not full
        U1TXREG = buffer[i];        // push 8 bit data into transfer buffer register
        size--;
        i++;
    }
}
