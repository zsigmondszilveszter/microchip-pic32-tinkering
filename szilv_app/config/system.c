/*******************************************************************************
  Company:
    Microchip Technology Inc.

  File Name:
    system.c

  Summary:
    System level initializations for the specific Microchip Development Board used.

  Description:
    System Specific Initializations
 *******************************************************************************/

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
// DOM-IGNORE-END

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tcpip/tcpip.h"

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)  \
  (byte & 0x80 ? '1' : '0'), \
  (byte & 0x40 ? '1' : '0'), \
  (byte & 0x20 ? '1' : '0'), \
  (byte & 0x10 ? '1' : '0'), \
  (byte & 0x08 ? '1' : '0'), \
  (byte & 0x04 ? '1' : '0'), \
  (byte & 0x02 ? '1' : '0'), \
  (byte & 0x01 ? '1' : '0') 

// Used for Wi-Fi assertions
#define WF_MODULE_NUMBER WF_MODULE_MAIN_DEMO
// Declare AppConfig structure and some other supporting stack variables
APP_CONFIG AppConfig;
static unsigned short wOriginalAppConfigChecksum; // Checksum of the ROM defaults for AppConfig

#if defined(WF_CS_TRIS)
    void WF_Connect(void);
    #if !defined(MRF24WG)
        extern bool g_ModuleVer1209orLater;
    #endif

    #if WF_HOST_DERIVE_KEY_FROM_PASSPHRASE == WF_ENABLED
    tPassphraseReady g_WpsPassphrase;
    #endif /* #if WF_HOST_DERIVE_KEY_FROM_PASSPHRASE == WF_ENABLED */
#endif

// PIC24 and PIC32 Exception Handlers
// If your code gets here, you either tried to read or write
// a NULL pointer, or your application overflowed the stack
// by having too many local variables or parameters declared.
#if defined(__XC16)
void _ISR __attribute__((__no_auto_psv__)) _AddressError(void)
{
    Nop();
    Nop();
}
void _ISR __attribute__((__no_auto_psv__)) _StackError(void)
{
    Nop();
    Nop();
}
#elif defined(__XC32)
void _general_exception_handler(unsigned cause, unsigned status)
{
    Nop();
    Nop();
    debugMessage("exception");
}
#endif

#if defined(WF_CS_TRIS)
// Global variables
uint8_t ConnectionProfileID;
#endif

void printBinary(const char * str,uint8_t * c , uint8_t size){
    char i;
    char buf[64]={0};
    strcat(buf, str);
    char t[8];
    for(i=0; i<size; i++){
        sprintf(t," "BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(c[i]));
        strcat(buf, t);
    }
    debugMessage(buf);
}
void printHex(const char * str, uint8_t * c , uint8_t size){
    char i;
    char buf[64]={0};
    strcat(buf, str);
    char t[8];
    if(strlen(c) < size){
        debugMessage("Handled exception");
        return;
    }
    for(i=0; i<size; i++){
        sprintf(t," %02x", c[i]);
        strcat(buf, t);
    }
    debugMessage(buf);
}

