
clk_test.adx:     file format elf32-nds32le
clk_test.adx
architecture: n1h_v3m, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00090154

Program Header:
    LOAD off    0x00001000 vaddr 0x00090000 paddr 0x00090000 align 2**12
         filesz 0x0000083e memsz 0x0000083e flags r-x
    LOAD off    0x00002040 vaddr 0x00000040 paddr 0x0009083e align 2**12
         filesz 0x00000008 memsz 0x00000008 flags rw-
    LOAD off    0x00002048 vaddr 0x00000048 paddr 0x00090848 align 2**12
         filesz 0x00000000 memsz 0x00000004 flags rw-
private flags = 40010042: n1 instructions

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         0000083e  00090000  00090000  00001000  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         00000008  00000040  0009083e  00002040  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000004  00000048  00090848  00002048  2**2
                  ALLOC
  3 .debug_info   000004de  00000000  00000000  00002048  2**0
                  CONTENTS, READONLY, DEBUGGING
  4 .debug_abbrev 000001e5  00000000  00000000  00002526  2**0
                  CONTENTS, READONLY, DEBUGGING
  5 .debug_aranges 000000c8  00000000  00000000  0000270b  2**0
                  CONTENTS, READONLY, DEBUGGING
  6 .debug_ranges 000000b8  00000000  00000000  000027d3  2**0
                  CONTENTS, READONLY, DEBUGGING
  7 .debug_line   00000661  00000000  00000000  0000288b  2**0
                  CONTENTS, READONLY, DEBUGGING
  8 .debug_str    00000400  00000000  00000000  00002eec  2**0
                  CONTENTS, READONLY, DEBUGGING
  9 .comment      0000009d  00000000  00000000  000032ec  2**0
                  CONTENTS, READONLY
 10 .debug_frame  0000020c  00000000  00000000  0000338c  2**2
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
00090000 l    d  .text	00000000 .text
00000040 l    d  .data	00000000 .data
00000048 l    d  .bss	00000000 .bss
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_ranges	00000000 .debug_ranges
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    df *ABS*	00000000 /cygdrive/D/Andestech/AndeSight_RDS_v324/peripheral_lib/16F39_src/startup.o
00090000 l       .text	00000000 IVTable
000900ec l       .text	00000000 _start
000900e0 l       .text	00000000 _iiret
00000000 l    df *ABS*	00000000 HY16F39X.c
00090150 l     F .text	00000002 Default_Handler
00000000 l    df *ABS*	00000000 <artificial>
00000040 l     O .data	00000001 test_32m
00000048 l     O .bss	00000004 TimerA_count
00000041 l     O .data	00000001 count_rtc_status
00000042 l     O .data	00000001 FZ_cb_task
00090400 l     F .text	000000a6 chack_MODE_STATUS
000903c6 l     F .text	0000003a GPIO_toggle_Bit
00000044 l     O .data	00000004 l_data.3135
00000000 l    df *ABS*	00000000 DrvTimer.c
00000000 l    df *ABS*	00000000 DrvGPIO.c
00000000 l    df *ABS*	00000000 System.c
00000000 l    df *ABS*	00000000 DrvPMU.c
00000000 l    df *ABS*	00000000 DrvClock.c
00000000 l    df *ABS*	00000000 
00040408 l       *ABS*	00000000 PMU1L
00040800 l       *ABS*	00000000 PT1OE
00000040 l       *ABS*	00000000 _DLM_BASE
00041010 l       *ABS*	00000000 I2CCR4
00040848 l       *ABS*	00000000 GPIOMCR45
00040c08 l       *ABS*	00000000 TMBCR1
0004084c l       *ABS*	00000000 GPIOMCR67
00041110 l       *ABS*	00000000 ADCCR4
00080000 l       *ABS*	00000000 _ILM_SIZE
00040e10 l       *ABS*	00000000 UART2CR0
00040e04 l       *ABS*	00000000 UARTCR1
00041a0c l       *ABS*	00000000 RTCCR3
00040f0c l       *ABS*	00000000 SPICR3
00040808 l       *ABS*	00000000 PT1CR2
00040002 l       *ABS*	00000000 INTCOMH
00040824 l       *ABS*	00000000 PT3CR1
00040308 l       *ABS*	00000000 CLKCR2
00040828 l       *ABS*	00000000 PT3DI
00040e14 l       *ABS*	00000000 UART2CR1
00040c30 l       *ABS*	00000000 PWM2DOD
00041a12 l       *ABS*	00000000 RTCYEAR
00040100 l       *ABS*	00000000 DBGREG
00040c14 l       *ABS*	00000000 TMCCR0
00040894 l       *ABS*	00000000 PTA23CFG
00041a04 l       *ABS*	00000000 RTCCR1
00040610 l       *ABS*	00000000 MEM_FLACRC
00041a08 l       *ABS*	00000000 RTCPMHR
00040604 l       *ABS*	00000000 MEM_FLAOP
00040328 l       *ABS*	00000000 CLKCR8
00040814 l       *ABS*	00000000 PT2CR1
00040870 l       *ABS*	00000000 PT801CFG
00041014 l       *ABS*	00000000 I2CCR5
00040874 l       *ABS*	00000000 PT823CFG
0004086c l       *ABS*	00000000 PT767CFG
00041008 l       *ABS*	00000000 I2CCR2
000408c0 l       *ABS*	00000000 PTD01CFG
00080000 l       *ABS*	00000000 _ILM_BASE
00040840 l       *ABS*	00000000 GPIOMCR01
00040800 l       *ABS*	00000000 PT1CR0
00040816 l       *ABS*	00000000 PT2INPE
0004082c l       *ABS*	00000000 PT3CR3
0004001c l       *ABS*	00000000 INTTMB2
000408cc l       *ABS*	00000000 PTD67CFG
0004110c l       *ABS*	00000000 ADCCR3
000408c4 l       *ABS*	00000000 PTD23CFG
00040014 l       *ABS*	00000000 INTPT2
00041a18 l       *ABS*	00000000 RTCCR6
00040f08 l       *ABS*	00000000 SPICR2
00040826 l       *ABS*	00000000 PT3INPE
00040860 l       *ABS*	00000000 PT701CFG
00000000 l       *UND*	00000000 _arg_init
00040408 l       *ABS*	00000000 PMU1
00040820 l       *ABS*	00000000 PT3OE
00040806 l       *ABS*	00000000 PT1INPE
00040e00 l       *ABS*	00000000 UARTCR0
00041a18 l       *ABS*	00000000 RTCA_MINSEC
00041a14 l       *ABS*	00000000 RTCCR5
00040e0c l       *ABS*	00000000 UARTRX
00040600 l       *ABS*	00000000 MEM_CFGL
00040846 l       *ABS*	00000000 GPIOMCR3
00041a1a l       *ABS*	00000000 RTCA_PMHR
00001fc0 l       *ABS*	00000000 _DLM_SIZE
00041104 l       *ABS*	00000000 ADCCR1
00040844 l       *ABS*	00000000 GPIOMCR2
00040868 l       *ABS*	00000000 PT745CFG
00041a0c l       *ABS*	00000000 RTCSEC
00041006 l       *ABS*	00000000 I2CCR1H
00040c04 l       *ABS*	00000000 TMBCR0
00041010 l       *ABS*	00000000 I2CCR4L
00040c34 l       *ABS*	00000000 TMB2CR2
00040824 l       *ABS*	00000000 PT3DO
00040854 l       *ABS*	00000000 PT623CFG
00000000 l       *ABS*	00000000 _FP_BASE_
00041004 l       *ABS*	00000000 I2CCR1L
00040820 l       *ABS*	00000000 PT3CR0
0004089c l       *ABS*	00000000 PTA67CFG
00040314 l       *ABS*	00000000 CLKCR5
00040602 l       *ABS*	00000000 MEM_CFGH
00040600 l       *ABS*	00000000 MEM_CFG
00000000 l       *UND*	00000000 __pre_c_init
00040c18 l       *ABS*	00000000 TMCCR1
0004088c l       *ABS*	00000000 PT967CFG
00041014 l       *ABS*	00000000 I2CCR5L
00040878 l       *ABS*	00000000 PT845CFG
00040c2c l       *ABS*	00000000 TMB2COD
0004010c l       *ABS*	00000000 SOCRST
00040000 l       *ABS*	00000000 INTCOML
00041a1e l       *ABS*	00000000 RTCA_YEAR
00040310 l       *ABS*	00000000 CLKCR4
00040804 l       *ABS*	00000000 PT1CR1LW
00040104 l       *ABS*	00000000 SOCSTATUSL
00041a00 l       *ABS*	00000000 RTCCR0
000408c8 l       *ABS*	00000000 PTD45CFG
00040812 l       *ABS*	00000000 PT2PU
00040324 l       *ABS*	00000000 CLKCR7
00040844 l       *ABS*	00000000 GPIOMCR23
00040864 l       *ABS*	00000000 PT723CFG
00041004 l       *ABS*	00000000 I2CCR1
0004060c l       *ABS*	00000000 MEM_FLAOPD
00041a1c l       *ABS*	00000000 RTCCR7
00040808 l       *ABS*	00000000 PT1DI
00040888 l       *ABS*	00000000 PT945CFG
0004085c l       *ABS*	00000000 PT667CFG
00041b04 l       *ABS*	00000000 LCDCR1
00040008 l       *ABS*	00000000 INTADC
00040108 l       *ABS*	00000000 WDTCR
00040810 l       *ABS*	00000000 PT2OE
00040c24 l       *ABS*	00000000 TMB2CR0
00040e0c l       *ABS*	00000000 UARTCR3
00000000 l       *UND*	00000000 __post_c_init
00041a16 l       *ABS*	00000000 RTCDAT
00040802 l       *ABS*	00000000 PT1PU
0004100c l       *ABS*	00000000 I2CCR3
00040e1c l       *ABS*	00000000 UART2CR3
00041a10 l       *ABS*	00000000 RTCCR4
0004040c l       *ABS*	00000000 PMU2
00040814 l       *ABS*	00000000 PT2DO
00040010 l       *ABS*	00000000 INTPT1
00041100 l       *ABS*	00000000 ADCCR0
00041a0e l       *ABS*	00000000 RTCMIN
0004087c l       *ABS*	00000000 PT867CFG
00040c10 l       *ABS*	00000000 PWMDOD
00041a1c l       *ABS*	00000000 RTCA_MONDAT
0004000c l       *ABS*	00000000 INTLVD
00040c28 l       *ABS*	00000000 TMB2CR1
00040e18 l       *ABS*	00000000 UART2CR2
00040e08 l       *ABS*	00000000 UARTCR2
00041a08 l       *ABS*	00000000 RTCCR2
00040804 l       *ABS*	00000000 PT1CR1
00040818 l       *ABS*	00000000 PT2DI
00040828 l       *ABS*	00000000 PT3CR2
00040320 l       *ABS*	00000000 CLKCR6
00040304 l       *ABS*	00000000 CLKCR1
00001fc0 l       *ABS*	00000000 _estack
00040018 l       *ABS*	00000000 INTUART2
00040f00 l       *ABS*	00000000 SPICR0
00041a14 l       *ABS*	00000000 RTCWDA
00040884 l       *ABS*	00000000 PT923CFG
00040100 l       *ABS*	00000000 DBGREGL
00040c00 l       *ABS*	00000000 TMACR
0000004c l       .bss	00000000 _end
00040818 l       *ABS*	00000000 PT2CR2
00040300 l       *ABS*	00000000 CLKCR0
00040102 l       *ABS*	00000000 DBGREGH
00040890 l       *ABS*	00000000 PTA01CFG
00041a10 l       *ABS*	00000000 RTCMONTH
00040614 l       *ABS*	00000000 MEM_FLAPWD
00040898 l       *ABS*	00000000 PTA45CFG
00040020 l       *ABS*	00000000 INTPT3
00040804 l       *ABS*	00000000 PT1DO
00040c0c l       *ABS*	00000000 TMBCOD
00000000 l       *UND*	00000000 _stack
00041b08 l       *ABS*	00000000 LCDCR2
00041108 l       *ABS*	00000000 ADCCR2
00040606 l       *ABS*	00000000 MEM_FLAOPH
00040822 l       *ABS*	00000000 PT3PU
00041000 l       *ABS*	00000000 I2CCR0
0004030c l       *ABS*	00000000 CLKCR3
00040000 l       *ABS*	00000000 INTCOM
00040004 l       *ABS*	00000000 INTTMR
00040604 l       *ABS*	00000000 MEM_FLAOPL
00040e0e l       *ABS*	00000000 UARTTX
00040f04 l       *ABS*	00000000 SPICR1
00040104 l       *ABS*	00000000 SOCSTATUS
00040850 l       *ABS*	00000000 PT601CFG
00040810 l       *ABS*	00000000 PT2CR0
0004081c l       *ABS*	00000000 PT2CR3
00040400 l       *ABS*	00000000 PMU0
00040880 l       *ABS*	00000000 PT901CFG
00000000 l       *UND*	00000000 _call_exit
00040858 l       *ABS*	00000000 PT645CFG
0004080c l       *ABS*	00000000 PT1CR3
00041b00 l       *ABS*	00000000 LCDCR0
00040104 l       *ABS*	00000000 SOC
0009071e g     F .text	0000004a DrvCLOCK_EnableHighOSC
000903a4 g     F .text	00000002 HW2_ISR
0009051c g     F .text	0000005a DrvTIMER_GetIntFlag
0009083e g       .text	00000000 _sidata
00090382 g     F .text	00000022 HW1_ISR
00000048 g       .bss	00000000 _sbss
00090768 g     F .text	00000060 DrvCLOCK_SelectIHOSC_CalHAO
000907c8 g     F .text	00000032 DrvCLOCK_EnableLowOSC
0009083e g       .text	00000000 _sromdev
000903b0 g     F .text	00000002 HW9_ISR
000904d2 g     F .text	0000004a DrvTIMER_EnableInt
00000040 g       .data	00000000 _sdata
000903aa g     F .text	00000002 HW5_ISR
000903a8 g     F .text	00000002 HW4_ISR
0000004c g       .bss	00000000 _ebss
000907fa g     F .text	0000002a DrvCLOCK_SelectMCUClock
000903ac g     F .text	00000002 HW7_ISR
00090120 g     F .text	00000030 initData
00040000 g       *ABS*	00000000 _SDA_BASE_
00090380 g     F .text	00000002 HW0_ISR
00090576 g     F .text	00000052 DrvTIMER_ClearIntFlag
000903bc g     F .text	0000000a debug_exception_handler
0009083e g       .text	00000000 _eromdev
00090000  w      .text	00000000 _RELAX_END_
00090154 g     F .text	0000022a main
000903a6 g     F .text	00000002 HW3_ISR
000906c8 g     F .text	0000003e SYS_EnableGIE
00000048 g       .data	00000000 _edata
000903ae g     F .text	00000002 HW8_ISR
00090150  w    F .text	00000002 HW6_ISR
000904a8 g     F .text	0000002a DrvTMA_Open
00090150  w    F .text	00000002 syscall_handler
00090706 g     F .text	00000018 DrvPMU_VDD15Trim
00090824 g     F .text	0000001a DrvCLOCK_TrimHAO
000905c8 g     F .text	00000100 DrvGPIO_Open
000903b2 g     F .text	0000000a general_exception_handler


