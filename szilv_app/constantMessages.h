/* 
 * File:   constantMessages.h
 * Author: szilveszter
 *
 * Created on August 17, 2017, 11:18 AM
 */

#ifndef CONSTANTMESSAGES_H
#define	CONSTANTMESSAGES_H

// Comment this out if you want to debug via UART
#define APP_USE_UART_MESSAGING

/* *****************************************************************************
 * Const
 * ****************************************************************************/
#if defined APP_USE_UART_MESSAGING
    #define welcome_message                 "Welcome to Szilveszter's development board"
    #define uart_initialized_message        "UART initialized"
    #define tcpip_stack_initialized_message "TCP stack initialized"
    #define connecting_to_wifi_node_message "Connecting to WiFi"
    #define connecting_to_server_message    "Connecting to the server"
    #define tcp_welcome_message_for_server  "Hello"
    #define exception_message               "An Exception occured"
    #define malloc_problem                  "Malloc cannot allocate memory"
    #define socketNotCreated_message        "socket NOT created, invalid_socket"
    #define socketCreated_message           "Socket Created."
#endif

#endif	/* CONSTANTMESSAGES_H */

