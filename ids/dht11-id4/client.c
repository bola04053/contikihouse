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
 
/***********************************/
#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"
/***********************************/

#define DEVICE_ID               0x04
/***********************************/
#define UIP_IP_BUF                ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
#define UIP_ICMP_BUF            ((struct uip_icmp_hdr *)&uip_buf[uip_l2_l3_hdr_len])

/*---------------------------------------------------------------------------*/
#define DATA_PIN P1_1

/*---------------------------------------------------------------------------*/

uip_ipaddr_t server_ipaddr;
static struct uip_udp_conn *client_conn;
static uint8_t buf[15]={0};
static struct uip_udp_conn *server_conn;
extern uint8_t in_net_flag;
uint8_t sended_flag=0;
/*---------------------------------------------------------------------------*/
typedef unsigned char uchar;
typedef unsigned int  uint;
//温湿度定义
uchar ucharFLAG,uchartemp;
uchar shidu_shi=0x00,shidu_ge=0x00,wendu_shi=0x00,wendu_ge=0x00;
uchar ucharT_data_H,ucharT_data_L,ucharRH_data_H,ucharRH_data_L,ucharcheckdata;
uchar ucharT_data_H_temp,ucharT_data_L_temp,ucharRH_data_H_temp,ucharRH_data_L_temp,ucharcheckdata_temp;
uchar ucharcomdata;        
/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process);
/*---------------------------------------------------------------------------*/
//延时函数
void Delay_us() //1 us延时
{
 __asm nop __endasm;
 __asm nop __endasm;   
  ASM(nop);
 
}

void Delay_10us() //10 us延时
{
  Delay_us();
  Delay_us();
  Delay_us();
  Delay_us();
  Delay_us();
  Delay_us();
  Delay_us();
  Delay_us();
  Delay_us();
  Delay_us();   
}

void Delay_ms(uint Time)//n ms延时
{
    unsigned char i;
    while(Time--)
    {
        for(i=0;i<100;i++)
            Delay_10us();
    }
}

//温湿度传感
void COM(void)    // 温湿写入
{     
    uchar i;         
    for(i=0;i<8;i++)    
    {
        ucharFLAG=2; 
        while((!DATA_PIN)&&ucharFLAG++);
        Delay_10us();
        Delay_10us();
        Delay_10us();
        uchartemp=0;
        if(DATA_PIN)uchartemp=1;
        ucharFLAG=2;
        while((DATA_PIN)&&ucharFLAG++);   
        if(ucharFLAG==1)break;    
        ucharcomdata<<=1;
        ucharcomdata|=uchartemp; 
    }    
}

void DHT11(void)   //温湿传感启动
{
    DATA_PIN=0;
    Delay_ms(19);  //>18MS
    DATA_PIN=1; 
    P1DIR &= ~0x02; //重新配置IO口方向
    Delay_10us();
    Delay_10us();                        
    Delay_10us();
    Delay_10us();  
    if(!DATA_PIN) 
    {
        ucharFLAG=2; 
        while((!DATA_PIN)&&ucharFLAG++);
        ucharFLAG=2;
        while((DATA_PIN)&&ucharFLAG++); 
        COM();
        ucharRH_data_H_temp=ucharcomdata;
        COM();
        ucharRH_data_L_temp=ucharcomdata;
        COM();
        ucharT_data_H_temp=ucharcomdata;
        COM();
        ucharT_data_L_temp=ucharcomdata;
        COM();
        ucharcheckdata_temp=ucharcomdata;
        DATA_PIN=1; 
        uchartemp=(ucharT_data_H_temp+ucharT_data_L_temp+ucharRH_data_H_temp+ucharRH_data_L_temp);
        if(uchartemp==ucharcheckdata_temp)
        {
            ucharRH_data_H=ucharRH_data_H_temp;
            ucharRH_data_L=ucharRH_data_L_temp;
            ucharT_data_H=ucharT_data_H_temp;
            ucharT_data_L=ucharT_data_L_temp;
            ucharcheckdata=ucharcheckdata_temp;
        }
        wendu_shi=ucharT_data_H/10; 
        wendu_ge=ucharT_data_H%10;
        
        shidu_shi=ucharRH_data_H/10; 
        shidu_ge=ucharRH_data_H%10;        
    } 
    else //没用成功读取，返回0
    {
        wendu_shi=0; 
        wendu_ge=0;
        
        shidu_shi=0; 
        shidu_ge=0;  
    } 
    
    P1DIR |= 0x02; //IO口需要重新配置 
}


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
 void send_data(void)
{
	


uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0x01); 
        DHT11();
 	buf[0] = 0xEF;// start  of cmd 
	buf[1] = DEVICE_ID;// deviceID
        buf[2] = 0xAA;// light on          
	buf[3] = 0x04;// data length 0
        buf[4] = wendu_shi; 
	buf[5] =  wendu_ge;
	buf[6] = shidu_shi;
	buf[7] = shidu_ge;
        buf[8] = 0xFE; //end of cmd
uip_udp_packet_sendto(client_conn, buf, 9, &server_ipaddr, UIP_HTONS(5775));
leds_toggle(LEDS_GREEN);

}
/*---------------------------------------------------------------------------*/
 void
tcpip_handler(void)
{
  uint8_t * p=uip_appdata;
  
 if(p[0]==0xEF&&p[1]==DEVICE_ID&&p[2]==0xCA&&p[3]==0x00&&p[4]==0xFE)send_data();

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
  
     static struct etimer et,get_period;
    PROCESS_BEGIN();

//	CLKCONCMD &= ~0x40;               //设置系统时钟源为32MHZ晶振
  //  while(CLKCONSTA & 0x40);          //等待晶振稳定为32M
  // CLKCONCMD &= ~0x47;               //设置系统主时钟频率为32MHZ 
   
    PRINTF("UDP client process started\n\r");
    set_global_address();


    client_conn = udp_new(NULL, UIP_HTONS(5775), NULL);
     /*-------------two conn must seprate--------------------*/      
  udp_bind(client_conn, UIP_HTONS(5885));
    server_conn = udp_new(NULL, UIP_HTONS(0), NULL);  
    udp_bind(server_conn, UIP_HTONS(5885));

       DelayMS(3000);
	 DHT11();
       DelayMS(1000);
       DHT11();
       DelayMS(1000);
       DHT11();
	DelayMS(1000);
       DHT11();
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