static ROM uint8_t SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};
void InitAppConfig(void) {
    #if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
        unsigned char vNeedToSaveDefaults = 0;
    #endif

    while (1) {
        // Start out zeroing all AppConfig bytes to ensure all fields are
        // deterministic for checksum generation
        memset((void *) &AppConfig, 0x00, sizeof (AppConfig));

        AppConfig.Flags.bIsDHCPEnabled = true;
        AppConfig.Flags.bInConfigMode = true;
        memcpypgm2ram((void *) &AppConfig.MyMACAddr, (ROM void *) SerializedMACAddress, sizeof (AppConfig.MyMACAddr));

        AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2 << 8ul | MY_DEFAULT_IP_ADDR_BYTE3 << 16ul | MY_DEFAULT_IP_ADDR_BYTE4 << 24ul;
        AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
        AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2 << 8ul | MY_DEFAULT_MASK_BYTE3 << 16ul | MY_DEFAULT_MASK_BYTE4 << 24ul;
        AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
        AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2 << 8ul | MY_DEFAULT_GATE_BYTE3 << 16ul | MY_DEFAULT_GATE_BYTE4 << 24ul;
        AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2 << 8ul | MY_DEFAULT_PRIMARY_DNS_BYTE3 << 16ul | MY_DEFAULT_PRIMARY_DNS_BYTE4 << 24ul;
        AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2 << 8ul | MY_DEFAULT_SECONDARY_DNS_BYTE3 << 16ul | MY_DEFAULT_SECONDARY_DNS_BYTE4 << 24ul;

        // Load the default NetBIOS Host Name
        memcpypgm2ram(AppConfig.NetBIOSName, (ROM void *) MY_DEFAULT_HOST_NAME, 16);
        FormatNetBIOSName(AppConfig.NetBIOSName);

    #if defined(WF_CS_TRIS)
        WF_ASSERT(sizeof (MY_DEFAULT_SSID_NAME) - 1 <= sizeof (AppConfig.ssid));
        memcpypgm2ram(AppConfig.ssid, (ROM void *) MY_DEFAULT_SSID_NAME, sizeof (MY_DEFAULT_SSID_NAME));
        AppConfig.ssidLen = sizeof (MY_DEFAULT_SSID_NAME) - 1;
        AppConfig.networkType = MY_DEFAULT_NETWORK_TYPE;
        AppConfig.securityMode = MY_DEFAULT_WIFI_SECURITY_MODE;

    #if (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_OPEN)
        memset(AppConfig.securityKey, 0x00, sizeof (AppConfig.securityKey));
        AppConfig.securityKeyLength = 0;

    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_40
        AppConfig.wepIndex = 0; // This is the only WEP key index we currently support
        memcpypgm2ram(AppConfig.securityKey, (ROM void *) MY_DEFAULT_WEP_KEYS_40, sizeof (MY_DEFAULT_WEP_KEYS_40) - 1);
        AppConfig.securityKeyLength = sizeof (MY_DEFAULT_WEP_KEYS_40) - 1;

    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_104
        AppConfig.wepIndex = 0; // This is the only WEP key index we currently support
        memcpypgm2ram(AppConfig.securityKey, (ROM void *) MY_DEFAULT_WEP_KEYS_104, sizeof (MY_DEFAULT_WEP_KEYS_104) - 1);
        AppConfig.securityKeyLength = sizeof (MY_DEFAULT_WEP_KEYS_104) - 1;

    #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_KEY) || \
    (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_KEY) || \
    (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_KEY)
        memcpypgm2ram(AppConfig.securityKey, (ROM void *) MY_DEFAULT_PSK, sizeof (MY_DEFAULT_PSK) - 1);
        AppConfig.securityKeyLength = sizeof (MY_DEFAULT_PSK) - 1;

    #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE) || \
    (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_PASS_PHRASE) || \
    (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_PASS_PHRASE)
        memcpypgm2ram(AppConfig.securityKey, (ROM void *) MY_DEFAULT_PSK_PHRASE, sizeof (MY_DEFAULT_PSK_PHRASE) - 1);
        AppConfig.securityKeyLength = sizeof (MY_DEFAULT_PSK_PHRASE) - 1;

    #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPS_PUSH_BUTTON)
        memset(AppConfig.securityKey, 0x00, sizeof (AppConfig.securityKey));
        AppConfig.securityKeyLength = 0;

    #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPS_PIN)
        memcpypgm2ram(AppConfig.securityKey, (ROM void *) MY_DEFAULT_WPS_PIN, sizeof (MY_DEFAULT_WPS_PIN) - 1);
        AppConfig.securityKeyLength = sizeof (MY_DEFAULT_WPS_PIN) - 1;

    #else
    #error "No security defined"
    #endif /* MY_DEFAULT_WIFI_SECURITY_MODE */

    #endif

        // Compute the checksum of the AppConfig defaults as loaded from ROM
        wOriginalAppConfigChecksum = CalcIPChecksum((uint8_t *) & AppConfig, sizeof (AppConfig));

    #if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
        {
            NVM_VALIDATION_STRUCT NVMValidationStruct;

            // Check to see if we have a flag set indicating that we need to
            // save the ROM default AppConfig values.
            if (vNeedToSaveDefaults)
                SaveAppConfig(&AppConfig);

            // Read the NVMValidation record and AppConfig struct out of EEPROM/Flash
    #if defined(EEPROM_CS_TRIS)
            {
                XEEReadArray(0x0000, (uint8_t *) & NVMValidationStruct, sizeof (NVMValidationStruct));
                XEEReadArray(sizeof (NVMValidationStruct), (uint8_t *) & AppConfig, sizeof (AppConfig));
            }
    #elif defined(SPIFLASH_CS_TRIS)
            {
                SPIFlashReadArray(0x0000, (uint8_t *) & NVMValidationStruct, sizeof (NVMValidationStruct));
                SPIFlashReadArray(sizeof (NVMValidationStruct), (uint8_t *) & AppConfig, sizeof (AppConfig));
            }
    #endif

            // Check EEPROM/Flash validity.  If it isn't valid, set a flag so
            // that we will save the ROM default values on the next loop
            // iteration.
            if ((NVMValidationStruct.wConfigurationLength != sizeof (AppConfig)) ||
                    (NVMValidationStruct.wOriginalChecksum != wOriginalAppConfigChecksum) ||
                    (NVMValidationStruct.wCurrentChecksum != CalcIPChecksum((uint8_t *) & AppConfig, sizeof (AppConfig)))) {
                // Check to ensure that the vNeedToSaveDefaults flag is zero,
                // indicating that this is the first iteration through the do
                // loop.  If we have already saved the defaults once and the
                // EEPROM/Flash still doesn't pass the validity check, then it
                // means we aren't successfully reading or writing to the
                // EEPROM/Flash.  This means you have a hardware error and/or
                // SPI configuration error.
                if (vNeedToSaveDefaults) {
                    WF_ASSERT(false);
                }

                // Set flag and restart loop to load ROM defaults and save them
                vNeedToSaveDefaults = 1;
                continue;
            }

            // If we get down here, it means the EEPROM/Flash has valid contents
            // and either matches the ROM defaults or previously matched and
            // was run-time reconfigured by the user.  In this case, we shall
            // use the contents loaded from EEPROM/Flash.
            break;
        }
    #endif
        break;
    }
}

