/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    drv_wifi_eint.c

  Summary:
    Module for Microchip TCP/IP Stack
    -Provides access to MRF24W WiFi controller
    -Reference: MRF24W Data sheet, IEEE 802.11 Standard

  Description:
    MRF24W Driver Exernal Interrupt

  ******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) <2014> released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
//DOM-IGNORE-END

/*******************************************************************************
*                                           INCLUDES
********************************************************************************/

#include "tcpip/tcpip.h"

#if defined(WF_CS_TRIS)

#include "drv_wifi_mac.h"

/* used for assertions */
#if defined(WF_DEBUG)
#define WF_MODULE_NUMBER  WF_MODULE_WF_EINT
#endif

#if defined (__XC8)
static volatile uint8_t s_InterruptSaving[3] = {0, 0, 0};
#elif defined(__XC16)
static volatile uint16_t s_InterruptSaving[6] = {0, 0, 0, 0, 0, 0};
#elif defined( __XC32 )
static volatile uint32_t s_InterruptSaving[3] = {0, 0, 0};
#else
#error Determine SPI flag mechanism
#endif

/*****************************************************************************
 * FUNCTION:WF_EintIsDisabled
 *
 * RETURNS: true if MRF24W External Interrupt is disabled, else returns false
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to determine if the MRF24W External Interrupt
 *          is disabled.
 *****************************************************************************/
bool WF_EintIsDisabled(void)
{
    return(WF_INT_IE == 0);  /* works for PIC18, PIC24, and PIC32 */
}

bool WF_EintIsEnabled(void)
{
    return(WF_INT_IE == 1);  /* works for PIC18, PIC24, and PIC32 */
}

bool WF_EintIsPending(void)
{
    return(((WF_INT_IO == 0) && (WF_INT_IF == 0)));  /* works for PIC18, PIC24, and PIC32 */
}

/*====================================================================================================================*/
/*====================================================================================================================*/
/*                                  PIC18 Interrupt Routines                                                          */
/*====================================================================================================================*/
/*====================================================================================================================*/
#if defined( __XC8 )
/*****************************************************************************
 * PIC18 INTERRUPT SERVICE ROUTINE (Called from LowISR() in main.c)
 *****************************************************************************/
void WFEintISR(void)
{
    // if EINT enabled
    if ( WF_INT_IE == 1 )
    {
        // if EINT event occurred
        if ( WF_INT_IF == 1 )
        {
            // clear EINT
            WF_INT_IF = 0;
            WF_INT_IE = 0;         // disable external interrupt

            // invoke handler
            WFEintHandler();
        }
    }
}

/*****************************************************************************
 * FUNCTION:WF_EintEnable (Specific to PIC18)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to enable the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintEnable(void)
{
    // if interrupt line is low, then we may have missed a falling edge
    // while the interrupt was disabled.
    if ( WF_INT_IO == 0 )
    {
        // if the interrupt pin is active
        // then the MRF24W has another event that needs to be serviced.
        // This means that the MRF24W will never generate another falling edge
        // required to trigger the interrupt... So, we must force an interrupt.
        // force the EINT
        WF_INT_IF = 1;
    }

    /* enable the external interrupt */
    WF_INT_IE = 1;
}

/*****************************************************************************
 * FUNCTION:WF_EintDisable (Specific to PIC18)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to disable the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintDisable(void)
{
    /* disable the external interrupt */
    WF_INT_IE = 0;
}

/*****************************************************************************
 * FUNCTION:WF_EintInit (Specific to PIC18)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to initialize the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintInit(void)
{
    /* disable the external interrupt */
    WF_INT_IE = 0;
//  WF_INT_IP = 0;

    /* configure IO pin as input and External Interrupt pin*/
    /* assume port b pullups were enabled before entry */
    WF_INT_TRIS = 1;
    WF_INT_EDGE = 0;   /* falling edge triggered */

    /* clear and enable the interrupt */
    WF_INT_IF = 0;
    WF_INT_IE = 1;
}

/*====================================================================================================================*/
/*====================================================================================================================*/
/*                                  PIC24 Interrupt Routines                                                          */
/*====================================================================================================================*/
/*====================================================================================================================*/
#elif defined( __XC16 )

/*****************************************************************************
 * PIC24 INTERRUPT SERVICE ROUTINE
 *****************************************************************************/
#if defined( MRF24W_IN_SPI2 )
void __attribute__((interrupt, auto_psv)) _INT3Interrupt(void)
#else
void __attribute__((interrupt, auto_psv)) _INT1Interrupt(void)
#endif
{
    // clear EINT
    if (WF_INT_IF && WF_INT_IE)
    {
        WF_INT_IF = 0;
        WF_INT_IE = 0;         /* disable external interrupt */
        // invoke handler
        WFEintHandler();
    }
}

/*****************************************************************************
 * FUNCTION: WF_EintEnable (Specific to PIC24)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to enable the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintEnable(void)
{
    // if interrupt line is low, then we may have missed a falling edge
    // while the interrupt was disabled.
    if ( WF_INT_IO == 0 )
    {
        // if the interrupt pin is active
        // then the MRF24W has another event that needs to be serviced.
        // This means that the MRF24W will never generate another falling edge
        // required to trigger the interrupt... So, we must force an interrupt.
        // force the EINT
        WF_INT_IF = 1;
    }

    /* enable the external interrupt */
    WF_INT_IE = 1;
}

/*****************************************************************************
 * FUNCTION: WF_EintDisable (Specific to PIC24)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to disable the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintDisable(void)
{
    /* disable the external interrupt */
    WF_INT_IE = 0;
}