No such file or directory

Disassembly of section .text:

00090000 <_RELAX_END_>:
   90000:	48 00 00 76 	j 900ec <_start>
   90004:	40 00 00 09 	nop
   90008:	40 00 00 09 	nop
   9000c:	40 00 00 09 	nop
   90010:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   90014:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   90018:	49 00 01 d2 	jal 903bc <debug_exception_handler>
   9001c:	d5 62       	j8 900e0 <_iiret>
   9001e:	92 00       	nop16
   90020:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   90024:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   90028:	49 00 01 c5 	jal 903b2 <general_exception_handler>
   9002c:	d5 5a       	j8 900e0 <_iiret>
   9002e:	92 00       	nop16
   90030:	3a 1f ab bc 	smw.adm $r1,[$sp],$r10,#0xe    ! {$r1~$r10, $fp, $gp, $lp}
   90034:	49 00 00 8e 	jal 90150 <HW6_ISR>
   90038:	3a 1f ab 84 	lmw.bim $r1,[$sp],$r10,#0xe    ! {$r1~$r10, $fp, $gp, $lp}
   9003c:	64 00 00 04 	iret
   90040:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   90044:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   90048:	49 00 01 9c 	jal 90380 <HW0_ISR>
   9004c:	d5 4a       	j8 900e0 <_iiret>
   9004e:	92 00       	nop16
   90050:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   90054:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   90058:	49 00 01 95 	jal 90382 <HW1_ISR>
   9005c:	d5 42       	j8 900e0 <_iiret>
   9005e:	92 00       	nop16
   90060:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   90064:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   90068:	49 00 01 9e 	jal 903a4 <HW2_ISR>
   9006c:	d5 3a       	j8 900e0 <_iiret>
   9006e:	92 00       	nop16
   90070:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   90074:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   90078:	49 00 01 97 	jal 903a6 <HW3_ISR>
   9007c:	d5 32       	j8 900e0 <_iiret>
   9007e:	92 00       	nop16
   90080:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   90084:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   90088:	49 00 01 90 	jal 903a8 <HW4_ISR>
   9008c:	d5 2a       	j8 900e0 <_iiret>
   9008e:	92 00       	nop16
   90090:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   90094:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   90098:	49 00 01 89 	jal 903aa <HW5_ISR>
   9009c:	d5 22       	j8 900e0 <_iiret>
   9009e:	92 00       	nop16
   900a0:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   900a4:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   900a8:	49 00 00 54 	jal 90150 <HW6_ISR>
   900ac:	d5 1a       	j8 900e0 <_iiret>
   900ae:	92 00       	nop16
   900b0:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   900b4:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   900b8:	49 00 01 7a 	jal 903ac <HW7_ISR>
   900bc:	d5 12       	j8 900e0 <_iiret>
   900be:	92 00       	nop16
   900c0:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   900c4:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   900c8:	49 00 01 73 	jal 903ae <HW8_ISR>
   900cc:	d5 0a       	j8 900e0 <_iiret>
   900ce:	92 00       	nop16
   900d0:	3a ff bf bc 	smw.adm $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   900d4:	3a 0f a8 3c 	smw.adm $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   900d8:	49 00 01 6c 	jal 903b0 <HW9_ISR>
   900dc:	d5 02       	j8 900e0 <_iiret>
   900de:	92 00       	nop16

