/*
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 */

#include "contiki.h"
#include "contiki-lib.h"
#include "contiki-net.h"

#include <string.h>
#include "dev/leds.h"

#include "debug.h"
/***********************************/
#include"cc253x.h"
#include "net/rpl/rpl.h"
/***********************************/
#define DEBUG DEBUG_NONE
#include "net/uip-debug.h"
/***********************************/

#define DEVICE_ID               0x05
#define ALARM_INTERVAL		30 * CLOCK_SECOND
/***********************************/


uip_ipaddr_t server_ipaddr;
static struct uip_udp_conn *client_conn;
static uint8_t buf[10]={0};
extern uint8_t in_net_flag;//if set 1,reter "has join in the net "
uint8_t sended_flag=0;// if set 1 ,refer "has send address to root"
uint8_t mode=0xAA;
/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");

PROCESS_NAME(receive_process);
AUTOSTART_PROCESSES(&udp_client_process, &receive_process);
/*---------------------------------------------------------------------------*/
void login(void)
{
  uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x01);

 
 	buf[0] = 0xEF;// start  of cmd 
	buf[1] = DEVICE_ID;// deviceID
        buf[2] = 0x00;//cmd      
	buf[3] = 0x00;// data length 0
        buf[4] = 0xFe; //end of cmd
uip_udp_packet_sendto(client_conn, buf, 5, &server_ipaddr, UIP_HTONS(5775));

}
/*---------------------------------------------------------------------------*/
void DelayMS(uint32_t msec)//not enough 1ms
{  
    uint32_t i,j;
    
    for (i=0; i<msec; i++)
        for (j=0; j<1070; j++);
}
/*---------------------------------------------------------------------------*/
 void send_to_server(void)
{
	


uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x01);
  
 
 	buf[0] = 0xEF;// start  of cmd 
	buf[1] =DEVICE_ID;// deviceID
  	buf[2] = 0xA1;// upload have a body
	buf[3] = 0x00;// data length 0
        buf[4] = 0xFe; //end of cmd
uip_udp_packet_sendto(client_conn, buf, 5, &server_ipaddr, UIP_HTONS(5775));


   

}
/*---------------------------------------------------------------------------*/
static void
set_global_address(void)
{
  uip_ipaddr_t ipaddr;

  uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_client_process, ev, data)
{
  
    static struct etimer et,slot;
   
    PROCESS_BEGIN();
   
    PRINTF("UDP client process started\n\r");
    set_global_address();
  


PRINTF("UDP destination address\n\r");
uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 1);


    client_conn = udp_new(NULL, UIP_HTONS(5775), NULL);        
    P0DIR &= ~0x20;  
    P1DIR |= 0x10;  //p1_0 led  ;P1_4 ji dian qi
   
    DelayMS(3000);

etimer_set(&slot,20);
  while(1) 
  {
       
 PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&slot));     


     if((sended_flag!=1)&&in_net_flag==1) 
    {
     leds_on(LEDS_GREEN);
      login();
      sended_flag=1;  
    }
     if(P0_5 == 1)
     {        
	if(mode==0xAA){
         P1_4 = 0;
	send_to_server();                
        }
       etimer_set(&et,ALARM_INTERVAL);
       PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));  
     }
   else         
     {	
	P1_4 = 1;
	
     }
    etimer_reset(&slot);
  }

    PROCESS_END();
}
/*---------------------------------------------------------------------------*/
