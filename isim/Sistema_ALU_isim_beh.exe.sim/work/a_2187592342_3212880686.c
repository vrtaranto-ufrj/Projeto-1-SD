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
static const char *ng0 = "/home/sd/Ula/Contador.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_2187592342_3212880686_p_0(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4768);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 7388);
    t6 = (t0 + 4896);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 7392);
    t5 = (t0 + 4960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(32, ng0);
    t1 = xsi_get_transient_memory(27U);
    memset(t1, 0, 27U);
    t2 = t1;
    memset(t2, (unsigned char)2, 27U);
    t5 = (t0 + 5024);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 27U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t2 = (t0 + 7208U);
    t6 = (t0 + 2728U);
    t7 = *((char **)t6);
    t6 = (t0 + 7272U);
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t2, t7, t6);
    if (t4 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7208U);
    t5 = (t0 + 2608U);
    t6 = *((char **)t5);
    t5 = (t0 + 7256U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7208U);
    t5 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t13, t2, t1, 1);
    t6 = (t13 + 12U);
    t15 = *((unsigned int *)t6);
    t18 = (1U * t15);
    t3 = (27U != t18);
    if (t3 == 1)
        goto LAB23;

LAB24:    t7 = (t0 + 5024);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 27U);
    xsi_driver_first_trans_fast(t7);

LAB11:    goto LAB3;

LAB7:    xsi_set_current_line(35, ng0);
    t8 = (t0 + 5088);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB8;

LAB10:    xsi_set_current_line(38, ng0);
    t7 = (t0 + 5088);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(39, ng0);
    t1 = xsi_get_transient_memory(27U);
    memset(t1, 0, 27U);
    t2 = t1;
    memset(t2, (unsigned char)2, 27U);
    t5 = (t0 + 5024);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 27U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 7224U);
    t5 = (t0 + 7396);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 7224U);
    t5 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t13, t2, t1, 1);
    t6 = (t13 + 12U);
    t15 = *((unsigned int *)t6);
    t18 = (1U * t15);
    t3 = (4U != t18);
    if (t3 == 1)
        goto LAB21;

LAB22:    t7 = (t0 + 4896);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 4U);
    xsi_driver_first_trans_fast(t7);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(41, ng0);
    t8 = (t0 + 7400);
    t10 = (t0 + 4896);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7240U);
    t5 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t13, t2, t1, 1);
    t6 = (t13 + 12U);
    t15 = *((unsigned int *)t6);
    t18 = (1U * t15);
    t3 = (4U != t18);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 4960);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7240U);
    t5 = (t0 + 7404);
    t7 = (t13 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t14 = (3 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t15;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t13);
    if (t3 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB14;

LAB16:    xsi_size_not_matching(4U, t18, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(44, ng0);
    t8 = (t0 + 7408);
    t10 = (t0 + 4960);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB19;

LAB21:    xsi_size_not_matching(4U, t18, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(27U, t18, 0);
    goto LAB24;

}

static void work_a_2187592342_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4784);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2187592342_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5216);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4800);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2187592342_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5280);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4816);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2187592342_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2187592342_3212880686_p_0,(void *)work_a_2187592342_3212880686_p_1,(void *)work_a_2187592342_3212880686_p_2,(void *)work_a_2187592342_3212880686_p_3};
	xsi_register_didat("work_a_2187592342_3212880686", "isim/Sistema_ALU_isim_beh.exe.sim/work/a_2187592342_3212880686.didat");
	xsi_register_executes(pe);
}