000900e0 <_iiret>:
   900e0:	3a 0f a8 04 	lmw.bim $r0,[$sp],$r10,#0x0    ! {$r0~$r10}
   900e4:	3a ff bf 84 	lmw.bim $r15,[$sp],$r15,#0xe    ! {$r15, $fp, $gp, $lp}
   900e8:	64 00 00 04 	iret

000900ec <_start>:
   900ec:	47 d0 00 40 	sethi $gp,#0x40
   900f0:	59 de 80 00 	ori $gp,$gp,#0x0
   900f4:	45 f0 20 00 	movi $sp,#0x2000
   900f8:	64 02 00 02 	mfsr $r0,$psw
   900fc:	44 18 ff e0 	movi $r1,#-458784
   90100:	44 27 00 08 	movi $r2,#0x70008
   90104:	fe 0e       	and33 $r0,$r1
   90106:	fe 17       	or33 $r0,$r2
   90108:	64 02 00 03 	mtsr $r0,$psw
   9010c:	84 01       	movi55 $r0,#0x1
   9010e:	64 04 e0 03 	mtsr $r0,$dlmb
   90112:	49 00 00 07 	jal 90120 <initData>
   90116:	49 00 00 1f 	jal 90154 <main>
   9011a:	d5 00       	j8 9011a <_start+0x2e>
   9011c:	40 00 00 09 	nop

00090120 <initData>:
   90120:	44 10 00 40 	movi $r1,#0x40
   90124:	44 30 00 48 	movi $r3,#0x48
   90128:	4c 30 80 0e 	beq $r3,$r1,90144 <initData+0x24>
   9012c:	46 00 00 90 	sethi $r0,#0x90
   90130:	58 00 08 3e 	ori $r0,$r0,#0x83e
   90134:	8a 61       	sub45 $r3,$r1
   90136:	88 60       	add45 $r3,$r0
   90138:	08 20 00 01 	lbi.bi $r2,[$r0],#0x1
   9013c:	18 20 80 01 	sbi.bi $r2,[$r1],#0x1
   90140:	4c 01 ff fc 	bne $r0,$r3,90138 <initData+0x18>
   90144:	44 04 03 00 	movi $r0,#0x40300
   90148:	44 10 ff 01 	movi $r1,#0xff01
   9014c:	b6 20       	swi450 $r1,[$r0]
   9014e:	dd 9e       	ret5 $lp

00090150 <HW6_ISR>:
   90150:	d5 00       	j8 90150 <HW6_ISR>
   90152:	92 00       	nop16

