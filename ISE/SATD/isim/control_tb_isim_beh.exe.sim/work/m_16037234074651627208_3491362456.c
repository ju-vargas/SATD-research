/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/media/juliana/LinFiles/Documents/GitHub/SATD-research/ISE/SATD/control_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "Inverti o clock";
static const char *ng4 = "Ciclo de Clock: %0d, clock: %b, stage: %b, count: %b";



static void Initial_39_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(39, ng0);

LAB2:    xsi_set_current_line(40, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1744);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);

LAB1:    return;
}

static void Always_46_1(char *t0)
{
    char t3[8];
    char t25[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 3064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);

LAB4:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2872);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1744);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1744);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1904);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(51, ng0);
    xsi_vlogfile_write(1, 0, 0, ng3, 1, t0);
    xsi_set_current_line(53, ng0);
    t2 = xsi_vlog_time(t25, 1000.0000000000000, 1000.0000000000000);
    t4 = (t0 + 1744);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1184U);
    t13 = *((char **)t7);
    t7 = (t0 + 1344U);
    t14 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng4, 5, t0, (char)118, t25, 64, (char)118, t6, 1, (char)118, t13, 2, (char)118, t14, 3);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2872);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

LAB12:    goto LAB2;

}


extern void work_m_16037234074651627208_3491362456_init()
{
	static char *pe[] = {(void *)Initial_39_0,(void *)Always_46_1};
	xsi_register_didat("work_m_16037234074651627208_3491362456", "isim/control_tb_isim_beh.exe.sim/work/m_16037234074651627208_3491362456.didat");
	xsi_register_executes(pe);
}
