#include "sl_component_catalog.h"
#include "sl_system_init.h"
#include "app.h"
#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
#include "sl_power_manager.h"
#endif
#if defined(SL_CATALOG_KERNEL_PRESENT)
#include "sl_system_kernel.h"
#else // SL_CATALOG_KERNEL_PRESENT
#include "sl_system_process_action.h"
#endif // SL_CATALOG_KERNEL_PRESENT

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
char buffer[80] ={0};
uint32_t inpos = 0;
#define RETARGET_TXPORT      gpioPortB                   /* EUSART transmission port */
#define RETARGET_TXPIN       1                            /* EUSART transmission pin */
#define RETARGET_RXPORT      gpioPortB                   /* EUSART reception port */
#define RETARGET_RXPIN       2                            /* EUSART reception pin */
#define BAUDRATE             9600                       /* EUSART baudrate */

/**************************************************************************//**
 *****************************************************************************/
// rx uart - chua fix bug van loi 2 rx lien tiep khong nhan kip tin hieu ( khong anh huong )
void EUART0_RX_IRQHandler(void)
{
  EUSART_Enable(EUART0, eusartEnableRx);
  buffer[inpos] = EUSART_Rx(EUART0);
    // den
    if (buffer[inpos] =='t') EUSART_Tx(EUART0, '0'); // test dieu kien bat ki
    if (buffer[inpos] =='f') EUSART_Tx(EUART0, '1');
    // may bom
    if (buffer[inpos] =='T') EUSART_Tx(EUART0, '0');
    if (buffer[inpos] =='F') EUSART_Tx(EUART0, '1');
    EUSART_Enable(EUART0, eusartEnable);
  if ((buffer[inpos] != '\n') && (inpos < 80))
    inpos++;

  else{
      inpos=0;
  }

  // Clear the requesting interrupt before exiting the handler
  EUSART_IntClear(EUART0, EUSART_IF_RXFLIF);
}

/*
 * *************************************************************************************
 */
// khoi tao node
typedef struct NODE {
    int data1,data2,data3,data4,data5;
    struct NODE *next;
} node;

// tao node dau tien
void *create_node(node **head, int dataa, int datab, int datac, int datad, int datae) {
    node *new = (node *) malloc (sizeof(node));
    new -> data1 = dataa; //cuong do anh sang 00000-65000
    new -> data2 = datab; //do am khong khi 000-100
    new -> data3 = datac; //nhiet do khong khi 0-50
    new -> data4 = datad; // nhiet do dat -30 -> 70
    new -> data5 = datae; // do am dat 0-100
    new -> next = NULL;
    *head = new;
}

//tao node tiep theo
void add_to_end(node *head,int dataa, int datab, int datac, int datad, int datae){
  node *current = head;
    while (current->next != NULL) current = current -> next;
    node *new = (node *)malloc(sizeof(node));
    new -> data1 = dataa; //cuong do anh sang 00000-65000
    new -> data2 = datab; //do am khong khi 000-100
    new -> data3 = datac; //nhiet do khong khi 0-50
    new -> data4 = datad; // nhiet do dat -30 -> 70
    new -> data5 = datae; // do am dat 0-100
    new -> next = NULL;
    current -> next = new;
}

// xoa 1 node bat ki
node* delete(node* head, int k) { // k la vi tri xoa node
    int count = -1;
    node* tmp = head;
    node* tmp1;
    while( count < k-1 ) {
        tmp = tmp->next;
        ++count;
    }
    tmp1 = tmp->next->next;
    tmp->next = tmp1;
    return head;
}

// tach ki tu ra khoi 1 so nguyen
void tachphantu ( int arr[], int a)
{
  int i;
  for (i=0; i<=4 ; i++)
    {
      arr[i] = 0;
    }
 i=4;
  while (a!=0)
    {
      arr[i] = a % 10;
      a = a/10;
      i--;
    }

}
// chuyen doi data thanh 1 mang string 5 phan tu ( voi max la 65000 ( cuong do anh sang )
void converttong(char string[], int data,int k) // k la vi tri sap xep trong mang ki tu
{
  int i,arr[]={0,0,0,0,0};
          if (data < 0) tachphantu(arr,-data);
          else tachphantu(arr,data);
          string[k] = arr[0] + 48 ;
          string[k+1] = arr[1] + 48 ;
          string[k+2] = arr[2] + 48 ;
          string[k+3] = arr[3] + 48 ;
          string[k+4] = arr[4] + 48 ;
          if (data < 0) EUSART_Tx(EUART0,'-');
          i=k;
          while (i<k+4)
        {
          if ( string[i]!='0' )  EUSART_Tx(EUART0,string[i]);
          i++;
        }
          EUSART_Tx(EUART0,string[k+4]);
          if (k!=20) EUSART_Tx(EUART0,'/');
}

