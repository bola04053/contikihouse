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
#include <stdio.h>

#include "dev/button-sensor.h"
#include "debug.h"
#include "net/rpl/rpl.h"
#define DEBUG DEBUG_NONE
#include "net/uip-debug.h"
#include "dev/leds.h"
#define PING6_NB 5
#define PING6_DATALEN 16

#define UIP_IP_BUF                ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
#define UIP_ICMP_BUF            ((struct uip_icmp_hdr *)&uip_buf[uip_l2_l3_hdr_len])

#define DEVICE_ID               0x05
/*---------------------------------------------------------------------------*/
extern mode;
static struct uip_udp_conn *server_conn;
PROCESS(receive_process, "RECEIVE process");


/*----------------------------------------------------------------------*/
 void
tcpip_handler(void)
{
  uint8_t * p=uip_appdata;
  
  if(uip_newdata()) {
  if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xAA)mode=0xAA;//sleep mode and leave mode
else if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xBB)mode=0xBB;//home mode
    

 

  }
 
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(receive_process, ev, data)
{
     static struct etimer et;
  PROCESS_BEGIN();
server_conn = udp_new(NULL, UIP_HTONS(0), NULL);
  
udp_bind(server_conn, UIP_HTONS(5885));
  while(1) 
 {
    PROCESS_YIELD();

    if(ev == tcpip_event)
    {
      tcpip_handler();

    }
  }


  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
