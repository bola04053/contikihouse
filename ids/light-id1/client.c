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
#include "dev/button-sensor.h"
#include "debug.h"
/***********************************/
#include"cc253x.h"

/***********************************/
#define DEBUG DEBUG_NONE
#include "net/uip-debug.h"
/***********************************/

#define DEVICE_ID               0x01
/***********************************/
#define UIP_IP_BUF                ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
#define UIP_ICMP_BUF            ((struct uip_icmp_hdr *)&uip_buf[uip_l2_l3_hdr_len])
/***********************************/
uint8_t light_state=0;
uip_ipaddr_t server_ipaddr;
static struct uip_udp_conn *client_conn;
static uint8_t buf[5]={0};
static struct uip_udp_conn *server_conn;
extern uint8_t in_net_flag;//zan shi mei yongdao
uint8_t sended_flag=0;
/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process);
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
void light_init(void)
{
       
    P1DIR |= 0x10;  //p1_0 led  ;P1_4 ji dian qi
}
/*---------------------------------------------------------------------------*/
void turn_off(void)
{
  P1_4=0;
  light_state=0;
  //leds_off(LEDS_RED);
}
/*---------------------------------------------------------------------------*/
void turn_on(void)
{
  P1_4=1;
   light_state=1;
   //leds_on(LEDS_RED);
}

/*---------------------------------------------------------------------------*/
void DelayMS(uint32_t msec)//not enough 1ms
{  
    uint32_t i,j;
    
    for (i=0; i<msec; i++)
        for (j=0; j<1070; j++);
}
/*---------------------------------------------------------------------------*/
 void send_state(void)
{
	


uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x01);
//uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0x0212, 0x4b00, 0x03a5, 0xca08); 
 
 	buf[0] = 0xEF;// start  of cmd 
	buf[1] = DEVICE_ID;// deviceID

if(light_state)buf[2] = 0xA1;// light on
          else buf[2] = 0xA0;// light off 

	buf[3] = 0x00;// data length 0
        buf[4] = 0xFe; //end of cmd
uip_udp_packet_sendto(client_conn, buf, 5, &server_ipaddr, UIP_HTONS(5775));
//leds_toggle(LEDS_GREEN);
}
/*---------------------------------------------------------------------------*/
 void
tcpip_handler(void)
{
  uint8_t * p=uip_appdata;
 
 if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xCA&&p[3]==0x00&&p[4]==0xFE)send_state();
else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xC1&&p[3]==0x00&&p[4]==0xFE)turn_on();
else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xC0&&p[3]==0x00&&p[4]==0xFE)turn_off();
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
  
     static struct etimer et;
    PROCESS_BEGIN();
   
    PRINTF("UDP client process started\n\r");
    set_global_address();


    client_conn = udp_new(NULL, UIP_HTONS(5775), NULL);
     /*-------------two conn must seprate--------------------*/      
  udp_bind(client_conn, UIP_HTONS(5885));
    server_conn = udp_new(NULL, UIP_HTONS(0), NULL);  
    udp_bind(server_conn, UIP_HTONS(5885));
    light_init();

    DelayMS(3000);


etimer_set(&et,10*CLOCK_SECOND);
  while(1) 
 {
   
    PROCESS_YIELD();
  if(etimer_expired(&et)&&(sended_flag!=1)) 
{

    if(in_net_flag==1)
  {
     leds_on(LEDS_GREEN);
      login();
      sended_flag=1;
   }
  else etimer_set(&et,10*CLOCK_SECOND);

}
if(ev == tcpip_event)
    {
      tcpip_handler();

    }



 }


     PROCESS_END();
}
/*---------------------------------------------------------------------------*/