/*****************************************************************************
 * FUNCTION: WF_EintInit (Specific to PIC24)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to initialize the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintInit(void)
{
    /* disable the external interrupt */
    WF_INT_IE = 0;

    /* configure IO pin as input and External Interrupt pin*/
    /* set the I/O high since we do not have pull-ups */
    WF_INT_IO   = 1;
    WF_INT_TRIS = 1;
    WF_INT_EDGE = 1;   /* falling edge triggered */

    /* clear and enable the interrupt */
    WF_INT_IF = 0;
    WF_INT_IE = 1;
}

/*====================================================================================================================*/
/*====================================================================================================================*/
/*                                  PIC32 Interrupt Routines                                                          */
/*====================================================================================================================*/
/*====================================================================================================================*/
#elif defined( __XC32 )

/*****************************************************************************
 * PIC32 INTERRUPT SERVICE ROUTINE
 *****************************************************************************/
#if defined( MRF24W_IN_SPI2 )
void __attribute((interrupt(ipl3AUTO), vector(_EXTERNAL_1_VECTOR), nomips16)) _WFInterrupt(void)
#else /* MRF24W_IN_SPI1 */
void __attribute((interrupt(ipl3AUTO), vector(_EXTERNAL_1_VECTOR), nomips16)) _WFInterrupt(void)
#endif
{
    // clear EINT
    if (WF_INT_IF && WF_INT_IE)
    {
        WF_INT_IF_CLEAR = WF_INT_BIT;
        WF_INT_IE_CLEAR = WF_INT_BIT;         /* disable external interrupt */

        /* invoke handler */
        WFEintHandler();
    }
}

/*****************************************************************************
 * FUNCTION:WF_EintEnable (Specific to PIC32)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to enable the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintEnable(void)
{
    // if interrupt line is low, then we may have missed a falling edge
    // while the interrupt was disabled.
    if ( WF_INT_IO == 0 )
    {
        // if the interrupt pin is active
        // then the MRF24W has another event that needs to be serviced.
        // This means that the MRF24W will never generate another falling edge
        // required to trigger the interrupt... So, we must force an interrupt.
        // force the EINT
        WF_INT_IF_SET = WF_INT_BIT;
    }

    /* enable the external interrupt */
    WF_INT_IE_SET = WF_INT_BIT;
}

/*****************************************************************************
 * FUNCTION:WF_EintDisable (Specific to PIC32)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to disable the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintDisable(void)
{
    /* disable the external interrupt */
    WF_INT_IE_CLEAR = WF_INT_BIT;
}

/*****************************************************************************
 * FUNCTION:WF_EintInit (Specific to PIC32)
 *
 * RETURNS: None
 *
 * PARAMS:  None
 *
 * NOTES:   Called by WiFi Driver to initialize the MRF24W External Interrupt.
 *****************************************************************************/
void WF_EintInit(void)
{
    /* disable the external interrupt */
    WF_INT_IE_CLEAR = WF_INT_BIT;

    /* configure IO pin as input and External Interrupt pin*/
    /* set the I/O high since we do not have pull-ups */
    WF_INT_IO   = 1;
    WF_INT_TRIS = 1;
    WF_INT_EDGE = 0; /* falling edge triggered */

    /* clear and enable the interrupt */
    WF_INT_IF_CLEAR = WF_INT_BIT;
    WF_INT_IPCCLR   = WF_INT_IPC_MASK;
    WF_INT_IPCSET   = WF_INT_IPC_VALUE;
    WF_INT_IE_SET   = WF_INT_BIT;
}
#endif

#if defined (__XC8)

void WF_IntStatusGetAndDisable(void)
{
    s_InterruptSaving[0] = PIE1;
	PIE1 = 0;
    s_InterruptSaving[1] = PIE2;
	PIE2 = 0;
    s_InterruptSaving[2] = PIE3;
    PIE3 = 0;
}

void WF_IntStatusRestore(void)
{
    PIE1 = s_InterruptSaving[0];
    PIE2 = s_InterruptSaving[1];
    PIE3 = s_InterruptSaving[2];
}

#elif defined(__XC16)

void WF_IntStatusGetAndDisable(void)
{
    s_InterruptSaving[0] = IEC0;
	IEC0 = 0;
    s_InterruptSaving[1] = IEC1;
	IEC1 = 0;
    s_InterruptSaving[2] = IEC2;
	IEC2 = 0;
    s_InterruptSaving[3] = IEC3;
	IEC3 = 0;
    s_InterruptSaving[4] = IEC4;
	IEC4 = 0;
    s_InterruptSaving[5] = IEC5;
    IEC5 = 0;
}

void WF_IntStatusRestore(void)
{
    IEC0 = s_InterruptSaving[0];
    IEC1 = s_InterruptSaving[1];
    IEC2 = s_InterruptSaving[2];
    IEC3 = s_InterruptSaving[3];
    IEC4 = s_InterruptSaving[4];
    IEC5 = s_InterruptSaving[5];
}

#elif defined( __XC32 )

void WF_IntStatusGetAndDisable(void)
{
    s_InterruptSaving[0] = IEC0;
	IEC0 = 0;
    s_InterruptSaving[1] = IEC1;
	IEC1 = 0;
//    s_InterruptSaving[2] = IEC2;
//    IEC2 = 0;
}

void WF_IntStatusRestore(void)
{
    IEC0 = s_InterruptSaving[0];
    IEC1 = s_InterruptSaving[1];
//    IEC2 = s_InterruptSaving[2];
}

#else
#error Determine SPI flag mechanism
#endif

#endif /* WF_CS_TRIS */
