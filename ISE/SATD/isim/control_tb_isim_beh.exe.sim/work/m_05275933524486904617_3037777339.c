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
static const char *ng0 = "/media/juliana/LinFiles/Documents/GitHub/SATD-research/ISE/SATD/control.v";
static int ng1[] = {0, 0};
static int ng2[] = {7, 0};
static int ng3[] = {1, 0};



static void Always_43_0(char *t0)
{
    char t14[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t27;

LAB0:    t1 = (t0 + 4312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4632);
    *((int *)t2) = 1;
    t3 = (t0 + 4344);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 2840U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(49, ng0);

LAB10:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3240);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = (t0 + 472);
    t11 = *((char **)t5);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t11, 32);
    if (t13 == 1)
        goto LAB12;

LAB13:    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t13 == 1)
        goto LAB14;

LAB15:    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t13 == 1)
        goto LAB16;

LAB17:    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t3, 32);
    if (t13 == 1)
        goto LAB18;

LAB19:
LAB20:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(44, ng0);

LAB9:    xsi_set_current_line(45, ng0);
    t11 = (t0 + 472);
    t12 = *((char **)t11);
    t11 = (t0 + 3240);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, 0, 2, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3400);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(52, ng0);
    t5 = (t0 + 608);
    t12 = *((char **)t5);
    t5 = (t0 + 3240);
    xsi_vlogvar_wait_assign_value(t5, t12, 0, 0, 2, 0LL);
    goto LAB20;

LAB14:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3400);
    t5 = (t2 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng2)));
    memset(t14, 0, 8);
    if (*((unsigned int *)t11) != *((unsigned int *)t12))
        goto LAB23;

LAB21:    t15 = (t11 + 4);
    t16 = (t12 + 4);
    if (*((unsigned int *)t15) != *((unsigned int *)t16))
        goto LAB23;

LAB22:    *((unsigned int *)t14) = 1;

LAB23:    t17 = (t14 + 4);
    t6 = *((unsigned int *)t17);
    t7 = (~(t6));
    t8 = *((unsigned int *)t14);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3400);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng3)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t5, 3, t11, 32);
    t12 = (t0 + 3400);
    xsi_vlogvar_wait_assign_value(t12, t14, 0, 0, 3, 0LL);

LAB26:    goto LAB20;

LAB16:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3400);
    t5 = (t2 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng2)));
    memset(t14, 0, 8);
    if (*((unsigned int *)t11) != *((unsigned int *)t12))
        goto LAB30;

LAB28:    t15 = (t11 + 4);
    t16 = (t12 + 4);
    if (*((unsigned int *)t15) != *((unsigned int *)t16))
        goto LAB30;

LAB29:    *((unsigned int *)t14) = 1;

LAB30:    t17 = (t14 + 4);
    t6 = *((unsigned int *)t17);
    t7 = (~(t6));
    t8 = *((unsigned int *)t14);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3400);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng3)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 32, t5, 3, t11, 32);
    t12 = (t0 + 3400);
    xsi_vlogvar_wait_assign_value(t12, t14, 0, 0, 3, 0LL);

LAB33:    goto LAB20;

LAB18:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3400);
    t5 = (t2 + 56U);
    t11 = *((char **)t5);
    memset(t14, 0, 8);
    t12 = (t11 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t11);
    t9 = (t8 & t7);
    t10 = (t9 & 7U);
    if (t10 != 0)
        goto LAB38;

LAB36:    if (*((unsigned int *)t12) == 0)
        goto LAB35;

LAB37:    t15 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t15) = 1;

LAB38:    t16 = (t14 + 4);
    t20 = *((unsigned int *)t16);
    t21 = (~(t20));
    t22 = *((unsigned int *)t14);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(77, ng0);

LAB42:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 3240);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3400);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB41:    goto LAB20;

LAB24:    xsi_set_current_line(56, ng0);

LAB27:    xsi_set_current_line(57, ng0);
    t18 = ((char*)((ng1)));
    t19 = (t0 + 3400);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 3, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 3240);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    goto LAB26;

LAB31:    xsi_set_current_line(65, ng0);

LAB34:    xsi_set_current_line(66, ng0);
    t18 = ((char*)((ng1)));
    t19 = (t0 + 3400);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 3, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t2 = (t0 + 3240);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 2, 0LL);
    goto LAB33;

LAB35:    *((unsigned int *)t14) = 1;
    goto LAB38;

LAB39:    xsi_set_current_line(75, ng0);
    t17 = (t0 + 3400);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t25 = ((char*)((ng3)));
    memset(t26, 0, 8);
    xsi_vlog_unsigned_add(t26, 32, t19, 3, t25, 32);
    t27 = (t0 + 3400);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 3, 0LL);
    goto LAB41;

}


extern void work_m_05275933524486904617_3037777339_init()
{
	static char *pe[] = {(void *)Always_43_0};
	xsi_register_didat("work_m_05275933524486904617_3037777339", "isim/control_tb_isim_beh.exe.sim/work/m_05275933524486904617_3037777339.didat");
	xsi_register_executes(pe);
}
