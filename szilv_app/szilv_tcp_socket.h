/* 
 * File:   szilv_tcp_socket.h
 * Author: szilveszter
 *
 * Created on August 15, 2017, 11:01 PM
 */

#ifndef SZILV_TCP_SOCKET_H
#define	SZILV_TCP_SOCKET_H

#include "tcpip/tcpip.h"

#define SERVER_IP_BYTE1     192ul
#define SERVER_IP_BYTE2     168ul
#define SERVER_IP_BYTE3     0ul
#define SERVER_IP_BYTE4     107ul

#define serverPort 1988
#define socketNotCreated_message "socket NOT created, invalid_socket"
#define socketCreated_message "Socket Created."

bool socket_initialized;

bool TCPInitialized(void);
bool createTcpSocket(void);
bool tcpPushMessage(uint8_t * str);
void tcpProcessing(void);

#endif	/* SZILV_TCP_SOCKET_H */

