#include "DrvREG32.h"
#include "SpecialMacro.h"

#define  BIT0 0x01
#define  BIT1 0x02
#define  BIT2 0x04
#define  BIT3 0x08
#define  BIT4 0x10
#define  BIT5 0x20
#define  BIT6 0x40
#define  BIT7 0x80



typedef enum
{
  clk_mod_2=0,
  clk_mod_4,
  clk_mod_8,
  clk_mod_16,
  clk_mod_32,
  clk_mod_64,
  clk_mod_128,
  clk_mod_256,
  clk_mod_512,
   clk_mod_1024,
   clk_mod_2048,
   clk_mod_4096,
   clk_mod_8192,
   clk_mod_16384,
   clk_mod_32768,
   clk_mod_65536
}tma_open;

 enum fz_cb_task
{
 init,//0
 start//1

};

typedef enum
{
  none= 0,
  hs_ck,
  hs_cb,
  ls_ck

}CLOCK_SOURCE;
enum DAY { MON = 1 , TUE , WED , THU , FRI , SAT , SUN } ;
