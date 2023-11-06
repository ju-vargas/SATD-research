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
static const char *ng0 = "/media/juliana/LinFiles/Documents/GitHub/SATD-research/ISE/SATD/SATD_tb.v";
static unsigned int ng1[] = {3789800432U, 0U, 4042322161U, 0U, 252645151U, 0U, 252645135U, 0U, 858836172U, 0U, 856476867U, 0U, 3436131123U, 0U, 3438490428U, 0U, 2863311533U, 0U, 2857719130U, 0U, 1431655765U, 0U, 1420470949U, 0U, 4278255104U, 0U, 4278255360U, 0U, 2155839615U, 0U, 127U, 0U, 2290649224U, 0U, 2684352648U, 0U, 1145324612U, 0U, 1145324612U, 0U, 4042322160U, 0U, 4042322160U, 0U, 252645135U, 0U, 252645135U, 0U, 3435973836U, 0U, 3435973836U, 0U, 858993459U, 0U, 858993459U, 0U, 1431655765U, 0U, 1431655765U, 0U, 859560777U, 0U, 917367603U, 0U};
static unsigned int ng2[] = {4282732885U, 0U, 4294967295U, 0U, 2299793937U, 0U, 1176643920U, 0U, 4294960742U, 0U, 4294967295U, 0U, 3588856908U, 0U, 4109841212U, 0U, 1163220037U, 0U, 2501190995U, 0U, 1353355925U, 0U, 573221202U, 0U, 8323072U, 0U, 4261416944U, 0U, 2155839615U, 0U, 16744575U, 0U, 285806848U, 0U, 2224103953U, 0U, 2317632512U, 0U, 1093174352U, 0U, 4188360706U, 0U, 4039177480U, 0U, 1395171652U, 0U, 1431597383U, 0U, 4235525476U, 0U, 1043800882U, 0U, 1776611910U, 0U, 3004871628U, 0U, 1431655765U, 0U, 4250228053U, 0U, 2568985151U, 0U, 2992543328U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static int ng5[] = {30, 0};



static void Cont_68_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6024);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 1024);
    xsi_driver_vfirst_trans(t3, 0, 1023);

LAB1:    return;
}

static void Cont_86_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 5144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 1024);
    xsi_driver_vfirst_trans(t3, 0, 1023);

LAB1:    return;
}

static void Initial_103_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(103, ng0);

LAB2:    xsi_set_current_line(104, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 3824);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(105, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 3984);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);

LAB1:    return;
}

static void Always_109_3(char *t0)
{
    char t3[8];
    char t25[8];
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

LAB0:    t1 = (t0 + 5640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(109, ng0);

LAB4:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 5448);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(110, ng0);
    t4 = (t0 + 3824);
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
    t24 = (t0 + 3824);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 3984);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 3664);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t3, 0, 8);
    xsi_vlog_signed_add(t3, 32, t5, 32, t6, 32);
    t7 = (t0 + 3664);
    xsi_vlogvar_assign_value(t7, t3, 0, 0, 32);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3664);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 472);
    t7 = *((char **)t6);
    t6 = ((char*)((ng5)));
    memset(t3, 0, 8);
    xsi_vlog_signed_multiply(t3, 32, t7, 32, t6, 32);
    memset(t25, 0, 8);
    xsi_vlog_signed_equal(t25, 32, t5, 32, t3, 32);
    t13 = (t25 + 4);
    t8 = *((unsigned int *)t13);
    t9 = (~(t8));
    t10 = *((unsigned int *)t25);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB12;

LAB13:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

LAB12:    xsi_set_current_line(115, ng0);

LAB15:    xsi_set_current_line(116, ng0);
    xsi_vlog_stop(1);
    goto LAB14;

}


extern void work_m_15342028041440816316_1165256455_init()
{
	static char *pe[] = {(void *)Cont_68_0,(void *)Cont_86_1,(void *)Initial_103_2,(void *)Always_109_3};
	xsi_register_didat("work_m_15342028041440816316_1165256455", "isim/SATD_tb_isim_beh.exe.sim/work/m_15342028041440816316_1165256455.didat");
	xsi_register_executes(pe);
}
