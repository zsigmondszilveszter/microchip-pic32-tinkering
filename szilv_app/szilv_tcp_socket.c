
#include "szilv_tcp_socket.h"

bool socket_initialized = false;

uint32_t server_ip_address = SERVER_IP_BYTE1 | SERVER_IP_BYTE2 << 8ul | SERVER_IP_BYTE3 << 16ul | SERVER_IP_BYTE4 << 24ul;
static ROM uint8_t SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};
TCP_SOCKET szilv_socket;

uint8_t * buffer;
uint16_t buffer_len = 0;
uint16_t rest = 0;
uint8_t tmp_buf2[30];


bool TCPInitialized(){
    return socket_initialized;
}

bool createTcpSocket(){
    #if !defined(STACK_USE_TCP)
        return;
    #endif
    
    // open a new socket client
    szilv_socket = TCPOpen(server_ip_address, TCP_OPEN_IP_ADDRESS, serverPort, TCP_PURPOSE_GENERIC_TCP_CLIENT );
    if ( szilv_socket == INVALID_SOCKET) {
        szilv_socket = 0;
        socket_initialized = false;
        #if defined APP_USE_UART_MESSAGING
        debugMessage(socketNotCreated_message);
        #endif
        return false;
    } else {
        #if defined APP_USE_UART_MESSAGING
        debugMessage(socketCreated_message);
        #endif
        socket_initialized = true;
        return true;
    }
}

/*****************************************************************************
  Function:
    bool tcpPushMessage(uint8_t * str)

  Summary:
    This function together with the "tcpProcessing" is an upper layer for the TCP/IP layer. 

  Description:
    Dynamically allocates memory for the incoming string and stores that in 
    the RAM memory. 
  Precondition:
    None

  Parameters:
    str - A null(0) terminated string.

  Returns:
    true - if the str has successfully stored
    false - if the buffer already contains data or the memory allocation failed 

  Remarks:
 ***************************************************************************/
bool tcpPushMessage(uint8_t * str){
    uint16_t str_len = strlen(str);

    if( buffer_len ){ // the buffer already contains data
        return false;
    } else {
        buffer = (uint8_t *) malloc(str_len+1);
        if( !buffer){ // if there is not enough memory 
            #if defined APP_USE_UART_MESSAGING
            debugMessage(malloc_problem);
            #endif
            return false;
        }
        memcpy(buffer, str, str_len+1);
        buffer_len = str_len;
        return true;
    }
}

/*****************************************************************************
  Function:
    void tcpProcessing(voi)

  Summary:
    Flush the remaining buffer parts into TCP TX buffer.

  Description:
    The advantage of this function against just a pure TCP socket 
    is that this has no fixed buffer size, if the string fits into the RAM memory 
    than this slice it up and sends through the network for sure.

  Precondition:
    TCP is initialized and the socket is connected.

  Parameters:
    None

  Returns:
    None

  Remarks:
 ***************************************************************************/
void tcpProcessing(void){
    if( TCPIsConnected(szilv_socket) && !TCPWasReset(szilv_socket) ){// we are connected to the server
        
        // if the buffer contains data
        if ( buffer_len ){
            if( !TCPIsPutReady(szilv_socket) ) return; // if there is no space in the tcp tc buffer

            // try to push the remaining data to the TCP TX buffer
            rest += TCPPutArray(szilv_socket, buffer+rest, buffer_len-rest );
            
            // if the summarized sent bytes equal with the buffer length, 
            // then this buffer is successfully transferred to TCP TX buffer
            if(rest >= buffer_len ){
                TCPFlush(szilv_socket); //try to send the data from TCP TX buffer
                rest = 0;               // reset
                buffer_len = 0;         // reset
                debugMessage(buffer);
                free(buffer);           // free up the buffer memory
            }
        }
    }
}