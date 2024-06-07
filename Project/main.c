
#include "HY391apb.h"
#include "DrvCLOCK.h"
#include "DrvLCD.h"
#include "DrvPMU.h"
#include "DrvTimer.h"
#include "Display.h"
#include "main.h"
#include "System.h"
#include "DrvGPIO.h"
unsigned int GPIO_toggle_Bit(unsigned int uport,unsigned char  i32Bit);
void chack_MODE_STATUS(unsigned char Divide_frequency,unsigned int FZ_COUNTER);
/*----------------------------------------------------------------------------*/
/* STRUCTURES                                                                 */
/*----------------------------------------------------------------------------*/
volatile typedef union _MCUSTATUS
{
  char  _byte;
  struct
  {
    unsigned b_TMAdone:1;
    unsigned b_TMBdone:1;
    unsigned b_TMB2done:1;
    unsigned b_TMC0done:1;
    unsigned b_TMC1done:1;
    unsigned b_RTCdone:1;
    unsigned b_WDTdone:1;
    unsigned REV:1;
  };
}MCUSTATUS;

unsigned char a=0,test_32m=1,test_4m=0;
/*----------------------------------------------------------------------------*/
/* DEFINITIONS                                                                */
/*----------------------------------------------------------------------------*/
//OSC
#define HSXT  //External 16MHz
#define HSRC  //Internal HAO
//#define HAO_4MHZ
#define HAO_32MHZ


//#define  TMATEST
//#define  HAO_TMATEST
//#define  TMBTEST
//#define  TMCTEST

/*----------------------------------------------------------------------------*/
/* Global CONSTANTS                                                           */
/*----------------------------------------------------------------------------*/
MCUSTATUS  MCUSTATUSbits;
unsigned int TimerA_count, TimerB_count, TimerC0_count, TimerC1_count;

unsigned char count_rtc_status=4,MODE_STATUS=2,FZ_cb_task=0;



/*----------------------------------------------------------------------------*/
/* Function PROTOTYPES                                                        */
/*----------------------------------------------------------------------------*/
void Delay(unsigned int num);

