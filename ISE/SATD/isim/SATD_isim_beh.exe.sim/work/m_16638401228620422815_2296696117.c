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
static const char *ng0 = "/media/juliana/LinFiles/Documents/GitHub/SATD-research/ISE/SATD/SATD.v";
static unsigned int ng1[] = {0U, 0U, 0U, 0U};
static int ng2[] = {64, 0};
static const char *ng3 = "counter: %d";
static const char *ng4 = "0: %d";
static const char *ng5 = "1: %d";
static const char *ng6 = "2: %d";
static const char *ng7 = "3: %d";
static const char *ng8 = "4: %d";
static const char *ng9 = "5: %d";
static const char *ng10 = "6: %d";
static const char *ng11 = "7: %d";



static void Always_85_0(char *t0)
{
    char t13[16];
    char t16[8];
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
    char *t14;
    char *t15;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 4760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5080);
    *((int *)t2) = 1;
    t3 = (t0 + 4792);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(85, ng0);

LAB5:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(91, ng0);

LAB10:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:
LAB13:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(87, ng0);

LAB9:    xsi_set_current_line(88, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 64, 0LL);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 64, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(92, ng0);

LAB14:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t0 + 1328U);
    t11 = (t4 + 72U);
    t12 = *((char **)t11);
    t14 = (t0 + 1688U);
    t15 = *((char **)t14);
    t14 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_multiply(t16, 32, t15, 4, t14, 32);
    t17 = ((char*)((ng2)));
    xsi_vlog_get_indexed_partselect(t13, 64, t5, ((int*)(t12)), 2, t16, 32, 2, t17, 32, 1, 1);
    t18 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t18, t13, 0, 0, 64, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1488U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 1688U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_multiply(t16, 32, t12, 4, t11, 32);
    t14 = ((char*)((ng2)));
    xsi_vlog_get_indexed_partselect(t13, 64, t3, ((int*)(t5)), 2, t16, 32, 2, t14, 32, 1, 1);
    t15 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t15, t13, 0, 0, 64, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 2, t0, (char)118, t3, 4);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng4, 2, t0, (char)119, t3, 9);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng5, 2, t0, (char)119, t3, 9);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng6, 2, t0, (char)119, t3, 9);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng7, 2, t0, (char)119, t3, 9);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng8, 2, t0, (char)119, t3, 9);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)119, t3, 9);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3128U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng10, 2, t0, (char)119, t3, 9);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng11, 2, t0, (char)119, t3, 9);
    goto LAB13;

}


extern void work_m_16638401228620422815_2296696117_init()
{
	static char *pe[] = {(void *)Always_85_0};
	xsi_register_didat("work_m_16638401228620422815_2296696117", "isim/SATD_isim_beh.exe.sim/work/m_16638401228620422815_2296696117.didat");
	xsi_register_executes(pe);
}
