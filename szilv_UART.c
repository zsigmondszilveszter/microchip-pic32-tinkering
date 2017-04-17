/* 
 * File:   szilv_UART.c
 * Author: szilveszter
 *
 * Created on April 16, 2017, 9:49 AM
 */


#include "szilv_UART.h"



void initUART_1(){
    //UART Init
    UARTConfigure(UART1, UART_ENABLE_PINS_TX_RX_ONLY);
    UARTSetFifoMode(UART1, UART_INTERRUPT_ON_TX_NOT_FULL | UART_INTERRUPT_ON_RX_NOT_EMPTY);
    UARTSetLineControl(UART1, UART_DATA_SIZE_8_BITS | UART_PARITY_NONE | UART_STOP_BITS_1);
    UARTSetDataRate(UART1, GetPeripheralClock(), 115200);
    UARTEnable(UART1, UART_ENABLE_FLAGS(UART_PERIPHERAL | UART_RX | UART_TX));
}

// *****************************************************************************
// void UARTTxBuffer(char *buffer, UINT32 size)
// *****************************************************************************
void SendDataBuffer(const char *buffer, UINT32 size){
    while(size){
        while(!UARTTransmitterIsReady(UART1));

        UARTSendDataByte(UART1, *buffer);

        buffer++;
        size--;
    }

    while(!UARTTransmissionHasCompleted(UART1));
}

// *****************************************************************************
// UINT32 GetDataBuffer(char *buffer, UINT32 max_size)
// *****************************************************************************
UINT32 GetDataBuffer(char *buffer, UINT32 max_size){
    UINT32  num_char;

    num_char = 0;

    while(num_char < max_size){
        UINT8 character;

        while(!UARTReceivedDataIsAvailable(UART1));

        character = UARTGetDataByte(UART1);

        if(character == '\r')
            break;

        *buffer = character;

        buffer++;
        num_char++;
    }

    return num_char;
}

UINT8 LIntToChar(UINT32 x, UINT8 * buf){
    UINT8   k,i;
    UINT32  adat;

    k = 0;
    adat = x;
    if (adat < 10)
    {
        buf[0] = (adat + 48);
        return 1;
    }
    else {
        while (adat > 0) {
            adat = adat / 10;
            k++;
        }
        i = k;
        adat = x;
       while (i>0)
       {
           i--;
           buf[i] = adat % 10 + 48;
           adat = adat / 10;
       }
    }
    buf[k] = 13;            //Carriage return
    buf[k + 1] = 10;        //New line feed
    return k+2;
}