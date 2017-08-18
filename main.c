/* 
 * File:   main.c
 * Author: szilveszter
 *
 * Created on April 17, 2017, 3:07 PM
 */

#include <xc.h>
#include <sys/attribs.h>

/* Oscillator Settings00000
 */
#pragma config FNOSC        = PRIPLL    // Oscillator selection
#pragma config POSCMOD      = XT        // Primary oscillator mode
#pragma config FPLLIDIV     = DIV_2     // PLL input divider
#pragma config FPLLMUL      = MUL_20    // PLL multiplier
#pragma config FPLLODIV     = DIV_1     // PLL output divider
#pragma config FPBDIV       = DIV_8     // Peripheral bus clock divider
#pragma config FSOSCEN      = OFF       // Secondary oscillator enable
#pragma config FWDTEN       = OFF       // disable watchdog timer


/* *****************************************************************************
 * Szilveszter 
 * ****************************************************************************/
#include "constantMessages.h"
// serial communication 
#include "szilv_UART.h"
//Microchip TCP/IP stack
#include "tcpip/tcpip.h"
// tcp socket
#include "szilv_tcp_socket.h"


/* *****************************************************************************
 * Global Variables
 * ****************************************************************************/
uint16_t tcp_message_rest = 0;
#if defined APP_USE_UART_MESSAGING
uint8_t fivesec = 0;
uint32_t counter = 0;
uint8_t tmp_buf[30] = {0};
#endif



/* *****************************************************************************
 * Function Prototypes
 * ****************************************************************************/
void Init();
void debugMessage(const char * str);
void generalTasks(void);
// interrupt handlers declarations
void __ISR(_TIMER_3_VECTOR, IPL7SRS) Timer3Handler(void);


/* *****************************************************************************
 * Main
 * ****************************************************************************/
int main(int argc, char** argv) {

    Init();
    
    while(1) {
        StackTask();
        StackApplications();
        generalTasks();
    }

    return (EXIT_SUCCESS);
}

/*
 * Main init function 
 */
void Init() {

    TRISBbits.TRISB4 = 1;
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

    // set up timer3
    T3CONCLR = 0b10;                    // clock source = Internal peripheral clock
    T3CONbits.TCKPS = 0b111;            // Timer Input Clock Prescale Select bits
    PR3SET = 10000;
//    PR3SET = 19531;                     // period register, when this register is match 
                                        // with the count register an interrupt occurs
                                        // 19531 is 500ms with 10MHz peripheral bus clock and 256 pre-scaler
    IEC0bits.T3IE = 1;                  // enable interrupt for timer3
    IPC3bits.T3IP = 0b111;              // priority level is 7
    IPC3bits.T3IS = 0;                  // sub priority is 0
    T3CONbits.ON = 1;                   // turn on the timer3
    
    #if defined APP_USE_UART_MESSAGING
        // init UART module1
        initUART_1();
        debugMessage(welcome_message);
        debugMessage(uart_initialized_message);
    #endif
    
    // init TCP/IP stack
    TickInit();
    InitAppConfig();
    StackInit();
    #if defined APP_USE_UART_MESSAGING
        debugMessage(tcpip_stack_initialized_message);
    #endif
    
    // Connect the wifi
    #if defined(WF_CS_TRIS)
        WF_Connect();
        #if defined APP_USE_UART_MESSAGING
            debugMessage(connecting_to_wifi_node_message);
        #endif
    #endif
}

// Interrupt handler
void __ISR(_TIMER_3_VECTOR, IPL7SRS) Timer3Handler(void) {
    LATFINV = 1; // invert the LATF LSB(last significant bit) - it is connected to a led
    
    TMR3CLR = 0xFFFF; // clear the timer count register
    IFS0bits.T3IF = 0; // clear timer3 interrupt status flag
    
    #if defined APP_USE_UART_MESSAGING
    if( ++fivesec > 10){
        sprintf(tmp_buf, tcp_welcome_message_for_server" %d",counter);
        if( TCPInitialized() ){
            if( tcpPushMessage(tmp_buf) ){
                counter++;
            }
        }
        fivesec = 0;
    }
    #endif
}

#if defined APP_USE_UART_MESSAGING 
void debugMessage(const char * str){

    SendDataBuffer(str,strlen(str));
    
    // send new line feed
    char buf[2] = {0};
    sprintf(buf,"\n");
    SendDataBuffer(buf,strlen(buf));
}
#endif

void generalTasks(void){
    // return if the wifi module is not connected
    if( !WF_isConnected()) return;
    
    // create a new TCP socket if it is not already created
    if( !TCPInitialized()) {
        createTcpSocket();
    } else {
        tcpProcessing();
    }
}

