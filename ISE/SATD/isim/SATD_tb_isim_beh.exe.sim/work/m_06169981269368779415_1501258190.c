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
static const char *ng0 = "/media/juliana/LinFiles/Documents/GitHub/SATD-research/ISE/SATD/differences.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};



static void Always_39_0(char *t0)
{
    char t20[8];
    char t21[8];
    char t22[8];
    char t23[8];
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
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t24;
    unsigned int t25;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 4120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 4440);
    *((int *)t2) = 1;
    t3 = (t0 + 4152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(41, ng0);

LAB9:    xsi_set_current_line(42, ng0);
    t11 = (t0 + 1208U);
    t12 = *((char **)t11);
    t11 = (t12 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(52, ng0);

LAB14:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t21, 0, 8);
    t2 = (t21 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    *((unsigned int *)t21) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t10 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t5 = ((char*)((ng2)));
    xsi_vlogtype_concat(t20, 9, 9, 2U, t5, 1, t21, 8);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    memset(t23, 0, 8);
    t11 = (t23 + 4);
    t18 = (t12 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 0);
    *((unsigned int *)t23) = t15;
    t16 = *((unsigned int *)t18);
    t17 = (t16 >> 0);
    *((unsigned int *)t11) = t17;
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 & 255U);
    t25 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t25 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t22, 9, 9, 2U, t19, 1, t23, 8);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_minus(t26, 9, t20, 9, t22, 9);
    t27 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 9, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t21, 0, 8);
    t2 = (t21 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 8);
    *((unsigned int *)t21) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 8);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t10 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t5 = ((char*)((ng2)));
    xsi_vlogtype_concat(t20, 9, 9, 2U, t5, 1, t21, 8);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    memset(t23, 0, 8);
    t11 = (t23 + 4);
    t18 = (t12 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 8);
    *((unsigned int *)t23) = t15;
    t16 = *((unsigned int *)t18);
    t17 = (t16 >> 8);
    *((unsigned int *)t11) = t17;
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 & 255U);
    t25 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t25 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t22, 9, 9, 2U, t19, 1, t23, 8);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_minus(t26, 9, t20, 9, t22, 9);
    t27 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 9, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t21, 0, 8);
    t2 = (t21 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 16);
    *((unsigned int *)t21) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 16);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t10 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t5 = ((char*)((ng2)));
    xsi_vlogtype_concat(t20, 9, 9, 2U, t5, 1, t21, 8);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    memset(t23, 0, 8);
    t11 = (t23 + 4);
    t18 = (t12 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 16);
    *((unsigned int *)t23) = t15;
    t16 = *((unsigned int *)t18);
    t17 = (t16 >> 16);
    *((unsigned int *)t11) = t17;
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 & 255U);
    t25 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t25 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t22, 9, 9, 2U, t19, 1, t23, 8);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_minus(t26, 9, t20, 9, t22, 9);
    t27 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 9, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t21, 0, 8);
    t2 = (t21 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 24);
    *((unsigned int *)t21) = t7;
    t8 = *((unsigned int *)t4);
    t9 = (t8 >> 24);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t10 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t5 = ((char*)((ng2)));
    xsi_vlogtype_concat(t20, 9, 9, 2U, t5, 1, t21, 8);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    memset(t23, 0, 8);
    t11 = (t23 + 4);
    t18 = (t12 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 24);
    *((unsigned int *)t23) = t15;
    t16 = *((unsigned int *)t18);
    t17 = (t16 >> 24);
    *((unsigned int *)t11) = t17;
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 & 255U);
    t25 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t25 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t22, 9, 9, 2U, t19, 1, t23, 8);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_minus(t26, 9, t20, 9, t22, 9);
    t27 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 9, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t21, 0, 8);
    t2 = (t21 + 4);
    t4 = (t3 + 8);
    t5 = (t3 + 12);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t21) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t10 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t11 = ((char*)((ng2)));
    xsi_vlogtype_concat(t20, 9, 9, 2U, t11, 1, t21, 8);
    t12 = (t0 + 1688U);
    t18 = *((char **)t12);
    memset(t23, 0, 8);
    t12 = (t23 + 4);
    t19 = (t18 + 8);
    t27 = (t18 + 12);
    t14 = *((unsigned int *)t19);
    t15 = (t14 >> 0);
    *((unsigned int *)t23) = t15;
    t16 = *((unsigned int *)t27);
    t17 = (t16 >> 0);
    *((unsigned int *)t12) = t17;
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 & 255U);
    t25 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t25 & 255U);
    t28 = ((char*)((ng2)));
    xsi_vlogtype_concat(t22, 9, 9, 2U, t28, 1, t23, 8);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_minus(t26, 9, t20, 9, t22, 9);
    t29 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t29, t26, 0, 0, 9, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t21, 0, 8);
    t2 = (t21 + 4);
    t4 = (t3 + 8);
    t5 = (t3 + 12);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 8);
    *((unsigned int *)t21) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 8);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t10 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t11 = ((char*)((ng2)));
    xsi_vlogtype_concat(t20, 9, 9, 2U, t11, 1, t21, 8);
    t12 = (t0 + 1688U);
    t18 = *((char **)t12);
    memset(t23, 0, 8);
    t12 = (t23 + 4);
    t19 = (t18 + 8);
    t27 = (t18 + 12);
    t14 = *((unsigned int *)t19);
    t15 = (t14 >> 8);
    *((unsigned int *)t23) = t15;
    t16 = *((unsigned int *)t27);
    t17 = (t16 >> 8);
    *((unsigned int *)t12) = t17;
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 & 255U);
    t25 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t25 & 255U);
    t28 = ((char*)((ng2)));
    xsi_vlogtype_concat(t22, 9, 9, 2U, t28, 1, t23, 8);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_minus(t26, 9, t20, 9, t22, 9);
    t29 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t29, t26, 0, 0, 9, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t21, 0, 8);
    t2 = (t21 + 4);
    t4 = (t3 + 8);
    t5 = (t3 + 12);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 16);
    *((unsigned int *)t21) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 16);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t10 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t11 = ((char*)((ng2)));
    xsi_vlogtype_concat(t20, 9, 9, 2U, t11, 1, t21, 8);
    t12 = (t0 + 1688U);
    t18 = *((char **)t12);
    memset(t23, 0, 8);
    t12 = (t23 + 4);
    t19 = (t18 + 8);
    t27 = (t18 + 12);
    t14 = *((unsigned int *)t19);
    t15 = (t14 >> 16);
    *((unsigned int *)t23) = t15;
    t16 = *((unsigned int *)t27);
    t17 = (t16 >> 16);
    *((unsigned int *)t12) = t17;
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 & 255U);
    t25 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t25 & 255U);
    t28 = ((char*)((ng2)));
    xsi_vlogtype_concat(t22, 9, 9, 2U, t28, 1, t23, 8);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_minus(t26, 9, t20, 9, t22, 9);
    t29 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t29, t26, 0, 0, 9, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t21, 0, 8);
    t2 = (t21 + 4);
    t4 = (t3 + 8);
    t5 = (t3 + 12);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 24);
    *((unsigned int *)t21) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 24);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t10 & 255U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 255U);
    t11 = ((char*)((ng2)));
    xsi_vlogtype_concat(t20, 9, 9, 2U, t11, 1, t21, 8);
    t12 = (t0 + 1688U);
    t18 = *((char **)t12);
    memset(t23, 0, 8);
    t12 = (t23 + 4);
    t19 = (t18 + 8);
    t27 = (t18 + 12);
    t14 = *((unsigned int *)t19);
    t15 = (t14 >> 24);
    *((unsigned int *)t23) = t15;
    t16 = *((unsigned int *)t27);
    t17 = (t16 >> 24);
    *((unsigned int *)t12) = t17;
    t24 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t24 & 255U);
    t25 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t25 & 255U);
    t28 = ((char*)((ng2)));
    xsi_vlogtype_concat(t22, 9, 9, 2U, t28, 1, t23, 8);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_minus(t26, 9, t20, 9, t22, 9);
    t29 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t29, t26, 0, 0, 9, 0LL);

LAB12:    goto LAB8;

LAB10:    xsi_set_current_line(42, ng0);

LAB13:    xsi_set_current_line(43, ng0);
    t18 = ((char*)((ng1)));
    t19 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 9, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 9, 0LL);
    goto LAB12;

}


extern void work_m_06169981269368779415_1501258190_init()
{
	static char *pe[] = {(void *)Always_39_0};
	xsi_register_didat("work_m_06169981269368779415_1501258190", "isim/SATD_tb_isim_beh.exe.sim/work/m_06169981269368779415_1501258190.didat");
	xsi_register_executes(pe);
}