// in 1 node duoi dang 1 chuoi sap xep
void print_list(node *head) {
    char vuon[] = "v1";
    node *current = head;
   current = current -> next;
        char string[]="000000000000000000000000";
        for (int i=0; vuon[i]!=0; i++)
                  {
                    EUSART_Tx(EUART0,vuon[i]);
                  }
        EUSART_Tx(EUART0,'s'); // start
        converttong(string,current->data1,0);
        converttong(string,current->data2,5);
        converttong(string,current->data3,10);
        converttong(string,current->data4,15);
        converttong(string,current->data5,20);
        EUSART_Tx(EUART0,'p'); // stop
    }

// tx uart
void UartTxLinkList(void)
{
  /***********************************************************
  in cac gia tri duoc gui ve */
  node *head;
  create_node(&head,0,0,0,0,0); // khoi tao node dau tien
/*
 *  dung vong for de  ....................................
 *  Test tx uart lien tuc ( duoi 50000 us se khong kip xu ly )
 */
 for (int k=0;k<10000;k++)
    {
      sl_udelay_wait(50000000);
      add_to_end(head,k+1,k+1,k+1,k+1,k+1);
      print_list(head);
      delete(head,0);

    }
// dung de test loi voi vong lap vo han
//    while (1)
//    {
//      EUSART_Tx(EUART0, '\r');
//      EUSART_Tx(EUART0, '\f');
//    }
}

// chan gpio
void initGPIO(void)
{
 // Enable GPIO Clock
 CMU_ClockEnable(cmuClock_GPIO, true);

 // Configure GPIO pins
 // To avoid false start, configure output as high
 GPIO_PinModeSet(RETARGET_TXPORT, RETARGET_TXPIN, gpioModePushPull, 1);
 GPIO_PinModeSet(RETARGET_RXPORT, RETARGET_RXPIN, gpioModeInput, 0);

 GPIO->EUARTROUTE->ROUTEEN = GPIO_EUART_ROUTEEN_TXPEN;
 GPIO->EUARTROUTE->TXROUTE = (RETARGET_TXPORT
                              << _GPIO_EUART_TXROUTE_PORT_SHIFT)
                             | (RETARGET_TXPIN << _GPIO_EUART_TXROUTE_PIN_SHIFT);
 GPIO->EUARTROUTE->RXROUTE = (RETARGET_RXPORT
                              << _GPIO_EUART_RXROUTE_PORT_SHIFT)
                             | (RETARGET_RXPIN << _GPIO_EUART_RXROUTE_PIN_SHIFT);
}

// nguon uart
void initEUSART0(void)
{
  // Enable EUART0 Clock
  CMU_ClockSelectSet(cmuClock_EUART0, cmuSelect_EM01GRPACLK);
  CMU_ClockEnable(cmuClock_EM01GRPACLK, true);
  CMU_ClockEnable(cmuClock_EUART0, true);

  // Initialize the EUART0 module
  EUSART_UartInit_TypeDef init = EUSART_UART_INIT_DEFAULT_HF;
  init.baudrate = BAUDRATE;
  EUSART_UartInitHf(EUART0, &init);

  // Enable NVIC USART sources
  NVIC_ClearPendingIRQ(EUART0_RX_IRQn);
  NVIC_EnableIRQ(EUART0_RX_IRQn);
  NVIC_ClearPendingIRQ(EUART0_TX_IRQn);
  NVIC_EnableIRQ(EUART0_TX_IRQn);

  EUSART_IntEnable(EUART0, EUSART_IEN_RXFLIEN);
}

int main(void)
{
  app_init();
  initGPIO();
  initEUSART0();
  while (1)
    {
    UartTxLinkList();
    }
}