/*----------------------------------------------------------------------------*/
/* Main Function                                                              */
/*----------------------------------------------------------------------------*/
int main(void)
{
	//enum fz_cb_task FZ_cb_task;
  DrvPMU_VDD15Trim();  // Make sure VDD15 Voltage,before change OSC setting
  DrvGPIO_Open(E_PT1,0x01,E_IO_OUTPUT);          //set PT1.0/PT1.1 INPUT
#if defined(HSRC)
	  DrvCLOCK_EnableHighOSC(E_INTERNAL,1000);     // Select HSRC
	#if defined(HAO_4MHZ)
	  //DrvCLOCK_SelectIHOSC_CalHAO(E_HAO_4M);                 //Select internal 4.147MHz, and calibration 4.147MHz
	  DrvCLOCK_SelectIHOSC(1);
	  DrvCLOCK_SelectMCUClock(E_HSCK,MCUCKDIV1);                //ENMCD=01b,MCU Clock/1, CPU CLOCK IS 'HS_CK/1'
	 // DrvCLOCK_CalibrateHAO(1); //calibrate 4.147MHZ；
	  DrvCLOCK_CalibrateHAO(1);
	  DrvCLOCK_TrimHAO(0x53);
	  //Delay(1000);

	#elif defined(HAO_32MHZ)
	  DrvCLOCK_SelectIHOSC_CalHAO(E_HAO_32M);                 //Select internal 31.795MHz, and calibration 31.795MHz
	  DrvCLOCK_SelectMCUClock(E_HSCK,MCUCKDIV2);                //ENMCD=00b,MCU Clock/2, CPU CLOCK IS 'HS_CK/2'
	  //DrvCLOCK_CalibrateHAO(1);
	  DrvCLOCK_TrimHAO(0x45);
	#endif
#endif
#if defined(HSXT)
//  DrvCLOCK_SelectOHS_HS(1);   //0:HSXT<4MHZ 1:HSXT>4MHZ
//  DrvCLOCK_EnableHighOSC(E_EXTERNAL,50);

    //DrvCLOCK_CloseEHOSC();
    //DrvCLOCK_CloseIHOSC(); //關閉內部高速晶震
    DrvCLOCK_EnableLowOSC(E_EXTERNAL,130000);
   // DrvCLOCK_SelectOHS_HS(0);
//   DrvCLOCK_EnableHighOSC(E_EXTERNAL,100);

    //DrvCLOCK_SelectMCUClock(E_LSCK,MCUCKDIV2);                //ENMCD=01b,MCU Clock/1, CPU CLOCK IS 'HS_CK/1'
#endif

  TimerA_count=0;
//  DisplayInit();
//  ClearLCDframe();
//
//  DisplayHYcon();
  //Delay(10000);

#if defined(TMATEST)
//  DrvTMA_Open(15,1);                             //Timer A Overflow
                                                 //15:taclk/65536/32;TMRDV=÷32
                                                 //1:HS_CK

#elif defined(HAO_TMATEST)
  DrvGPIO_Open(E_PT1,0x01,E_IO_OUTPUT);
    DrvTMA_Open(clk_mod_64,hs_ck);                  // /1024  HS_CB                                             //1:HS_CK
    DrvTIMER_ClearIntFlag(E_TMA);                  //Clear Timer A interrupt flag
    DrvTIMER_EnableInt(E_TMA);                     //Timer A interrupt enable
            //set PT1.0/PT1.1 INPUT
#endif


  //MCUSTATUSbits._byte = 0;
  SYS_EnableGIE(4,0x3BF);                        //Enable GIE(Global Interrupt)

  while(1)                                       //Wait for Interrupt
  {
//    if(MCUSTATUSbits.b_TMAdone==1)
//    {
//    //  LCD_DATA_DISPLAY(TimerA_count);
//      MCUSTATUSbits.b_TMAdone=0;
//    }


//	  if( TimerA_count>29)//512
//	 	   {
//	 	    GPIO_toggle_Bit(1,0);
//	 	    TimerA_count=0;
//	 	    }





	    if(test_32m==1)
	  {

	    	 switch(count_rtc_status)
	    	       {
	    	         case 1:

	    	        	 if(FZ_cb_task==init)
	    	        	  {
	    	        	  DrvTMA_Open(clk_mod_8,hs_ck);   // /1024  HS_CB                                             //1:HS_CK
	    	        	  DrvTIMER_ClearIntFlag(E_TMA);   //Clear Timer A interrupt flag
	    	        	  DrvTIMER_EnableInt(E_TMA);     //Timer A interrupt enable
	    	        	  FZ_cb_task=start;
	    	        	  }
	    	        	 else
	    	        	 {
	    	        	    chack_MODE_STATUS(1,242);//31795000/32/8/512-1
	    	        	 }
	    	        	 break;

	    	         case 2:
	    	        	 if(FZ_cb_task==init)
	    	        	        {
	    	        	        DrvTMA_Open(clk_mod_32,hs_ck);   // /1024  HS_CB                                             //1:HS_CK
	    	        	        DrvTIMER_ClearIntFlag(E_TMA);   //Clear Timer A interrupt flag
	    	        	        DrvTIMER_EnableInt(E_TMA);     //Timer A interrupt enable
	    	        	        FZ_cb_task=start;
	    	        	         }
	    	        	        else
	    	        	        {
	    	        	         chack_MODE_STATUS(2,60);//31795000/32/16/512-1
	    	        	        }
	    	           break;

	    	         case 3:
	    	        	 if(FZ_cb_task==init)
	    	        	       {
	    	        	        DrvTMA_Open(clk_mod_64,hs_ck);   // /1024  HS_CB                                             //1:HS_CK
	    	        	        DrvTIMER_ClearIntFlag(E_TMA);   //Clear Timer A interrupt flag
	    	        	        DrvTIMER_EnableInt(E_TMA);     //Timer A interrupt enable
	    	        	        FZ_cb_task=start;
	    	        	        }
	    	        	        else
	    	        	        {
	    	        	          chack_MODE_STATUS(3,29);
	    	        	        }
	    	        	  break;

	    	         case 4:
	    	        	 if(FZ_cb_task==init)
	    	        	        {
	    	        	         DrvTMA_Open(clk_mod_128,hs_ck);   // /1024  HS_CB                                             //1:HS_CK
	    	        	         DrvTIMER_ClearIntFlag(E_TMA);   //Clear Timer A interrupt flag
	    	        	         DrvTIMER_EnableInt(E_TMA);     //Timer A interrupt enable
	    	        	         FZ_cb_task=start;
	    	        	         }
	    	        	        else
	    	        	        {
	    	        	         chack_MODE_STATUS(4,14);
	    	        	        }

	    	               break;

	    	         default:

	    	        	 break;

	    	       }

	  }
	  else{
       switch(count_rtc_status)
       {
         case 1:

        	 if(FZ_cb_task==init)
        	  {
        	  DrvTMA_Open(clk_mod_4,hs_ck);   // /1024  HS_CB                                             //1:HS_CK
        	  DrvTIMER_ClearIntFlag(E_TMA);   //Clear Timer A interrupt flag
        	  DrvTIMER_EnableInt(E_TMA);     //Timer A interrupt enable
        	  FZ_cb_task=start;
        	  }
        	 else
        	 {
        	       chack_MODE_STATUS(1,64);
        	 }
        	 break;

         case 2:
        	 if(FZ_cb_task==init)
        	        {
        	        DrvTMA_Open(clk_mod_8,hs_ck);   // /1024  HS_CB                                             //1:HS_CK
        	        DrvTIMER_ClearIntFlag(E_TMA);   //Clear Timer A interrupt flag
        	        DrvTIMER_EnableInt(E_TMA);     //Timer A interrupt enable
        	        FZ_cb_task=start;
        	         }
        	        else
        	        {
        	         chack_MODE_STATUS(2,32);
        	        }
           break;

         case 3:
        	 if(FZ_cb_task==init)
        	       {
        	        DrvTMA_Open(clk_mod_16,hs_ck);   // /1024  HS_CB                                             //1:HS_CK
        	        DrvTIMER_ClearIntFlag(E_TMA);   //Clear Timer A interrupt flag
        	        DrvTIMER_EnableInt(E_TMA);     //Timer A interrupt enable
        	        FZ_cb_task=start;
        	        }
        	        else
        	        {
        	          chack_MODE_STATUS(3,16);
        	        }
        	  break;

         case 4:
        	 if(FZ_cb_task==init)
        	        {
        	         DrvTMA_Open(clk_mod_32,hs_ck);   // /1024  HS_CB                                             //1:HS_CK
        	         DrvTIMER_ClearIntFlag(E_TMA);   //Clear Timer A interrupt flag
        	         DrvTIMER_EnableInt(E_TMA);     //Timer A interrupt enable
        	         FZ_cb_task=start;
        	         }
        	        else
        	        {
        	         chack_MODE_STATUS(4,8);
        	        }

               break;

         default:

        	 break;

       }

	  }

    }

}