#if defined(WF_CS_TRIS)
/*****************************************************************************
 * FUNCTION: WF_Connect
 *
 * RETURNS:  None
 *
 * PARAMS:   None
 *
 *  NOTES:   Connects to an 802.11 network.  Customize this function as needed
 *           for your application.
 *****************************************************************************/
void WF_Connect(void)
{
    //uint8_t ConnectionState;
    uint8_t channelList[] = MY_DEFAULT_CHANNEL_LIST;

    /* create a Connection Profile */
    WF_CPCreate(&ConnectionProfileID);

    AppConfig.passphraseToBinaryKeyFlag = 0;

    WF_SetRegionalDomain(MY_DEFAULT_DOMAIN);

    WF_CPSetSsid(ConnectionProfileID,
            AppConfig.ssid,
            AppConfig.ssidLen);

    WF_CPSetNetworkType(ConnectionProfileID, MY_DEFAULT_NETWORK_TYPE);

    WF_CASetScanType(MY_DEFAULT_SCAN_TYPE);

    WF_CASetChannelList(channelList, sizeof(channelList));

    // The Retry Count parameter tells the WiFi Connection manager how many attempts to make when trying
    // to connect to an existing network.  In the Infrastructure case, the default is to retry forever so that
    // if the AP is turned off or out of range, the radio will continue to attempt a connection until the
    // AP is eventually back on or in range.  In the Adhoc case, the default is to retry 3 times since the
    // purpose of attempting to establish a network in the Adhoc case is only to verify that one does not
    // initially exist.  If the retry count was set to WF_RETRY_FOREVER in the AdHoc mode, an AdHoc network
    // would never be established.
    WF_CASetListRetryCount(MY_DEFAULT_LIST_RETRY_COUNT);

    WF_CASetEventNotificationAction(MY_DEFAULT_EVENT_NOTIFICATION_LIST);

    WF_CASetBeaconTimeout(MY_DEFAULT_BEACON_TIMEOUT);

#if !defined(MRF24WG)
    if (g_ModuleVer1209orLater) {
        // If WEP security is used, set WEP Key Type.  The default WEP Key Type is Shared Key.
        if (AppConfig.securityMode == WF_SECURITY_WEP_40 || AppConfig.securityMode == WF_SECURITY_WEP_104) {
            WF_CPSetWepKeyType(ConnectionProfileID, MY_DEFAULT_WIFI_SECURITY_WEP_KEYTYPE);
        }
    }
    // if earlier version than 1209, use WEP Open Key default in module.
#else /* defined(MRF24WG) */
    {
        // If WEP security is used, set WEP Key Type.  The default WEP Key Type is Shared Key.
        if (AppConfig.securityMode == WF_SECURITY_WEP_40 || AppConfig.securityMode == WF_SECURITY_WEP_104) {
            WF_CPSetWepKeyType(ConnectionProfileID, MY_DEFAULT_WIFI_SECURITY_WEP_KEYTYPE);
        }
    }
#endif /* !defined(MRF24WG) */

#if defined(MRF24WG)
    // Error check items specific to WPS Push Button mode
#if (MY_DEFAULT_WIFI_SECURITY_MODE==WF_SECURITY_WPS_PUSH_BUTTON)
#if !defined(WF_P2P)
    WF_ASSERT(strlen(AppConfig.ssid) == 0); // SSID must be empty when using WPS
    WF_ASSERT(sizeof(channelList) == 11); // must scan all channels for WPS
#endif

#if (MY_DEFAULT_NETWORK_TYPE == WF_P2P)
    WF_ASSERT(strcmp((char *)AppConfig.ssid, "DIRECT-") == 0);
    WF_ASSERT(sizeof(channelList) == 3);
    WF_ASSERT(channelList[0] == 1);
    WF_ASSERT(channelList[1] == 6);
    WF_ASSERT(channelList[2] == 11);
#endif
#endif
#endif /* MRF24WG */

#if WF_HOST_DERIVE_KEY_FROM_PASSPHRASE == WF_ENABLED
    if (AppConfig.securityMode == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE ||
        AppConfig.securityMode == WF_SECURITY_WPA_WITH_PASS_PHRASE ||
        AppConfig.securityMode == WF_SECURITY_WPA2_WITH_PASS_PHRASE) {
        WF_DeriveKey(AppConfig.securityKeyLength, AppConfig.securityKey, AppConfig.ssidLen, AppConfig.ssid);
        AppConfig.securityMode--;
        AppConfig.securityKeyLength = 32;
        AppConfig.passphraseToBinaryKeyFlag = 1;
    }
#if defined (MRF24WG)
    else if (AppConfig.securityMode == WF_SECURITY_WPS_PUSH_BUTTON
            || AppConfig.securityMode == WF_SECURITY_WPS_PIN) {
        WF_SetHostKeyDeriveMode();
    }
#endif /* defined (MRF24WG) */
#endif /* #if WF_HOST_DERIVE_KEY_FROM_PASSPHRASE == WF_ENABLED */

#if !defined(MRF24WG)
    Delay10us(10); /* required for MRF24WB */
#endif

    WF_CPSetSecurity(ConnectionProfileID,
            AppConfig.securityMode,
            AppConfig.wepIndex, /* only used if WEP enabled, only 0 is supported currently */
            AppConfig.securityKey,
            AppConfig.securityKeyLength);

#if MY_DEFAULT_PS_POLL == WF_ENABLED
    WF_PsPollEnable(true);
#else /* MY_DEFAULT_PS_POLL != WF_ENABLED */
    WF_PsPollDisable();
#endif /* MY_DEFAULT_PS_POLL == WF_ENABLED */

#if defined(STACK_USE_UART)
    WF_OutputConnectionInfo(&AppConfig);
#endif

#if WF_MODULE_CONNECTION_MANAGER == WF_DISABLED
    WF_SetReconnectMode(true);
#endif

#if (WF_CHECK_LINK_STATUS == WF_ENABLED)
    WF_SetLinkDownThreshold(WF_LINK_LOST_THRESHOLD);
#endif

    WF_CMConnect(ConnectionProfileID);
}
#endif /* WF_CS_TRIS */