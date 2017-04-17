/* 
 * File:   main.c
 * Author: szilveszter
 *
 * Created on April 17, 2017, 3:07 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <xc.h>
#include <sys/attribs.h>
#include "szilv_UART.h"

/* Oscillator Settings00000
 */
#pragma config FNOSC        = PRIPLL    // Oscillator selection
#pragma config POSCMOD      = XT        // Primary oscillator mode
#pragma config FPLLIDIV     = DIV_2     // PLL input divider
#pragma config FPLLMUL      = MUL_20    // PLL multiplier
#pragma config FPLLODIV     = DIV_1     // PLL output divider
#pragma config FPBDIV       = DIV_2     // Peripheral bus clock divider
#pragma config FSOSCEN      = OFF       // Secondary oscillator enable

// function declarations
void Init();

// interrupt handlers declarations
void __ISR(_TIMER_1_VECTOR, IPL7SRS) Timer1Handler(void);

/*
 * 
 */
int main(int argc, char** argv) {

    Init();

    return (EXIT_SUCCESS);
}

/*
 * 
 */
void Init() {

    //Port Init
    TRISFbits.TRISF0 = 0;       //LED0 as output
    //    TRISFbits.TRISF1 = 0;                       //LED1 as output
    //    TRISEbits.TRISE3 = 0;                       //portE.3 as output

    // prepare MCU registers for interrupt
    _CP0_BIS_STATUS (0b1);              // system wide interrupt enable
    _CP0_BIC_STATUS (0x400000);         // Control bit. Controls the location of exception vectors.
    _CP0_SET_INTCTL (0x020) ;           // spacing between vectors = 32
    _CP0_BIS_CAUSE (0x00800000);        // Set IV in CAUSE
    
    // set up interrupt controller
    INTCONbits.MVEC = 1;                // multivector mode
    INTCONbits.SS0 = 0;                 // Single vector is not presented with a shadow register set
    INTCONbits.TPC = 0b000;             // Disables proximity timer

    // set up timer1
    T1CONbits.TCS = 0;                  // clock source = Internal peripheral clock
    T1CONbits.TCKPS = 0b11;             // Timer Input Clock Prescale Select bits
    PR1SET = 39062;                     // period register, when this register is match 
                                        // with the count register an interrupt occurs
    IEC0bits.T1IE = 1;                  // enable interrupt for timer1
    IPC1bits.T1IP = 0b111;              // priority level is 7
    IPC1bits.T1IS = 0;                  // sub priority is 0
    T1CONbits.ON = 1;                   // turn on the timer1
    
    // init UART module1
    initUART_1();
}

void __ISR(_TIMER_1_VECTOR, IPL7SRS) Timer1Handler(void) {
    LATFINV = 1; // invert the led bit status
    TMR1CLR = 0xFFFF; // clear the timer count register

    IFS0bits.T1IF = 0; // clear timer1 interrupt status flag
    
    SendDataBuffer("Hello World\n",12);
}