/*----------------------------------------------------------------------------*/
/* Function Name: HW0_ISR()                                                   */
/* Description  : I2C/UART/SPI interrupt Service Routine (HW0).               */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW0_ISR(void)
{

}

/*----------------------------------------------------------------------------*/
/* Function Name: HW1_ISR()                                                   */
/* Description  : WDT & RTC & Timer A/B/C interrupt Service Routine (HW1).    */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW1_ISR(void)
{
	  if(DrvTIMER_GetIntFlag(E_TMA))
	  {
		DrvTIMER_ClearIntFlag(E_TMA);  // Clear TMA interrupt flag
		//MCUSTATUSbits.b_TMAdone=1;
        TimerA_count+=1;
	  }

}

/*----------------------------------------------------------------------------*/
/* Function Name: HW2_ISR()                                                   */
/* Description  : ADC interrupt Service Routine (HW2).                        */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW2_ISR(void)
{

}
/*----------------------------------------------------------------------------*/
/* Function Name: HW3_ISR()                                                   */
/* Description  : LVD & BOR2 interrupt Service Routine (HW3).                 */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW3_ISR(void)
{

}
/*----------------------------------------------------------------------------*/
/* Function Name: HW4_ISR()                                                   */
/* Description  : PT1 interrupt Service Routine (HW4).                        */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW4_ISR(void)
{

}
/*----------------------------------------------------------------------------*/
/* Function Name: HW5_ISR()                                                   */
/* Description  : PT2 interrupt Service Routine (HW5).                        */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW5_ISR(void)
{

}
/*----------------------------------------------------------------------------*/
/* Function Name: HW7_ISR()                                                   */
/* Description  : UART2 interrupt Service Routine (HW7).                      */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW7_ISR(void)
{

}
/*----------------------------------------------------------------------------*/
/* Function Name: HW8_ISR()                                                   */
/* Description  : TMB2 interrupt Service Routine (HW8).                       */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW8_ISR(void)
{

}
/*----------------------------------------------------------------------------*/
/* Function Name: HW9_ISR()                                                   */
/* Description  : PT3 interrupt Service Routine (HW9).                        */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void HW9_ISR(void)
{

}
/*----------------------------------------------------------------------------*/
/* Function Name: general_exception_handler()                                 */
/* Description  : Exception Service Routines.                                 */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void general_exception_handler()
{
  asm("nop"); //procedure define by customer.
  asm("nop");
  while(1);
}
/*----------------------------------------------------------------------------*/
/* Function Name: debug_exception_handler()                                   */
/* Description  : Exception Service Routines.                                 */
/* Arguments    : None.                                                       */
/* Return Value : None.                                                       */
/* Remark       :                                                             */
/*----------------------------------------------------------------------------*/
void debug_exception_handler()
{
  asm("nop"); //procedure define by customer.
  asm("nop");
  while(1);
}
/*----------------------------------------------------------------------------*/
/* Software Delay Subroutines                                                 */
/*----------------------------------------------------------------------------*/
void Delay(unsigned int num)
{
  for(;num>0;num--)
  asm("NOP");
}

