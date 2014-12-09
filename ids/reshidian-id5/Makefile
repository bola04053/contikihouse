DEFINES+=PROJECT_CONF_H=\"project-conf.h\"

TARGET=cc2530eb

HAVE_BANKING=1
UIP_CONF_IPV6=1
UIP_CONF_RPL=1

PROJECT_SOURCEFILES +=receive.c

CONTIKI_PROJECT = client

all: $(CONTIKI_PROJECT)

CONTIKI = ../../../..

include $(CONTIKI)/Makefile.include
