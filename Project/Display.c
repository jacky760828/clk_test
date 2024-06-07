/*******************************************************************************
 *
 * Copyright (c) 2016-2026 HYCON Technology, Inc.
 * All rights reserved.
 * HYCON Technology <www.hycontek.com>
 *
 * HYCON reserves the right to amend this code without notice at any time.
 * HYCON assumes no responsibility for any errors appeared in the code,
 * and HYCON disclaims any express or implied warranty, relating to sale
 * and/or use of this code including liability or warranties relating
 * to fitness for a particular purpose, or infringement of any patent,
 * copyright or other intellectual property right.
 *
 * -----------------------------------------------------------------------------
 * Project Name :
 * IDE tooling  :
 * Device Ver.  :
 * Library Ver. :
 * MCU Device   :
 * Description  :
 * Created Date : 2016/10/11
 * Created by   :
 *
 * Program Description:
 *
 ******************************************************************************/
/*----------------------------------------------------------------------------*/
/* Includes                                                                   */
/*----------------------------------------------------------------------------*/
#include "LcdTable.h"
#include "Display.h"
#include "main.h"

/*----------------------------------------------------------------------------*/
/* Global CONSTANTS                                                           */
/*----------------------------------------------------------------------------*/
unsigned char DisplayBuffer[18];

/*----------------------------------------------------------------------------*/
/* Function PROTOTYPES                                                        */
/*----------------------------------------------------------------------------*/
extern void Delay(unsigned int num);


/*----------------------------------------------------------------------------*/
/* Function Name: DisplayInit(void)                                           */
/* Description  : Display init.                                               */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void DisplayInit(void)
{
  DrvLCD_EnableCLK(1,3,0); //LCD CLK=LS_CK
  DrvLCD_VLCDMode(E_VLCD30);
  DrvLCD_LcdDuty (E_LCD_DUTY4);
  DrvLCD_LCDBuffer(ENABLE);
  DrvLCD_LCDEnable(ENABLE);
  DrvLCD_DisplayMode(E_LCD_NORMAL);
  
  DrvLCD_IOMode(E_LCD_PT13LEN,0xFF);  /*Set SEG1/0 to LCD mode*/
  DrvLCD_IOMode(E_LCD_PT6LEN,0xFF);  /*Set PT6 to LCD mode*/
  DrvLCD_IOMode(E_LCD_PT7LEN,0xFF);  /*Set PT7 to LCD mode*/
  DrvLCD_IOMode(E_LCD_PT8LEN,0xFF);  /*Set PT8 to LCD mode*/
  DrvLCD_IOMode(E_LCD_PT9LEN,0xFF);  /*Set PT9 to LCD mode*/
  DrvLCD_IOMode(E_LCD_PT10LEN,0xFF);  /*Set PT10 to LCD mode*/
}

/*----------------------------------------------------------------------------*/
/* Function Name: ClearLCDframe(void)                                         */
/* Description  : Clear LCD RAM Data.                                         */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void ClearLCDframe(void)
{
  int i=0;
  for(i=0;i<11;i++)
  {
    DisplayBuffer[i]=0x00;
  }
  RAM2LCD(DisplayBuffer,11);
}

/*----------------------------------------------------------------------------*/
/* Function Name: DisplayHYcon(void)                                          */
/* Description  : Display HYcon Char.                                         */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void DisplayHYcon(void)
{
  DisplayBuffer[0]=0x00;
  DisplayBuffer[1]=Char_H;
  DisplayBuffer[2]=Char_Y;
  DisplayBuffer[3]=Char_c;
  DisplayBuffer[4]=Char_o;
  DisplayBuffer[5]=Char_n;
  DisplayBuffer[6]=0x00;
  DisplayBuffer[7]=0x00;
  DisplayBuffer[8]=0x00;
  RAM2LCD(DisplayBuffer,11);
}

/*----------------------------------------------------------------------------*/
/* Function Name: DisplayPASS(unsigned char LcdBuffer)                        */
/* Description  : LCD DISPLAY PASS.                                           */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void DisplayPASS(unsigned char LcdBuffer)
{
  DisplayBuffer[0]=Char_P;
  DisplayBuffer[1]=Char_A;
  DisplayBuffer[2]=Char_S;
  DisplayBuffer[3]=Char_S;
  DisplayBuffer[4]=seg[LcdBuffer/10];
  DisplayBuffer[5]=seg[LcdBuffer%10];
  DisplayBuffer[6]=0xF0;
  DisplayBuffer[7]=0x00;
  DisplayBuffer[8]=0xF0;
  RAM2LCD(DisplayBuffer,11);
}

/*----------------------------------------------------------------------------*/
/* Function Name: LCD_DATA_DISPLAY(unsigned int LcdBuffer)                    */
/* Description  : Write to LCD RAM Data.                                      */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void LCD_DATA_DISPLAY(unsigned int LcdBuffer)
{
  int i;
  int8_t MINUS;

  if((LcdBuffer<0)||(LcdBuffer>0x80000000))
  {
    LcdBuffer=~LcdBuffer;
    LcdBuffer++;
    MINUS=1;
  }
  else
  {
    MINUS=0;
  }

  for(i=5;i>=0;i--)
  {
    DisplayBuffer[i]=seg[LcdBuffer%10];
    LcdBuffer=LcdBuffer/10;
  }
  if(MINUS==1)
    DisplayBuffer[6]=S_Minus;
  else
    DisplayBuffer[6]=0x00;

  RAM2LCD(DisplayBuffer,11);
}

/*----------------------------------------------------------------------------*/
/* Function Name: DisplayTest()                                               */
/* Description  : Display Test function.                                      */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void DisplayTest(void)
{
  char count1=1;
  unsigned char DataTxLen1,DataTxLen2;

  for(DataTxLen1=0;DataTxLen1<4;DataTxLen1++)
  {
    for(DataTxLen2=0;DataTxLen2<11;DataTxLen2++)
    {
      DrvLCD_WriteData (DataTxLen2,count1);
      Delay(50000);
    }
    count1=count1<<1;
  }
}

/*----------------------------------------------------------------------------*/
/* Function Name: RAM2LCD(unsigned char *Buffer_Adr, unsigned char length)    */
/* Description  : RAM Data Send to LCD                                        */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void RAM2LCD(unsigned char *Buffer_Adr, unsigned char length)
{
  unsigned char DataTxLen;

  for(DataTxLen=0;DataTxLen<(length+1);DataTxLen++)
  {
    DrvLCD_WriteData (DataTxLen,*Buffer_Adr);
    Buffer_Adr++;
  }
}