/*----------------------------------------------------------------------------*/
/* End Of File                                                                */
/*----------------------------------------------------------------------------*/


unsigned int GPIO_toggle_Bit (unsigned int uport, unsigned char toggle_bit)
{
  uint32_t l_reg,ReturnVal;
  static uint32_t l_data=0x00000101;
  uint8_t set_toggle;
  set_toggle=1<<toggle_bit;
  //l_data=0x00000101;

  //ReturnVal=0;
//  if (uport==1) {l_reg=PT1_BASE;}
//  else if (uport==2) {l_reg=PT2_BASE;}
//  else if (uport==3) {l_reg=PT3_BASE;}
//  //else if (uport==4) {l_reg=PT4_BASE;}
//  else {ReturnVal=E_DRVGPIO_ARGUMENT2;}
  l_reg=PT1_BASE+OFFSET04;//out_put
  l_data^=(set_toggle);
//  if (i32Bit > 7){ReturnVal=E_DRVGPIO_ARGUMENT2;}
//  else if (i32Bit==0) {l_data=0x00000101;}
//  else if (i32Bit==1) {l_data=0x00000202;}
//  else if (i32Bit==2) {l_data=0x00000404;}
//  else if (i32Bit==3) {l_data=0x00000808;}
//  else if (i32Bit==4) {l_data=0x00001010;}
//  else if (i32Bit==5) {l_data=0x00002020;}
//  else if (i32Bit==6) {l_data=0x00004040;}
//  else if (i32Bit==7) {l_data=0x00008080;}
 // else {ReturnVal=E_DRVGPIO_ARGUMENT2;}
  outw(l_reg,l_data);
  return ReturnVal;
}
void chack_MODE_STATUS(unsigned char Divide_frequency,unsigned int FZ_COUNTER)
{
	//TimerA_count++;
	  switch(Divide_frequency)
	       {
	         case 1://4

	        	  if( TimerA_count>FZ_COUNTER)//512
	        		    {
	        		     GPIO_toggle_Bit(1,0);
	        		     TimerA_count=0;

	        		     }
	        	        //GPIO_toggle_Bit(1,0);
	        	 break;

	         case 2://8
	        	    if(TimerA_count>FZ_COUNTER)//512
	        	 	    {
	        	 	   GPIO_toggle_Bit(1,0);
	        	 	  TimerA_count=0;

	        	 	    }

	           break;


	         case 3://16
	        	 if (TimerA_count>FZ_COUNTER)
	        		    {
	        		       GPIO_toggle_Bit(1,0);
	        		       TimerA_count=0;

	        		     }
	            break;
	         case 4:
	        	 if(TimerA_count>FZ_COUNTER)
	        		  {
	        		     GPIO_toggle_Bit(1,0);
	        		     TimerA_count=0;

	        		   }
	           break;

	        default:

	       break;

	       }




}