00090154 <main>:
   90154:	3a 6f 98 bc 	smw.adm $r6,[$sp],$r6,#0x2    ! {$r6, $lp}
   90158:	49 00 02 d7 	jal 90706 <DrvPMU_VDD15Trim>
   9015c:	84 01       	movi55 $r0,#0x1
   9015e:	84 21       	movi55 $r1,#0x1
   90160:	84 41       	movi55 $r2,#0x1
   90162:	49 00 02 33 	jal 905c8 <DrvGPIO_Open>
   90166:	84 00       	movi55 $r0,#0x0
   90168:	44 10 03 e8 	movi $r1,#0x3e8
   9016c:	49 00 02 d9 	jal 9071e <DrvCLOCK_EnableHighOSC>
   90170:	84 03       	movi55 $r0,#0x3
   90172:	49 00 02 fb 	jal 90768 <DrvCLOCK_SelectIHOSC_CalHAO>
   90176:	84 00       	movi55 $r0,#0x0
   90178:	84 20       	movi55 $r1,#0x0
   9017a:	49 00 03 40 	jal 907fa <DrvCLOCK_SelectMCUClock>
   9017e:	44 00 00 45 	movi $r0,#0x45
   90182:	49 00 03 51 	jal 90824 <DrvCLOCK_TrimHAO>
   90186:	84 01       	movi55 $r0,#0x1
   90188:	44 11 fb d0 	movi $r1,#0x1fbd0
   9018c:	49 00 03 1e 	jal 907c8 <DrvCLOCK_EnableLowOSC>
   90190:	84 00       	movi55 $r0,#0x0
   90192:	3c 0f 00 12 	swi.gp $r0,[+#-262072]
   90196:	84 04       	movi55 $r0,#0x4
   90198:	44 10 03 bf 	movi $r1,#0x3bf
   9019c:	49 00 02 96 	jal 906c8 <SYS_EnableGIE>
   901a0:	2e 04 00 40 	lbi.gp $r0,[+#-262080]
   901a4:	5a 00 01 04 	beqc $r0,#0x1,901ac <main+0x58>
   901a8:	48 00 00 72 	j 9028c <main+0x138>
   901ac:	2e 04 00 41 	lbi.gp $r0,[+#-262079]
   901b0:	80 20       	mov55 $r1,$r0
   901b2:	84 1f       	movi55 $r0,#-1
   901b4:	88 01       	add45 $r0,$r1
   901b6:	e6 04       	slti45 $r0,#0x4
   901b8:	e8 f4       	beqzs8 901a0 <main+0x4c>
   901ba:	46 f0 00 90 	sethi $r15,#0x90
   901be:	58 f7 81 c8 	ori $r15,$r15,#0x1c8
   901c2:	38 07 82 02 	lw $r0,[$r15+($r0<<#0x2)]
   901c6:	dd 00       	jr5 $r0
   901c8:	d8 01 09 00 	.word	0x000901d8
   901cc:	06 02 09 00 	.word	0x00090206
   901d0:	34 02 09 00 	.word	0x00090234
   901d4:	60 02 09 00 	.word	0x00090260
   901d8:	2e 04 00 42 	lbi.gp $r0,[+#-262078]
   901dc:	c8 0f       	bnez38 $r0,901fa <main+0xa6>
   901de:	84 02       	movi55 $r0,#0x2
   901e0:	84 21       	movi55 $r1,#0x1
   901e2:	49 00 01 63 	jal 904a8 <DrvTMA_Open>
   901e6:	84 00       	movi55 $r0,#0x0
   901e8:	49 00 01 c7 	jal 90576 <DrvTIMER_ClearIntFlag>
   901ec:	84 00       	movi55 $r0,#0x0
   901ee:	49 00 01 72 	jal 904d2 <DrvTIMER_EnableInt>
   901f2:	84 01       	movi55 $r0,#0x1
   901f4:	3e 04 00 42 	sbi.gp $r0,[+#-262078]
   901f8:	d5 d4       	j8 901a0 <main+0x4c>
   901fa:	84 01       	movi55 $r0,#0x1
   901fc:	44 10 00 f2 	movi $r1,#0xf2
   90200:	49 00 01 00 	jal 90400 <chack_MODE_STATUS>
   90204:	d5 ce       	j8 901a0 <main+0x4c>
   90206:	2e 04 00 42 	lbi.gp $r0,[+#-262078]
   9020a:	c8 0f       	bnez38 $r0,90228 <main+0xd4>
   9020c:	84 04       	movi55 $r0,#0x4
   9020e:	84 21       	movi55 $r1,#0x1
   90210:	49 00 01 4c 	jal 904a8 <DrvTMA_Open>
   90214:	84 00       	movi55 $r0,#0x0
   90216:	49 00 01 b0 	jal 90576 <DrvTIMER_ClearIntFlag>
   9021a:	84 00       	movi55 $r0,#0x0
   9021c:	49 00 01 5b 	jal 904d2 <DrvTIMER_EnableInt>
   90220:	84 01       	movi55 $r0,#0x1
   90222:	3e 04 00 42 	sbi.gp $r0,[+#-262078]
   90226:	d5 bd       	j8 901a0 <main+0x4c>
   90228:	84 02       	movi55 $r0,#0x2
   9022a:	44 10 00 3c 	movi $r1,#0x3c
   9022e:	49 00 00 e9 	jal 90400 <chack_MODE_STATUS>
   90232:	d5 b7       	j8 901a0 <main+0x4c>
   90234:	2e 04 00 42 	lbi.gp $r0,[+#-262078]
   90238:	c8 0f       	bnez38 $r0,90256 <main+0x102>
   9023a:	84 05       	movi55 $r0,#0x5
   9023c:	84 21       	movi55 $r1,#0x1
   9023e:	49 00 01 35 	jal 904a8 <DrvTMA_Open>
   90242:	84 00       	movi55 $r0,#0x0
   90244:	49 00 01 99 	jal 90576 <DrvTIMER_ClearIntFlag>
   90248:	84 00       	movi55 $r0,#0x0
   9024a:	49 00 01 44 	jal 904d2 <DrvTIMER_EnableInt>
   9024e:	84 01       	movi55 $r0,#0x1
   90250:	3e 04 00 42 	sbi.gp $r0,[+#-262078]
   90254:	d5 a6       	j8 901a0 <main+0x4c>
   90256:	84 03       	movi55 $r0,#0x3
   90258:	fa 2d       	movpi45 $r1,#0x1d
   9025a:	49 00 00 d3 	jal 90400 <chack_MODE_STATUS>
   9025e:	d5 a1       	j8 901a0 <main+0x4c>
   90260:	2e 04 00 42 	lbi.gp $r0,[+#-262078]
   90264:	c8 0f       	bnez38 $r0,90282 <main+0x12e>
   90266:	84 06       	movi55 $r0,#0x6
   90268:	84 21       	movi55 $r1,#0x1
   9026a:	49 00 01 1f 	jal 904a8 <DrvTMA_Open>
   9026e:	84 00       	movi55 $r0,#0x0
   90270:	49 00 01 83 	jal 90576 <DrvTIMER_ClearIntFlag>
   90274:	84 00       	movi55 $r0,#0x0
   90276:	49 00 01 2e 	jal 904d2 <DrvTIMER_EnableInt>
   9027a:	84 01       	movi55 $r0,#0x1
   9027c:	3e 04 00 42 	sbi.gp $r0,[+#-262078]
   90280:	d5 90       	j8 901a0 <main+0x4c>
   90282:	84 04       	movi55 $r0,#0x4
   90284:	84 2e       	movi55 $r1,#0xe
   90286:	49 00 00 bd 	jal 90400 <chack_MODE_STATUS>
   9028a:	d5 8b       	j8 901a0 <main+0x4c>
   9028c:	2e 04 00 41 	lbi.gp $r0,[+#-262079]
   90290:	80 20       	mov55 $r1,$r0
   90292:	84 1f       	movi55 $r0,#-1
   90294:	88 01       	add45 $r0,$r1
   90296:	e6 04       	slti45 $r0,#0x4
   90298:	4e f2 ff 84 	beqz $r15,901a0 <main+0x4c>
   9029c:	46 f0 00 90 	sethi $r15,#0x90
   902a0:	58 f7 82 ac 	ori $r15,$r15,#0x2ac
   902a4:	38 07 82 02 	lw $r0,[$r15+($r0<<#0x2)]
   902a8:	4a 00 00 00 	jr $r0
   902ac:	bc 02 09 00 	.word	0x000902bc
   902b0:	ee 02 09 00 	.word	0x000902ee
   902b4:	1e 03 09 00 	.word	0x0009031e
   902b8:	4e 03 09 00 	.word	0x0009034e
   902bc:	2e 04 00 42 	lbi.gp $r0,[+#-262078]
   902c0:	c8 10       	bnez38 $r0,902e0 <main+0x18c>
   902c2:	84 01       	movi55 $r0,#0x1
   902c4:	84 21       	movi55 $r1,#0x1
   902c6:	49 00 00 f1 	jal 904a8 <DrvTMA_Open>
   902ca:	84 00       	movi55 $r0,#0x0
   902cc:	49 00 01 55 	jal 90576 <DrvTIMER_ClearIntFlag>
   902d0:	84 00       	movi55 $r0,#0x0
   902d2:	49 00 01 00 	jal 904d2 <DrvTIMER_EnableInt>
   902d6:	84 01       	movi55 $r0,#0x1
   902d8:	3e 04 00 42 	sbi.gp $r0,[+#-262078]
   902dc:	48 ff ff 62 	j 901a0 <main+0x4c>
   902e0:	84 01       	movi55 $r0,#0x1
   902e2:	44 10 00 40 	movi $r1,#0x40
   902e6:	49 00 00 8d 	jal 90400 <chack_MODE_STATUS>
   902ea:	48 ff ff 5b 	j 901a0 <main+0x4c>
   902ee:	2e 04 00 42 	lbi.gp $r0,[+#-262078]
   902f2:	c8 10       	bnez38 $r0,90312 <main+0x1be>
   902f4:	84 02       	movi55 $r0,#0x2
   902f6:	84 21       	movi55 $r1,#0x1
   902f8:	49 00 00 d8 	jal 904a8 <DrvTMA_Open>
   902fc:	84 00       	movi55 $r0,#0x0
   902fe:	49 00 01 3c 	jal 90576 <DrvTIMER_ClearIntFlag>
   90302:	84 00       	movi55 $r0,#0x0
   90304:	49 00 00 e7 	jal 904d2 <DrvTIMER_EnableInt>
   90308:	84 01       	movi55 $r0,#0x1
   9030a:	3e 04 00 42 	sbi.gp $r0,[+#-262078]
   9030e:	48 ff ff 49 	j 901a0 <main+0x4c>
   90312:	84 02       	movi55 $r0,#0x2
   90314:	fa 30       	movpi45 $r1,#0x20
   90316:	49 00 00 75 	jal 90400 <chack_MODE_STATUS>
   9031a:	48 ff ff 43 	j 901a0 <main+0x4c>
   9031e:	2e 04 00 42 	lbi.gp $r0,[+#-262078]
   90322:	c8 10       	bnez38 $r0,90342 <main+0x1ee>
   90324:	84 03       	movi55 $r0,#0x3
   90326:	84 21       	movi55 $r1,#0x1
   90328:	49 00 00 c0 	jal 904a8 <DrvTMA_Open>
   9032c:	84 00       	movi55 $r0,#0x0
   9032e:	49 00 01 24 	jal 90576 <DrvTIMER_ClearIntFlag>
   90332:	84 00       	movi55 $r0,#0x0
   90334:	49 00 00 cf 	jal 904d2 <DrvTIMER_EnableInt>
   90338:	84 01       	movi55 $r0,#0x1
   9033a:	3e 04 00 42 	sbi.gp $r0,[+#-262078]
   9033e:	48 ff ff 31 	j 901a0 <main+0x4c>
   90342:	84 03       	movi55 $r0,#0x3
   90344:	fa 20       	movpi45 $r1,#0x10
   90346:	49 00 00 5d 	jal 90400 <chack_MODE_STATUS>
   9034a:	48 ff ff 2b 	j 901a0 <main+0x4c>
   9034e:	2e 04 00 42 	lbi.gp $r0,[+#-262078]
   90352:	c8 10       	bnez38 $r0,90372 <main+0x21e>
   90354:	84 04       	movi55 $r0,#0x4
   90356:	84 21       	movi55 $r1,#0x1
   90358:	49 00 00 a8 	jal 904a8 <DrvTMA_Open>
   9035c:	84 00       	movi55 $r0,#0x0
   9035e:	49 00 01 0c 	jal 90576 <DrvTIMER_ClearIntFlag>
   90362:	84 00       	movi55 $r0,#0x0
   90364:	49 00 00 b7 	jal 904d2 <DrvTIMER_EnableInt>
   90368:	84 01       	movi55 $r0,#0x1
   9036a:	3e 04 00 42 	sbi.gp $r0,[+#-262078]
   9036e:	48 ff ff 19 	j 901a0 <main+0x4c>
   90372:	84 04       	movi55 $r0,#0x4
   90374:	84 28       	movi55 $r1,#0x8
   90376:	49 00 00 45 	jal 90400 <chack_MODE_STATUS>
   9037a:	48 ff ff 13 	j 901a0 <main+0x4c>
   9037e:	92 00       	nop16

00090380 <HW0_ISR>:
   90380:	dd 9e       	ret5 $lp

00090382 <HW1_ISR>:
   90382:	3a 6f 98 bc 	smw.adm $r6,[$sp],$r6,#0x2    ! {$r6, $lp}
   90386:	84 00       	movi55 $r0,#0x0
   90388:	49 00 00 ca 	jal 9051c <DrvTIMER_GetIntFlag>
   9038c:	c0 09       	beqz38 $r0,9039e <HW1_ISR+0x1c>
   9038e:	84 00       	movi55 $r0,#0x0
   90390:	49 00 00 f3 	jal 90576 <DrvTIMER_ClearIntFlag>
   90394:	3c 0d 00 12 	lwi.gp $r0,[+#-262072]
   90398:	8c 01       	addi45 $r0,#0x1
   9039a:	3c 0f 00 12 	swi.gp $r0,[+#-262072]
   9039e:	3a 6f 98 84 	lmw.bim $r6,[$sp],$r6,#0x2    ! {$r6, $lp}
   903a2:	dd 9e       	ret5 $lp

000903a4 <HW2_ISR>:
   903a4:	dd 9e       	ret5 $lp

000903a6 <HW3_ISR>:
   903a6:	dd 9e       	ret5 $lp

000903a8 <HW4_ISR>:
   903a8:	dd 9e       	ret5 $lp

000903aa <HW5_ISR>:
   903aa:	dd 9e       	ret5 $lp

000903ac <HW7_ISR>:
   903ac:	dd 9e       	ret5 $lp

000903ae <HW8_ISR>:
   903ae:	dd 9e       	ret5 $lp

000903b0 <HW9_ISR>:
   903b0:	dd 9e       	ret5 $lp

000903b2 <general_exception_handler>:
   903b2:	40 00 00 09 	nop
   903b6:	40 00 00 09 	nop
   903ba:	d5 00       	j8 903ba <general_exception_handler+0x8>

000903bc <debug_exception_handler>:
   903bc:	40 00 00 09 	nop
   903c0:	40 00 00 09 	nop
   903c4:	d5 00       	j8 903c4 <debug_exception_handler+0x8>

000903c6 <GPIO_toggle_Bit>:
   903c6:	ef e8       	addi10.sp #-24
   903c8:	f0 81       	swi37.sp $r0,[+#0x4]
   903ca:	80 01       	mov55 $r0,$r1
   903cc:	10 0f 80 03 	sbi $r0,[$sp+#0x3]
   903d0:	00 0f 80 03 	lbi $r0,[$sp+#0x3]
   903d4:	84 21       	movi55 $r1,#0x1
   903d6:	40 00 80 0c 	sll $r0,$r1,$r0
   903da:	10 0f 80 17 	sbi $r0,[$sp+#0x17]
   903de:	44 04 08 04 	movi $r0,#0x40804
   903e2:	f0 84       	swi37.sp $r0,[+#0x10]
   903e4:	00 1f 80 17 	lbi $r1,[$sp+#0x17]
   903e8:	3c 0d 00 11 	lwi.gp $r0,[+#-262076]
   903ec:	fe 0d       	xor33 $r0,$r1
   903ee:	3c 0f 00 11 	swi.gp $r0,[+#-262076]
   903f2:	f0 04       	lwi37.sp $r0,[+#0x10]
   903f4:	3c 1d 00 11 	lwi.gp $r1,[+#-262076]
   903f8:	b6 20       	swi450 $r1,[$r0]
   903fa:	f0 03       	lwi37.sp $r0,[+#0xc]
   903fc:	ec 18       	addi10.sp #0x18
   903fe:	dd 9e       	ret5 $lp

00090400 <chack_MODE_STATUS>:
   90400:	3b ff fc bc 	smw.adm $sp,[$sp],$sp,#0x2    ! {$lp}
   90404:	ef f4       	addi10.sp #-12
   90406:	b6 3f       	swi450 $r1,[$sp]
   90408:	10 0f 80 07 	sbi $r0,[$sp+#0x7]
   9040c:	00 1f 80 07 	lbi $r1,[$sp+#0x7]
   90410:	84 1f       	movi55 $r0,#-1
   90412:	88 01       	add45 $r0,$r1
   90414:	e6 04       	slti45 $r0,#0x4
   90416:	e8 44       	beqzs8 9049e <chack_MODE_STATUS+0x9e>
   90418:	46 f0 00 90 	sethi $r15,#0x90
   9041c:	58 f7 84 28 	ori $r15,$r15,#0x428
   90420:	38 07 82 02 	lw $r0,[$r15+($r0<<#0x2)]
   90424:	4a 00 00 00 	jr $r0
   90428:	38 04 09 00 	.word	0x00090438
   9042c:	52 04 09 00 	.word	0x00090452
   90430:	6c 04 09 00 	.word	0x0009046c
   90434:	86 04 09 00 	.word	0x00090486
   90438:	3c 0d 00 12 	lwi.gp $r0,[+#-262072]
   9043c:	b4 3f       	lwi450 $r1,[$sp]
   9043e:	e2 20       	slt45 $r1,$r0
   90440:	e8 2f       	beqzs8 9049e <chack_MODE_STATUS+0x9e>
   90442:	84 01       	movi55 $r0,#0x1
   90444:	84 20       	movi55 $r1,#0x0
   90446:	49 ff ff c0 	jal 903c6 <GPIO_toggle_Bit>
   9044a:	84 00       	movi55 $r0,#0x0
   9044c:	3c 0f 00 12 	swi.gp $r0,[+#-262072]
   90450:	d5 27       	j8 9049e <chack_MODE_STATUS+0x9e>
   90452:	3c 0d 00 12 	lwi.gp $r0,[+#-262072]
   90456:	b4 3f       	lwi450 $r1,[$sp]
   90458:	e2 20       	slt45 $r1,$r0
   9045a:	e8 22       	beqzs8 9049e <chack_MODE_STATUS+0x9e>
   9045c:	84 01       	movi55 $r0,#0x1
   9045e:	84 20       	movi55 $r1,#0x0
   90460:	49 ff ff b3 	jal 903c6 <GPIO_toggle_Bit>
   90464:	84 00       	movi55 $r0,#0x0
   90466:	3c 0f 00 12 	swi.gp $r0,[+#-262072]
   9046a:	d5 1a       	j8 9049e <chack_MODE_STATUS+0x9e>
   9046c:	3c 0d 00 12 	lwi.gp $r0,[+#-262072]
   90470:	b4 3f       	lwi450 $r1,[$sp]
   90472:	e2 20       	slt45 $r1,$r0
   90474:	e8 15       	beqzs8 9049e <chack_MODE_STATUS+0x9e>
   90476:	84 01       	movi55 $r0,#0x1
   90478:	84 20       	movi55 $r1,#0x0
   9047a:	49 ff ff a6 	jal 903c6 <GPIO_toggle_Bit>
   9047e:	84 00       	movi55 $r0,#0x0
   90480:	3c 0f 00 12 	swi.gp $r0,[+#-262072]
   90484:	d5 0d       	j8 9049e <chack_MODE_STATUS+0x9e>
   90486:	3c 0d 00 12 	lwi.gp $r0,[+#-262072]
   9048a:	b4 3f       	lwi450 $r1,[$sp]
   9048c:	e2 20       	slt45 $r1,$r0
   9048e:	e8 08       	beqzs8 9049e <chack_MODE_STATUS+0x9e>
   90490:	84 01       	movi55 $r0,#0x1
   90492:	84 20       	movi55 $r1,#0x0
   90494:	49 ff ff 99 	jal 903c6 <GPIO_toggle_Bit>
   90498:	84 00       	movi55 $r0,#0x0
   9049a:	3c 0f 00 12 	swi.gp $r0,[+#-262072]
   9049e:	ec 0c       	addi10.sp #0xc
   904a0:	3b ff fc 84 	lmw.bim $sp,[$sp],$sp,#0x2    ! {$lp}
   904a4:	dd 9e       	ret5 $lp
   904a6:	92 00       	nop16

000904a8 <DrvTMA_Open>:
   904a8:	e6 10       	slti45 $r0,#0x10
   904aa:	e8 08       	beqzs8 904ba <DrvTMA_Open+0x12>
   904ac:	44 24 0c 00 	movi $r2,#0x40c00
   904b0:	50 00 2f 20 	addi $r0,$r0,#0x2f20
   904b4:	b6 02       	swi450 $r0,[$r2]
   904b6:	84 00       	movi55 $r0,#0x0
   904b8:	d5 02       	j8 904bc <DrvTMA_Open+0x14>
   904ba:	84 01       	movi55 $r0,#0x1
   904bc:	e6 24       	slti45 $r1,#0x4
   904be:	e8 08       	beqzs8 904ce <DrvTMA_Open+0x26>
   904c0:	44 24 03 08 	movi $r2,#0x40308
   904c4:	50 10 83 00 	addi $r1,$r1,#0x300
   904c8:	94 4a       	slli333 $r1,$r1,#0x2
   904ca:	b6 22       	swi450 $r1,[$r2]
   904cc:	dd 9e       	ret5 $lp
   904ce:	84 01       	movi55 $r0,#0x1
   904d0:	dd 9e       	ret5 $lp

000904d2 <DrvTIMER_EnableInt>:
   904d2:	c0 10       	beqz38 $r0,904f2 <DrvTIMER_EnableInt+0x20>
   904d4:	5a 00 01 12 	beqc $r0,#0x1,904f8 <DrvTIMER_EnableInt+0x26>
   904d8:	5a 00 02 13 	beqc $r0,#0x2,904fe <DrvTIMER_EnableInt+0x2c>
   904dc:	5a 00 03 14 	beqc $r0,#0x3,90504 <DrvTIMER_EnableInt+0x32>
   904e0:	5a 00 04 15 	beqc $r0,#0x4,9050a <DrvTIMER_EnableInt+0x38>
   904e4:	5a 08 05 1a 	bnec $r0,#0x5,90518 <DrvTIMER_EnableInt+0x46>
   904e8:	46 10 20 20 	sethi $r1,#0x2020
   904ec:	44 04 00 1c 	movi $r0,#0x4001c
   904f0:	d5 11       	j8 90512 <DrvTIMER_EnableInt+0x40>
   904f2:	46 10 10 10 	sethi $r1,#0x1010
   904f6:	d5 0c       	j8 9050e <DrvTIMER_EnableInt+0x3c>
   904f8:	46 10 20 20 	sethi $r1,#0x2020
   904fc:	d5 09       	j8 9050e <DrvTIMER_EnableInt+0x3c>
   904fe:	46 10 40 40 	sethi $r1,#0x4040
   90502:	d5 06       	j8 9050e <DrvTIMER_EnableInt+0x3c>
   90504:	46 10 80 80 	sethi $r1,#0x8080
   90508:	d5 03       	j8 9050e <DrvTIMER_EnableInt+0x3c>
   9050a:	46 11 01 00 	sethi $r1,#0x10100
   9050e:	44 04 00 04 	movi $r0,#0x40004
   90512:	b6 20       	swi450 $r1,[$r0]
   90514:	84 00       	movi55 $r0,#0x0
   90516:	dd 9e       	ret5 $lp
   90518:	84 01       	movi55 $r0,#0x1
   9051a:	dd 9e       	ret5 $lp

0009051c <DrvTIMER_GetIntFlag>:
   9051c:	c8 06       	bnez38 $r0,90528 <DrvTIMER_GetIntFlag+0xc>
   9051e:	44 04 00 04 	movi $r0,#0x40004
   90522:	b4 00       	lwi450 $r0,[$r0]
   90524:	96 06       	bmski33 $r0,#0x0
   90526:	dd 9e       	ret5 $lp
   90528:	5a 08 01 05 	bnec $r0,#0x1,90532 <DrvTIMER_GetIntFlag+0x16>
   9052c:	44 04 00 04 	movi $r0,#0x40004
   90530:	d5 1d       	j8 9056a <DrvTIMER_GetIntFlag+0x4e>
   90532:	5a 08 02 08 	bnec $r0,#0x2,90542 <DrvTIMER_GetIntFlag+0x26>
   90536:	44 04 00 04 	movi $r0,#0x40004
   9053a:	b4 00       	lwi450 $r0,[$r0]
   9053c:	96 16       	bmski33 $r0,#0x2
   9053e:	92 02       	srli45 $r0,#0x2
   90540:	dd 9e       	ret5 $lp
   90542:	5a 08 03 08 	bnec $r0,#0x3,90552 <DrvTIMER_GetIntFlag+0x36>
   90546:	44 04 00 04 	movi $r0,#0x40004
   9054a:	b4 00       	lwi450 $r0,[$r0]
   9054c:	96 1e       	bmski33 $r0,#0x3
   9054e:	92 03       	srli45 $r0,#0x3
   90550:	dd 9e       	ret5 $lp
   90552:	5a 08 04 08 	bnec $r0,#0x4,90562 <DrvTIMER_GetIntFlag+0x46>
   90556:	44 04 00 04 	movi $r0,#0x40004
   9055a:	b4 00       	lwi450 $r0,[$r0]
   9055c:	96 26       	bmski33 $r0,#0x4
   9055e:	92 04       	srli45 $r0,#0x4
   90560:	dd 9e       	ret5 $lp
   90562:	5a 08 05 08 	bnec $r0,#0x5,90572 <DrvTIMER_GetIntFlag+0x56>
   90566:	44 04 00 1c 	movi $r0,#0x4001c
   9056a:	b4 00       	lwi450 $r0,[$r0]
   9056c:	96 0e       	bmski33 $r0,#0x1
   9056e:	92 01       	srli45 $r0,#0x1
   90570:	dd 9e       	ret5 $lp
   90572:	84 00       	movi55 $r0,#0x0
   90574:	dd 9e       	ret5 $lp

00090576 <DrvTIMER_ClearIntFlag>:
   90576:	c0 0d       	beqz38 $r0,90590 <DrvTIMER_ClearIntFlag+0x1a>
   90578:	5a 00 01 0f 	beqc $r0,#0x1,90596 <DrvTIMER_ClearIntFlag+0x20>
   9057c:	5a 00 02 11 	beqc $r0,#0x2,9059e <DrvTIMER_ClearIntFlag+0x28>
   90580:	5a 00 03 13 	beqc $r0,#0x3,905a6 <DrvTIMER_ClearIntFlag+0x30>
   90584:	5a 00 04 15 	beqc $r0,#0x4,905ae <DrvTIMER_ClearIntFlag+0x38>
   90588:	5a 00 05 19 	beqc $r0,#0x5,905ba <DrvTIMER_ClearIntFlag+0x44>
   9058c:	84 01       	movi55 $r0,#0x1
   9058e:	d5 1b       	j8 905c4 <DrvTIMER_ClearIntFlag+0x4e>
   90590:	44 20 01 00 	movi $r2,#0x100
   90594:	d5 10       	j8 905b4 <DrvTIMER_ClearIntFlag+0x3e>
   90596:	84 00       	movi55 $r0,#0x0
   90598:	44 20 02 00 	movi $r2,#0x200
   9059c:	d5 0c       	j8 905b4 <DrvTIMER_ClearIntFlag+0x3e>
   9059e:	84 00       	movi55 $r0,#0x0
   905a0:	44 20 04 00 	movi $r2,#0x400
   905a4:	d5 08       	j8 905b4 <DrvTIMER_ClearIntFlag+0x3e>
   905a6:	84 00       	movi55 $r0,#0x0
   905a8:	44 20 08 00 	movi $r2,#0x800
   905ac:	d5 04       	j8 905b4 <DrvTIMER_ClearIntFlag+0x3e>
   905ae:	84 00       	movi55 $r0,#0x0
   905b0:	44 20 10 00 	movi $r2,#0x1000
   905b4:	44 14 00 04 	movi $r1,#0x40004
   905b8:	d5 06       	j8 905c4 <DrvTIMER_ClearIntFlag+0x4e>
   905ba:	84 00       	movi55 $r0,#0x0
   905bc:	44 20 02 00 	movi $r2,#0x200
   905c0:	44 14 00 1c 	movi $r1,#0x4001c
   905c4:	b6 41       	swi450 $r2,[$r1]
   905c6:	dd 9e       	ret5 $lp

000905c8 <DrvGPIO_Open>:
   905c8:	5a 00 01 4e 	beqc $r0,#0x1,90664 <DrvGPIO_Open+0x9c>
   905cc:	5a 00 02 4f 	beqc $r0,#0x2,9066a <DrvGPIO_Open+0xa2>
   905d0:	5a 00 03 50 	beqc $r0,#0x3,90670 <DrvGPIO_Open+0xa8>
   905d4:	e6 44       	slti45 $r2,#0x4
   905d6:	e8 45       	beqzs8 90660 <DrvGPIO_Open+0x98>
   905d8:	46 f0 00 90 	sethi $r15,#0x90
   905dc:	58 f7 85 ec 	ori $r15,$r15,#0x5ec
   905e0:	38 27 88 00 	lb $r2,[$r15+($r2<<#0x0)]
   905e4:	40 f1 3c 00 	add $r15,$r2,$r15
   905e8:	4a 00 3c 00 	jr $r15
   905ec:	04          	.byte	0x04
   905ed:	1e          	.byte	0x1e
   905ee:	30          	.byte	0x30
   905ef:	48          	.byte	0x48
   905f0:	84 01       	movi55 $r0,#0x1
   905f2:	d5 02       	j8 905f6 <DrvGPIO_Open+0x2e>
   905f4:	84 00       	movi55 $r0,#0x0
   905f6:	5c f0 81 00 	slti $r15,$r1,#0x100
   905fa:	e8 33       	beqzs8 90660 <DrvGPIO_Open+0x98>
   905fc:	40 20 e0 08 	slli $r2,$r1,#0x18
   90600:	40 10 c0 08 	slli $r1,$r1,#0x10
   90604:	88 22       	add45 $r1,$r2
   90606:	a8 59       	swi333 $r1,[$r3+#0x4]
   90608:	dd 9e       	ret5 $lp
   9060a:	84 01       	movi55 $r0,#0x1
   9060c:	d5 02       	j8 90610 <DrvGPIO_Open+0x48>
   9060e:	84 00       	movi55 $r0,#0x0
   90610:	5c f0 81 00 	slti $r15,$r1,#0x100
   90614:	e8 26       	beqzs8 90660 <DrvGPIO_Open+0x98>
   90616:	40 20 a0 08 	slli $r2,$r1,#0x8
   9061a:	d5 0b       	j8 90630 <DrvGPIO_Open+0x68>
   9061c:	84 01       	movi55 $r0,#0x1
   9061e:	d5 02       	j8 90622 <DrvGPIO_Open+0x5a>
   90620:	84 00       	movi55 $r0,#0x0
   90622:	5c f0 81 00 	slti $r15,$r1,#0x100
   90626:	e8 1d       	beqzs8 90660 <DrvGPIO_Open+0x98>
   90628:	40 20 e0 08 	slli $r2,$r1,#0x18
   9062c:	40 10 c0 08 	slli $r1,$r1,#0x10
   90630:	fe 57       	or33 $r1,$r2
   90632:	d5 15       	j8 9065c <DrvGPIO_Open+0x94>
   90634:	e6 04       	slti45 $r0,#0x4
   90636:	e9 3f       	bnezs8 906b4 <DrvGPIO_Open+0xec>
   90638:	d5 14       	j8 90660 <DrvGPIO_Open+0x98>
   9063a:	5c f0 81 00 	slti $r15,$r1,#0x100
   9063e:	e8 11       	beqzs8 90660 <DrvGPIO_Open+0x98>
   90640:	40 20 e0 08 	slli $r2,$r1,#0x18
   90644:	40 10 c0 08 	slli $r1,$r1,#0x10
   90648:	88 22       	add45 $r1,$r2
   9064a:	5a 00 01 2b 	beqc $r0,#0x1,906a0 <DrvGPIO_Open+0xd8>
   9064e:	5a 00 02 2d 	beqc $r0,#0x2,906a8 <DrvGPIO_Open+0xe0>
   90652:	5a 08 03 2f 	bnec $r0,#0x3,906b0 <DrvGPIO_Open+0xe8>
   90656:	84 00       	movi55 $r0,#0x0
   90658:	44 34 00 20 	movi $r3,#0x40020
   9065c:	b6 23       	swi450 $r1,[$r3]
   9065e:	dd 9e       	ret5 $lp
   90660:	84 01       	movi55 $r0,#0x1
   90662:	dd 9e       	ret5 $lp
   90664:	44 34 08 00 	movi $r3,#0x40800
   90668:	d5 06       	j8 90674 <DrvGPIO_Open+0xac>
   9066a:	44 34 08 10 	movi $r3,#0x40810
   9066e:	d5 03       	j8 90674 <DrvGPIO_Open+0xac>
   90670:	44 34 08 20 	movi $r3,#0x40820
   90674:	e6 44       	slti45 $r2,#0x4
   90676:	e9 03       	bnezs8 9067c <DrvGPIO_Open+0xb4>
   90678:	84 00       	movi55 $r0,#0x0
   9067a:	dd 9e       	ret5 $lp
   9067c:	46 f0 00 90 	sethi $r15,#0x90
   90680:	58 f7 86 90 	ori $r15,$r15,#0x690
   90684:	38 27 8a 02 	lw $r2,[$r15+($r2<<#0x2)]
   90688:	40 f1 3c 00 	add $r15,$r2,$r15
   9068c:	4a 00 3c 00 	jr $r15
   90690:	64 ff ff ff 	.word	0xffffff64
   90694:	7e ff ff ff 	.word	0xffffff7e
   90698:	90 ff ff ff 	.word	0xffffff90
   9069c:	aa ff ff ff 	.word	0xffffffaa
   906a0:	84 00       	movi55 $r0,#0x0
   906a2:	44 34 00 10 	movi $r3,#0x40010
   906a6:	d5 db       	j8 9065c <DrvGPIO_Open+0x94>
   906a8:	84 00       	movi55 $r0,#0x0
   906aa:	44 34 00 14 	movi $r3,#0x40014
   906ae:	d5 d7       	j8 9065c <DrvGPIO_Open+0x94>
   906b0:	84 00       	movi55 $r0,#0x0
   906b2:	d5 d5       	j8 9065c <DrvGPIO_Open+0x94>
   906b4:	5c f0 81 00 	slti $r15,$r1,#0x100
   906b8:	e8 d4       	beqzs8 90660 <DrvGPIO_Open+0x98>
   906ba:	40 00 e0 08 	slli $r0,$r1,#0x18
   906be:	40 10 c0 08 	slli $r1,$r1,#0x10
   906c2:	88 20       	add45 $r1,$r0
   906c4:	84 01       	movi55 $r0,#0x1
   906c6:	d5 cb       	j8 9065c <DrvGPIO_Open+0x94>

000906c8 <SYS_EnableGIE>:
   906c8:	e6 08       	slti45 $r0,#0x8
   906ca:	e8 1c       	beqzs8 90702 <SYS_EnableGIE+0x3a>
   906cc:	64 32 00 02 	mfsr $r3,$psw
   906d0:	46 2f f0 0f 	sethi $r2,#0xff00f
   906d4:	50 21 0f f0 	addi $r2,$r2,#0xff0
   906d8:	40 00 40 08 	slli $r0,$r0,#0x10
   906dc:	fe 9e       	and33 $r2,$r3
   906de:	58 00 00 09 	ori $r0,$r0,#0x9
   906e2:	fe 17       	or33 $r0,$r2
   906e4:	64 02 00 03 	mtsr $r0,$psw
   906e8:	64 03 00 02 	mfsr $r0,$int_mask
   906ec:	92 09       	srli45 $r0,#0x9
   906ee:	46 28 00 00 	sethi $r2,#0x80000
   906f2:	40 00 24 08 	slli $r0,$r0,#0x9
   906f6:	fe 57       	or33 $r1,$r2
   906f8:	fe 47       	or33 $r1,$r0
   906fa:	64 13 00 03 	mtsr $r1,$int_mask
   906fe:	84 00       	movi55 $r0,#0x0
   90700:	dd 9e       	ret5 $lp
   90702:	84 01       	movi55 $r0,#0x1
   90704:	dd 9e       	ret5 $lp

00090706 <DrvPMU_VDD15Trim>:
   90706:	fc 01       	push25 $r6,#8    ! {$r6, $fp, $gp, $lp}
   90708:	46 00 00 b1 	sethi $r0,#0xb1
   9070c:	04 00 02 06 	lwi $r0,[$r0+#0x818]
   90710:	5a 07 ff 05 	beqc $r0,#-1,9071a <DrvPMU_VDD15Trim+0x14>
   90714:	44 14 04 00 	movi $r1,#0x40400
   90718:	b6 01       	swi450 $r0,[$r1]
   9071a:	f0 01       	lwi37.sp $r0,[+#0x4]
   9071c:	fc 81       	pop25 $r6,#8    ! {$r6, $fp, $gp, $lp}

0009071e <DrvCLOCK_EnableHighOSC>:
   9071e:	e6 02       	slti45 $r0,#0x2
   90720:	e8 22       	beqzs8 90764 <DrvCLOCK_EnableHighOSC+0x46>
   90722:	5a 00 01 05 	beqc $r0,#0x1,9072c <DrvCLOCK_EnableHighOSC+0xe>
   90726:	44 20 01 01 	movi $r2,#0x101
   9072a:	d5 03       	j8 90730 <DrvCLOCK_EnableHighOSC+0x12>
   9072c:	44 20 02 02 	movi $r2,#0x202
   90730:	44 34 03 00 	movi $r3,#0x40300
   90734:	94 4a       	slli333 $r1,$r1,#0x2
   90736:	b6 43       	swi450 $r2,[$r3]
   90738:	84 a0       	movi55 $r5,#0x0
   9073a:	d1 09       	beqs38 $r1,9074c <DrvCLOCK_EnableHighOSC+0x2e>
   9073c:	44 20 03 e8 	movi $r2,#0x3e8
   90740:	40 00 00 09 	nop
   90744:	8e 41       	subi45 $r2,#0x1
   90746:	ca fd       	bnez38 $r2,90740 <DrvCLOCK_EnableHighOSC+0x22>
   90748:	8c a1       	addi45 $r5,#0x1
   9074a:	d5 f8       	j8 9073a <DrvCLOCK_EnableHighOSC+0x1c>
   9074c:	5a 00 01 05 	beqc $r0,#0x1,90756 <DrvCLOCK_EnableHighOSC+0x38>
   90750:	44 00 22 00 	movi $r0,#0x2200
   90754:	d5 03       	j8 9075a <DrvCLOCK_EnableHighOSC+0x3c>
   90756:	44 00 21 20 	movi $r0,#0x2120
   9075a:	44 14 03 00 	movi $r1,#0x40300
   9075e:	b6 01       	swi450 $r0,[$r1]
   90760:	84 00       	movi55 $r0,#0x0
   90762:	dd 9e       	ret5 $lp
   90764:	84 01       	movi55 $r0,#0x1
   90766:	dd 9e       	ret5 $lp

00090768 <DrvCLOCK_SelectIHOSC_CalHAO>:
   90768:	e6 04       	slti45 $r0,#0x4
   9076a:	e8 2d       	beqzs8 907c4 <DrvCLOCK_SelectIHOSC_CalHAO+0x5c>
   9076c:	94 43       	slli333 $r1,$r0,#0x3
   9076e:	44 24 03 00 	movi $r2,#0x40300
   90772:	58 10 98 00 	ori $r1,$r1,#0x1800
   90776:	b6 22       	swi450 $r1,[$r2]
   90778:	5a 00 01 03 	beqc $r0,#0x1,9077e <DrvCLOCK_SelectIHOSC_CalHAO+0x16>
   9077c:	84 02       	movi55 $r0,#0x2
   9077e:	46 10 00 b1 	sethi $r1,#0xb1
   90782:	04 20 83 00 	lwi $r2,[$r1+#0xc00]
   90786:	5a 27 ff 11 	beqc $r2,#-1,907a8 <DrvCLOCK_SelectIHOSC_CalHAO+0x40>
   9078a:	04 20 83 01 	lwi $r2,[$r1+#0xc04]
   9078e:	5a 27 ff 0d 	beqc $r2,#-1,907a8 <DrvCLOCK_SelectIHOSC_CalHAO+0x40>
   90792:	04 20 83 00 	lwi $r2,[$r1+#0xc00]
   90796:	92 48       	srli45 $r2,#0x8
   90798:	ca 08       	bnez38 $r2,907a8 <DrvCLOCK_SelectIHOSC_CalHAO+0x40>
   9079a:	04 10 83 01 	lwi $r1,[$r1+#0xc04]
   9079e:	92 28       	srli45 $r1,#0x8
   907a0:	c9 04       	bnez38 $r1,907a8 <DrvCLOCK_SelectIHOSC_CalHAO+0x40>
   907a2:	44 12 c6 ff 	movi $r1,#0x2c6ff
   907a6:	d5 03       	j8 907ac <DrvCLOCK_SelectIHOSC_CalHAO+0x44>
   907a8:	44 12 c6 00 	movi $r1,#0x2c600
   907ac:	88 01       	add45 $r0,$r1
   907ae:	94 02       	slli333 $r0,$r0,#0x2
   907b0:	44 10 ff 00 	movi $r1,#0xff00
   907b4:	b4 00       	lwi450 $r0,[$r0]
   907b6:	96 00       	zeb33 $r0,$r0
   907b8:	88 01       	add45 $r0,$r1
   907ba:	44 14 03 04 	movi $r1,#0x40304
   907be:	b6 01       	swi450 $r0,[$r1]
   907c0:	84 00       	movi55 $r0,#0x0
   907c2:	dd 9e       	ret5 $lp
   907c4:	84 01       	movi55 $r0,#0x1
   907c6:	dd 9e       	ret5 $lp

000907c8 <DrvCLOCK_EnableLowOSC>:
   907c8:	e6 02       	slti45 $r0,#0x2
   907ca:	e8 16       	beqzs8 907f6 <DrvCLOCK_EnableLowOSC+0x2e>
   907cc:	5a 00 01 0a 	beqc $r0,#0x1,907e0 <DrvCLOCK_EnableLowOSC+0x18>
   907d0:	44 14 03 00 	movi $r1,#0x40300
   907d4:	94 06       	slli333 $r0,$r0,#0x6
   907d6:	58 00 40 00 	ori $r0,$r0,#0x4000
   907da:	b6 01       	swi450 $r0,[$r1]
   907dc:	84 00       	movi55 $r0,#0x0
   907de:	dd 9e       	ret5 $lp
   907e0:	44 24 03 00 	movi $r2,#0x40300
   907e4:	44 30 04 04 	movi $r3,#0x404
   907e8:	b6 62       	swi450 $r3,[$r2]
   907ea:	84 a0       	movi55 $r5,#0x0
   907ec:	d1 f2       	beqs38 $r1,907d0 <DrvCLOCK_EnableLowOSC+0x8>
   907ee:	40 00 00 09 	nop
   907f2:	8c a1       	addi45 $r5,#0x1
   907f4:	d5 fc       	j8 907ec <DrvCLOCK_EnableLowOSC+0x24>
   907f6:	84 01       	movi55 $r0,#0x1
   907f8:	dd 9e       	ret5 $lp

000907fa <DrvCLOCK_SelectMCUClock>:
   907fa:	84 41       	movi55 $r2,#0x1
   907fc:	e2 40       	slt45 $r2,$r0
   907fe:	e9 11       	bnezs8 90820 <DrvCLOCK_SelectMCUClock+0x26>
   90800:	84 43       	movi55 $r2,#0x3
   90802:	e2 41       	slt45 $r2,$r1
   90804:	e9 0e       	bnezs8 90820 <DrvCLOCK_SelectMCUClock+0x26>
   90806:	40 10 cc 08 	slli $r1,$r1,#0x13
   9080a:	fe 0f       	or33 $r0,$r1
   9080c:	46 11 80 00 	sethi $r1,#0x18000
   90810:	50 10 81 00 	addi $r1,$r1,#0x100
   90814:	fe 0f       	or33 $r0,$r1
   90816:	44 14 03 08 	movi $r1,#0x40308
   9081a:	b6 01       	swi450 $r0,[$r1]
   9081c:	80 0f       	mov55 $r0,$r15
   9081e:	dd 9e       	ret5 $lp
   90820:	84 01       	movi55 $r0,#0x1
   90822:	dd 9e       	ret5 $lp

00090824 <DrvCLOCK_TrimHAO>:
   90824:	5c f0 01 00 	slti $r15,$r0,#0x100
   90828:	e8 09       	beqzs8 9083a <DrvCLOCK_TrimHAO+0x16>
   9082a:	44 10 ff 00 	movi $r1,#0xff00
   9082e:	fe 0f       	or33 $r0,$r1
   90830:	44 14 03 04 	movi $r1,#0x40304
   90834:	b6 01       	swi450 $r0,[$r1]
   90836:	84 00       	movi55 $r0,#0x0
   90838:	dd 9e       	ret5 $lp
   9083a:	84 01       	movi55 $r0,#0x1
   9083c:	dd 9e       	ret5 $lp
