#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/helikopter.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/helikopter.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=framework/driver/wifi/mrf24w/src/drv_wifi_console.c framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.c framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.c framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.c framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c framework/driver/wifi/mrf24w/src/drv_wifi_scan.c framework/driver/wifi/mrf24w/src/drv_wifi_mac.c framework/driver/wifi/mrf24w/src/drv_wifi_raw.c framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.c framework/driver/wifi/mrf24w/src/drv_wifi_init.c framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.c framework/driver/wifi/mrf24w/src/drv_wifi_eint.c framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c framework/driver/wifi/mrf24w/src/drv_wifi_spi.c framework/driver/wifi/mrf24w/src/drv_wifi_com.c framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.c framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c framework/tcpip/src/common/spi_eeprom.c framework/tcpip/src/common/stack_task.c framework/tcpip/src/common/tick.c framework/tcpip/src/common/helpers.c framework/tcpip/src/common/delay.c framework/tcpip/src/common/spi_flash.c framework/tcpip/src/common/spi_ram.c framework/tcpip/src/common/uart.c framework/tcpip/src/icmp.c framework/tcpip/src/dns_client.c framework/tcpip/src/arp.c framework/tcpip/src/auto_ip.c framework/tcpip/src/udp.c framework/tcpip/src/dhcp_client.c framework/tcpip/src/ip.c framework/tcpip/src/tcp.c szilv_app/config/system.c szilv_app/config/drv_wifi_config.c szilv_app/szilv_tcp_socket.c szilv_app/szilv_UART.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o ${OBJECTDIR}/framework/tcpip/src/common/tick.o ${OBJECTDIR}/framework/tcpip/src/common/helpers.o ${OBJECTDIR}/framework/tcpip/src/common/delay.o ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o ${OBJECTDIR}/framework/tcpip/src/common/uart.o ${OBJECTDIR}/framework/tcpip/src/icmp.o ${OBJECTDIR}/framework/tcpip/src/dns_client.o ${OBJECTDIR}/framework/tcpip/src/arp.o ${OBJECTDIR}/framework/tcpip/src/auto_ip.o ${OBJECTDIR}/framework/tcpip/src/udp.o ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o ${OBJECTDIR}/framework/tcpip/src/ip.o ${OBJECTDIR}/framework/tcpip/src/tcp.o ${OBJECTDIR}/szilv_app/config/system.o ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o ${OBJECTDIR}/szilv_app/szilv_UART.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o.d ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o.d ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o.d ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o.d ${OBJECTDIR}/framework/tcpip/src/common/tick.o.d ${OBJECTDIR}/framework/tcpip/src/common/helpers.o.d ${OBJECTDIR}/framework/tcpip/src/common/delay.o.d ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o.d ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o.d ${OBJECTDIR}/framework/tcpip/src/common/uart.o.d ${OBJECTDIR}/framework/tcpip/src/icmp.o.d ${OBJECTDIR}/framework/tcpip/src/dns_client.o.d ${OBJECTDIR}/framework/tcpip/src/arp.o.d ${OBJECTDIR}/framework/tcpip/src/auto_ip.o.d ${OBJECTDIR}/framework/tcpip/src/udp.o.d ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o.d ${OBJECTDIR}/framework/tcpip/src/ip.o.d ${OBJECTDIR}/framework/tcpip/src/tcp.o.d ${OBJECTDIR}/szilv_app/config/system.o.d ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o.d ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o.d ${OBJECTDIR}/szilv_app/szilv_UART.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o ${OBJECTDIR}/framework/tcpip/src/common/tick.o ${OBJECTDIR}/framework/tcpip/src/common/helpers.o ${OBJECTDIR}/framework/tcpip/src/common/delay.o ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o ${OBJECTDIR}/framework/tcpip/src/common/uart.o ${OBJECTDIR}/framework/tcpip/src/icmp.o ${OBJECTDIR}/framework/tcpip/src/dns_client.o ${OBJECTDIR}/framework/tcpip/src/arp.o ${OBJECTDIR}/framework/tcpip/src/auto_ip.o ${OBJECTDIR}/framework/tcpip/src/udp.o ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o ${OBJECTDIR}/framework/tcpip/src/ip.o ${OBJECTDIR}/framework/tcpip/src/tcp.o ${OBJECTDIR}/szilv_app/config/system.o ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o ${OBJECTDIR}/szilv_app/szilv_UART.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=framework/driver/wifi/mrf24w/src/drv_wifi_console.c framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.c framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.c framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.c framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c framework/driver/wifi/mrf24w/src/drv_wifi_scan.c framework/driver/wifi/mrf24w/src/drv_wifi_mac.c framework/driver/wifi/mrf24w/src/drv_wifi_raw.c framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.c framework/driver/wifi/mrf24w/src/drv_wifi_init.c framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.c framework/driver/wifi/mrf24w/src/drv_wifi_eint.c framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c framework/driver/wifi/mrf24w/src/drv_wifi_spi.c framework/driver/wifi/mrf24w/src/drv_wifi_com.c framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.c framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c framework/tcpip/src/common/spi_eeprom.c framework/tcpip/src/common/stack_task.c framework/tcpip/src/common/tick.c framework/tcpip/src/common/helpers.c framework/tcpip/src/common/delay.c framework/tcpip/src/common/spi_flash.c framework/tcpip/src/common/spi_ram.c framework/tcpip/src/common/uart.c framework/tcpip/src/icmp.c framework/tcpip/src/dns_client.c framework/tcpip/src/arp.c framework/tcpip/src/auto_ip.c framework/tcpip/src/udp.c framework/tcpip/src/dhcp_client.c framework/tcpip/src/ip.c framework/tcpip/src/tcp.c szilv_app/config/system.c szilv_app/config/drv_wifi_config.c szilv_app/szilv_tcp_socket.c szilv_app/szilv_UART.c main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/helikopter.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o: framework/driver/wifi/mrf24w/src/drv_wifi_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o framework/driver/wifi/mrf24w/src/drv_wifi_console.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o: framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o: framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o: framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o: framework/driver/wifi/mrf24w/src/drv_wifi_scan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o framework/driver/wifi/mrf24w/src/drv_wifi_scan.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o: framework/driver/wifi/mrf24w/src/drv_wifi_mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o framework/driver/wifi/mrf24w/src/drv_wifi_mac.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o: framework/driver/wifi/mrf24w/src/drv_wifi_raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o framework/driver/wifi/mrf24w/src/drv_wifi_raw.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o: framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o: framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o: framework/driver/wifi/mrf24w/src/drv_wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o framework/driver/wifi/mrf24w/src/drv_wifi_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o: framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o: framework/driver/wifi/mrf24w/src/drv_wifi_eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o framework/driver/wifi/mrf24w/src/drv_wifi_eint.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o: framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o: framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o: framework/driver/wifi/mrf24w/src/drv_wifi_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o framework/driver/wifi/mrf24w/src/drv_wifi_spi.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o: framework/driver/wifi/mrf24w/src/drv_wifi_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o framework/driver/wifi/mrf24w/src/drv_wifi_com.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o: framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o: framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o: framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o: framework/tcpip/src/common/spi_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o framework/tcpip/src/common/spi_eeprom.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/stack_task.o: framework/tcpip/src/common/stack_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/stack_task.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/stack_task.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o framework/tcpip/src/common/stack_task.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/tick.o: framework/tcpip/src/common/tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/tick.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/tick.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/tick.o framework/tcpip/src/common/tick.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/helpers.o: framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/helpers.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/helpers.o framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/delay.o: framework/tcpip/src/common/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/delay.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/delay.o framework/tcpip/src/common/delay.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o: framework/tcpip/src/common/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o framework/tcpip/src/common/spi_flash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o: framework/tcpip/src/common/spi_ram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o framework/tcpip/src/common/spi_ram.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/uart.o: framework/tcpip/src/common/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/uart.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/uart.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/uart.o framework/tcpip/src/common/uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/icmp.o: framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/icmp.o.d" -o ${OBJECTDIR}/framework/tcpip/src/icmp.o framework/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/dns_client.o: framework/tcpip/src/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/dns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/dns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/dns_client.o.d" -o ${OBJECTDIR}/framework/tcpip/src/dns_client.o framework/tcpip/src/dns_client.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/arp.o: framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/arp.o.d" -o ${OBJECTDIR}/framework/tcpip/src/arp.o framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/auto_ip.o: framework/tcpip/src/auto_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/auto_ip.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/auto_ip.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/auto_ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/auto_ip.o.d" -o ${OBJECTDIR}/framework/tcpip/src/auto_ip.o framework/tcpip/src/auto_ip.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/udp.o: framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/udp.o.d" -o ${OBJECTDIR}/framework/tcpip/src/udp.o framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/dhcp_client.o: framework/tcpip/src/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/dhcp_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/dhcp_client.o.d" -o ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o framework/tcpip/src/dhcp_client.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/ip.o: framework/tcpip/src/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/ip.o.d" -o ${OBJECTDIR}/framework/tcpip/src/ip.o framework/tcpip/src/ip.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/tcp.o: framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/tcp.o.d" -o ${OBJECTDIR}/framework/tcpip/src/tcp.o framework/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/szilv_app/config/system.o: szilv_app/config/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/szilv_app/config" 
	@${RM} ${OBJECTDIR}/szilv_app/config/system.o.d 
	@${RM} ${OBJECTDIR}/szilv_app/config/system.o 
	@${FIXDEPS} "${OBJECTDIR}/szilv_app/config/system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/szilv_app/config/system.o.d" -o ${OBJECTDIR}/szilv_app/config/system.o szilv_app/config/system.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/szilv_app/config/drv_wifi_config.o: szilv_app/config/drv_wifi_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/szilv_app/config" 
	@${RM} ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o.d 
	@${RM} ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o 
	@${FIXDEPS} "${OBJECTDIR}/szilv_app/config/drv_wifi_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/szilv_app/config/drv_wifi_config.o.d" -o ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o szilv_app/config/drv_wifi_config.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/szilv_app/szilv_tcp_socket.o: szilv_app/szilv_tcp_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/szilv_app" 
	@${RM} ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o.d 
	@${RM} ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/szilv_app/szilv_tcp_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/szilv_app/szilv_tcp_socket.o.d" -o ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o szilv_app/szilv_tcp_socket.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/szilv_app/szilv_UART.o: szilv_app/szilv_UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/szilv_app" 
	@${RM} ${OBJECTDIR}/szilv_app/szilv_UART.o.d 
	@${RM} ${OBJECTDIR}/szilv_app/szilv_UART.o 
	@${FIXDEPS} "${OBJECTDIR}/szilv_app/szilv_UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/szilv_app/szilv_UART.o.d" -o ${OBJECTDIR}/szilv_app/szilv_UART.o szilv_app/szilv_UART.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o: framework/driver/wifi/mrf24w/src/drv_wifi_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console.o framework/driver/wifi/mrf24w/src/drv_wifi_console.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o: framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.o framework/driver/wifi/mrf24w/src/drv_wifi_debug_strings.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o: framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.o framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.o framework/driver/wifi/mrf24w/src/drv_wifi_console_iwpriv.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.o framework/driver/wifi/mrf24w/src/drv_wifi_console_ifconfig.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o: framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.o framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o: framework/driver/wifi/mrf24w/src/drv_wifi_scan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_scan.o framework/driver/wifi/mrf24w/src/drv_wifi_scan.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o: framework/driver/wifi/mrf24w/src/drv_wifi_mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mac.o framework/driver/wifi/mrf24w/src/drv_wifi_mac.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o: framework/driver/wifi/mrf24w/src/drv_wifi_raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_raw.o framework/driver/wifi/mrf24w/src/drv_wifi_raw.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o: framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.o framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o: framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.o framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.o framework/driver/wifi/mrf24w/src/drv_wifi_console_msg_handler.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o: framework/driver/wifi/mrf24w/src/drv_wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_init.o framework/driver/wifi/mrf24w/src/drv_wifi_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o: framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.o framework/driver/wifi/mrf24w/src/drv_wifi_easy_config.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.o framework/driver/wifi/mrf24w/src/drv_wifi_console_msg.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o: framework/driver/wifi/mrf24w/src/drv_wifi_eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_eint.o framework/driver/wifi/mrf24w/src/drv_wifi_eint.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o: framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.o framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o: framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.o framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o: framework/driver/wifi/mrf24w/src/drv_wifi_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_spi.o framework/driver/wifi/mrf24w/src/drv_wifi_spi.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o: framework/driver/wifi/mrf24w/src/drv_wifi_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_com.o framework/driver/wifi/mrf24w/src/drv_wifi_com.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o: framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.o framework/driver/wifi/mrf24w/src/drv_wifi_console_iwconfig.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o: framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.o framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o: framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.o framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o: framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src" 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o.d 
	@${RM} ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o.d" -o ${OBJECTDIR}/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.o framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o: framework/tcpip/src/common/spi_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/spi_eeprom.o framework/tcpip/src/common/spi_eeprom.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/stack_task.o: framework/tcpip/src/common/stack_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/stack_task.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/stack_task.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/stack_task.o framework/tcpip/src/common/stack_task.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/tick.o: framework/tcpip/src/common/tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/tick.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/tick.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/tick.o framework/tcpip/src/common/tick.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/helpers.o: framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/helpers.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/helpers.o framework/tcpip/src/common/helpers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/delay.o: framework/tcpip/src/common/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/delay.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/delay.o framework/tcpip/src/common/delay.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o: framework/tcpip/src/common/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/spi_flash.o framework/tcpip/src/common/spi_flash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o: framework/tcpip/src/common/spi_ram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/spi_ram.o framework/tcpip/src/common/spi_ram.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/common/uart.o: framework/tcpip/src/common/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/uart.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/common/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/common/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/common/uart.o.d" -o ${OBJECTDIR}/framework/tcpip/src/common/uart.o framework/tcpip/src/common/uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/icmp.o: framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/icmp.o.d" -o ${OBJECTDIR}/framework/tcpip/src/icmp.o framework/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/dns_client.o: framework/tcpip/src/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/dns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/dns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/dns_client.o.d" -o ${OBJECTDIR}/framework/tcpip/src/dns_client.o framework/tcpip/src/dns_client.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/arp.o: framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/arp.o.d" -o ${OBJECTDIR}/framework/tcpip/src/arp.o framework/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/auto_ip.o: framework/tcpip/src/auto_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/auto_ip.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/auto_ip.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/auto_ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/auto_ip.o.d" -o ${OBJECTDIR}/framework/tcpip/src/auto_ip.o framework/tcpip/src/auto_ip.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/udp.o: framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/udp.o.d" -o ${OBJECTDIR}/framework/tcpip/src/udp.o framework/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/dhcp_client.o: framework/tcpip/src/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/dhcp_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/dhcp_client.o.d" -o ${OBJECTDIR}/framework/tcpip/src/dhcp_client.o framework/tcpip/src/dhcp_client.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/ip.o: framework/tcpip/src/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/ip.o.d" -o ${OBJECTDIR}/framework/tcpip/src/ip.o framework/tcpip/src/ip.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/framework/tcpip/src/tcp.o: framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/framework/tcpip/src" 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/framework/tcpip/src/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/framework/tcpip/src/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/framework/tcpip/src/tcp.o.d" -o ${OBJECTDIR}/framework/tcpip/src/tcp.o framework/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/szilv_app/config/system.o: szilv_app/config/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/szilv_app/config" 
	@${RM} ${OBJECTDIR}/szilv_app/config/system.o.d 
	@${RM} ${OBJECTDIR}/szilv_app/config/system.o 
	@${FIXDEPS} "${OBJECTDIR}/szilv_app/config/system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/szilv_app/config/system.o.d" -o ${OBJECTDIR}/szilv_app/config/system.o szilv_app/config/system.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/szilv_app/config/drv_wifi_config.o: szilv_app/config/drv_wifi_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/szilv_app/config" 
	@${RM} ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o.d 
	@${RM} ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o 
	@${FIXDEPS} "${OBJECTDIR}/szilv_app/config/drv_wifi_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/szilv_app/config/drv_wifi_config.o.d" -o ${OBJECTDIR}/szilv_app/config/drv_wifi_config.o szilv_app/config/drv_wifi_config.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/szilv_app/szilv_tcp_socket.o: szilv_app/szilv_tcp_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/szilv_app" 
	@${RM} ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o.d 
	@${RM} ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/szilv_app/szilv_tcp_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/szilv_app/szilv_tcp_socket.o.d" -o ${OBJECTDIR}/szilv_app/szilv_tcp_socket.o szilv_app/szilv_tcp_socket.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/szilv_app/szilv_UART.o: szilv_app/szilv_UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/szilv_app" 
	@${RM} ${OBJECTDIR}/szilv_app/szilv_UART.o.d 
	@${RM} ${OBJECTDIR}/szilv_app/szilv_UART.o 
	@${FIXDEPS} "${OBJECTDIR}/szilv_app/szilv_UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/szilv_app/szilv_UART.o.d" -o ${OBJECTDIR}/szilv_app/szilv_UART.o szilv_app/szilv_UART.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"framework" -I"szilv_app" -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/helikopter.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/helikopter.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=200,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/helikopter.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/helikopter.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=200,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/helikopter.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
