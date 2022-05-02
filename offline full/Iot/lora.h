#ifndef LORA_H_
#define LORA_H_

#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_emu.h"
#include "em_eusart.h"
#include "em_gpio.h"
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sl_udelay.h>

#define RETARGET_TXPORT      gpioPortB                   /* EUSART transmission port */
#define RETARGET_TXPIN       1                            /* EUSART transmission pin */
#define RETARGET_RXPORT      gpioPortB                   /* EUSART reception port */
#define RETARGET_RXPIN       2                            /* EUSART reception pin */
#define BAUDRATE             9600                       /* EUSART baudrate */

typedef struct NODE {
    int data1,data2,data3,data4,data5;
    struct NODE *next;
} node;

void EUART0_RX_IRQHandler(void);

void *create_node(node **head, int dataa, int datab, int datac, int datad, int datae);

void tachphantu ( int arr[], int a);

void converttong(char string[], int data,int k);

void deleteList(node** head_ref);

void print_list(node *head);

void UartTxLinkList(int data1,int data2,int data3,int data4,int data5);

void initGPIO(void);

void initEUSART0(void);

#endif /* LORA_H_ */
