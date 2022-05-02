#include "lora.h"

char buffer[80] ={0};
uint32_t inpos = 0;
void sosanh(char a){
  if (a=='a') // den bat bom bat
          {
          GPIO_PinOutClear(gpioPortC, 1);
          GPIO_PinOutClear(gpioPortC, 2);
          }
        else if (a =='b') // den tat bam tat
          {
          GPIO_PinOutSet(gpioPortC, 1);
          GPIO_PinOutSet(gpioPortC, 2);
          }
        else if (a =='c' ) // den bat bom tat
          {
          GPIO_PinOutClear(gpioPortC, 1);
          GPIO_PinOutSet(gpioPortC, 2);
          }
        else // den tat bom bat
          {
          GPIO_PinOutSet(gpioPortC, 1);
          GPIO_PinOutClear(gpioPortC, 2);
          }
}
void EUART0_RX_IRQHandler(void)
{
  GPIO_PinModeSet(gpioPortC, 1, gpioModePushPull, 0);
  GPIO_PinModeSet(gpioPortC, 2, gpioModePushPull, 0);
  EUSART_Enable(EUART0, (0x1UL << 0) | (0x1UL << 3));
  buffer[inpos] = EUSART_Rx(EUART0);
  char a = buffer[inpos] ;
  sosanh(a);
  EUSART_Enable(EUART0, (0x1UL << 0) | (0x1UL << 2));
  if ((buffer[inpos] != '\n') && (inpos < 80))
    inpos++;

  else{
      inpos = 1;
  }

  // Clear the requesting interrupt before exiting the handler
  EUSART_IntClear(EUART0, EUSART_IF_RXFLIF);
}

/*
 * *************************************************************************************
 */
// khoi tao node


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
// tach ki tu ra khoi 1 so nguyen
void tachphantu ( int arr[], int a)
{
  int i;
  for (i=0; i<=4 ; i++)
    {
       arr[i] = -5;
    }
 i=4;
 if (a==0) arr[i]=0;
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
  int i=k,arr[]={0,0,0,0,0};
          if (data < 0) tachphantu(arr,-data);
          else tachphantu(arr,data);
          string[k] = arr[0] + 48 ;
          string[k+1] = arr[1] + 48 ;
          string[k+2] = arr[2] + 48 ;
          string[k+3] = arr[3] + 48 ;
          string[k+4] = arr[4] + 48 ;
          if (data < 0)
                    {
                       while (string[i]=='+' && i<=k+3) {
                           if (string[i+1]!='+') string[i]='-';
                           i++;
                       }
                    }
                   i=k;
                   while (i<=k+4)
                 {
                    EUSART_Tx(EUART0,string[i]);
                   i++;
                 }
          if (k!=20) EUSART_Tx(EUART0,'/');
}

void deleteList(node** head_ref)
{

    /* deref head_ref to get the real head */
    node* current = *head_ref;
    node* next = NULL;

    while (current != NULL)
    {
        next = current->next;
        free(current);
        current = next;
    }

    /* deref head_ref to affect the real head back
        in the caller. */
    *head_ref = NULL;

}
// in 1 node duoi dang 1 chuoi sap xep
void print_list(node *head) {
    char vuon[] = "v1";
    node *current = head;
 // current = current -> next;
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
void UartTxLinkList(int data1,int data2,int data3,int data4,int data5)
{
  /***********************************************************
  in cac gia tri duoc gui ve */
  node *head;
  create_node(&head,0,0,0,0,0); // khoi tao node dau tien

  sl_udelay_wait(5000000);
  deleteList(&head);
  create_node(&head,data1,data2,data3,data4,data5);
  print_list(head);
  // delete(head,0);
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
 GPIO_PinModeSet(gpioPortC, 1, gpioModePushPull, 0);
 GPIO_PinModeSet(gpioPortC, 2, gpioModePushPull, 0);
 GPIO_PinOutClear(gpioPortC, 1);
 GPIO_PinOutSet(gpioPortC, 2);

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

