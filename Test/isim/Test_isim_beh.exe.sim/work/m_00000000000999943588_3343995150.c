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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//Mac/Project/Verilog/Test/MIO_BUS.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {14U, 0U};
static unsigned int ng11[] = {15U, 0U};
static unsigned int ng12[] = {1023U, 511U};
static unsigned int ng13[] = {1023U, 767U};
static unsigned int ng14[] = {1023U, 895U};
static unsigned int ng15[] = {1023U, 959U};
static unsigned int ng16[] = {1023U, 991U};
static unsigned int ng17[] = {1023U, 1007U};
static unsigned int ng18[] = {1023U, 1015U};
static unsigned int ng19[] = {1023U, 1019U};
static unsigned int ng20[] = {1023U, 1021U};
static unsigned int ng21[] = {1023U, 1022U};



static void Cont_68_0(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 10208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5928);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB7:    t14 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t14);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB8;

LAB9:    t20 = *((unsigned int *)t4);
    t21 = (~(t20));
    t22 = *((unsigned int *)t14);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t14) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t18, 8);

LAB16:    t24 = (t0 + 11400);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memset(t28, 0, 8);
    t29 = 1U;
    t30 = t29;
    t31 = (t3 + 4);
    t32 = *((unsigned int *)t3);
    t29 = (t29 & t32);
    t33 = *((unsigned int *)t31);
    t30 = (t30 & t33);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t35 | t29);
    t36 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t36 | t30);
    xsi_driver_vfirst_trans(t24, 0, 0);
    t37 = (t0 + 11272);
    *((int *)t37) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 1688U);
    t19 = *((char **)t18);
    goto LAB9;

LAB10:    t18 = ((char*)((ng1)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 1, t19, 1, t18, 1);
    goto LAB16;

LAB14:    memcpy(t3, t19, 8);
    goto LAB16;

}

static void Cont_70_1(char *t0)
{
    char t4[8];
    char t18[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;

LAB0:    t1 = (t0 + 10456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t3 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 & 1U);
    if (t9 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t11 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t11);
    t14 = (t12 || t13);
    if (t14 > 0)
        goto LAB8;

LAB9:    memcpy(t26, t4, 8);

LAB10:    t58 = (t0 + 11464);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memset(t62, 0, 8);
    t63 = 1U;
    t64 = t63;
    t65 = (t26 + 4);
    t66 = *((unsigned int *)t26);
    t63 = (t63 & t66);
    t67 = *((unsigned int *)t65);
    t64 = (t64 & t67);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t69 | t63);
    t70 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t70 | t64);
    xsi_driver_vfirst_trans(t58, 0, 0);
    t71 = (t0 + 11288);
    *((int *)t71) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t10 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB7;

LAB8:    t15 = (t0 + 6088);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memset(t18, 0, 8);
    t19 = (t17 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (~(t20));
    t22 = *((unsigned int *)t17);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t19) != 0)
        goto LAB13;

LAB14:    t27 = *((unsigned int *)t4);
    t28 = *((unsigned int *)t18);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t30 = (t4 + 4);
    t31 = (t18 + 4);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t31);
    t35 = (t33 | t34);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB10;

LAB11:    *((unsigned int *)t18) = 1;
    goto LAB14;

LAB13:    t25 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB14;

LAB15:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t26) = (t38 | t39);
    t40 = (t4 + 4);
    t41 = (t18 + 4);
    t42 = *((unsigned int *)t4);
    t43 = (~(t42));
    t44 = *((unsigned int *)t40);
    t45 = (~(t44));
    t46 = *((unsigned int *)t18);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t54 & t52);
    t55 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB17;

}

static void Cont_71_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char *t1;
    char *t2;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;

LAB0:    t1 = (t0 + 10704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1688U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t6 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t12 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t12) = 1;

LAB7:    t13 = (t5 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t5) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB9;

LAB8:    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    memset(t4, 0, 8);
    t23 = (t5 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t5);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) != 0)
        goto LAB12;

LAB13:    t30 = (t4 + 4);
    t31 = *((unsigned int *)t4);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB14;

LAB15:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t30);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t30) > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t4) > 0)
        goto LAB20;

LAB21:    memcpy(t3, t41, 8);

LAB22:    t42 = (t0 + 11528);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memset(t46, 0, 8);
    t47 = 524287U;
    t48 = t47;
    t49 = (t3 + 4);
    t50 = *((unsigned int *)t3);
    t47 = (t47 & t50);
    t51 = *((unsigned int *)t49);
    t48 = (t48 & t51);
    t52 = (t46 + 4);
    t53 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t53 | t47);
    t54 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t54 | t48);
    xsi_driver_vfirst_trans(t42, 0, 18);
    t55 = (t0 + 11304);
    *((int *)t55) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB9:    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB8;

LAB10:    *((unsigned int *)t4) = 1;
    goto LAB13;

LAB12:    t29 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t34 = (t0 + 2648U);
    t35 = *((char **)t34);
    goto LAB15;

LAB16:    t34 = (t0 + 5768);
    t40 = (t34 + 56U);
    t41 = *((char **)t40);
    goto LAB17;

LAB18:    xsi_vlog_unsigned_bit_combine(t3, 19, t35, 19, t41, 19);
    goto LAB22;

LAB20:    memcpy(t3, t35, 8);
    goto LAB22;

}

static void Always_84_3(char *t0)
{
    char t6[8];
    char t16[8];
    char t51[8];
    char t52[8];
    char t53[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    int t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    t1 = (t0 + 10952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 11320);
    *((int *)t2) = 1;
    t3 = (t0 + 10984);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(84, ng0);

LAB5:    xsi_set_current_line(86, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 5928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 19);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 28);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 28);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 15U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 15U);

LAB6:    t5 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t5, 4);
    if (t13 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t13 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t13 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t13 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t13 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t13 == 1)
        goto LAB23;

LAB24:
LAB25:    xsi_set_current_line(166, ng0);
    t2 = (t0 + 9288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9128);
    t14 = (t5 + 56U);
    t15 = *((char **)t14);
    t24 = (t0 + 8968);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t0 + 8808);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t0 + 8648);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t0 + 7688);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t0 + 8168);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t0 + 8488);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t0 + 8328);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t0 + 8008);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    xsi_vlogtype_concat(t16, 10, 10, 10U, t47, 1, t44, 1, t41, 1, t38, 1, t35, 1, t32, 1, t29, 1, t26, 1, t15, 1, t4, 1);

LAB100:    t48 = ((char*)((ng12)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t48, 10);
    if (t13 == 1)
        goto LAB101;

LAB102:    t2 = ((char*)((ng13)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB103;

LAB104:    t2 = ((char*)((ng14)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB105;

LAB106:    t2 = ((char*)((ng15)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB107;

LAB108:    t2 = ((char*)((ng16)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB109;

LAB110:    t2 = ((char*)((ng17)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB111;

LAB112:    t2 = ((char*)((ng18)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB113;

LAB114:    t2 = ((char*)((ng19)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB115;

LAB116:    t2 = ((char*)((ng20)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB117;

LAB118:    t2 = ((char*)((ng21)));
    t13 = xsi_vlog_unsigned_case_xcompare(t16, 10, t2, 10);
    if (t13 == 1)
        goto LAB119;

LAB120:
LAB121:    goto LAB2;

LAB7:    xsi_set_current_line(105, ng0);

LAB26:    xsi_set_current_line(107, ng0);
    t14 = (t0 + 2008U);
    t15 = *((char **)t14);
    t14 = (t0 + 7048);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t16 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 4095U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 4095U);
    t5 = (t0 + 5608);
    xsi_vlogvar_assign_value(t5, t16, 0, 0, 12);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 5448);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB30;

LAB28:    if (*((unsigned int *)t2) == 0)
        goto LAB27;

LAB29:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB30:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB32;

LAB31:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 8008);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);
    goto LAB25;

LAB9:    xsi_set_current_line(113, ng0);

LAB33:    xsi_set_current_line(114, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t16 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 524287U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 524287U);
    t5 = (t0 + 5768);
    xsi_vlogvar_assign_value(t5, t16, 0, 0, 19);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t16 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 4095U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 4095U);
    t5 = (t0 + 6248);
    xsi_vlogvar_assign_value(t5, t16, 0, 0, 12);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB37;

LAB35:    if (*((unsigned int *)t2) == 0)
        goto LAB34;

LAB36:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB37:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB39;

LAB38:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 8648);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);
    goto LAB25;

LAB11:    xsi_set_current_line(121, ng0);

LAB40:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t4 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB44;

LAB42:    if (*((unsigned int *)t3) == 0)
        goto LAB41;

LAB43:    t5 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t5) = 1;

LAB44:    t14 = (t16 + 4);
    t15 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB46;

LAB45:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 7688);
    xsi_vlogvar_assign_value(t24, t16, 0, 0, 1);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 7848);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    goto LAB25;

LAB13:    xsi_set_current_line(126, ng0);

LAB47:    xsi_set_current_line(127, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 2);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 16383U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 16383U);
    t14 = (t0 + 6408);
    xsi_vlogvar_assign_value(t14, t16, 0, 0, 14);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB51;

LAB49:    if (*((unsigned int *)t2) == 0)
        goto LAB48;

LAB50:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB51:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB53;

LAB52:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 8808);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);
    goto LAB25;

LAB15:    xsi_set_current_line(131, ng0);

LAB54:    xsi_set_current_line(132, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 2);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 255U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 255U);
    t14 = (t0 + 6568);
    xsi_vlogvar_assign_value(t14, t16, 0, 0, 8);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB58;

LAB56:    if (*((unsigned int *)t2) == 0)
        goto LAB55;

LAB57:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB58:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB60;

LAB59:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 8968);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);
    goto LAB25;

LAB17:    xsi_set_current_line(136, ng0);

LAB61:    xsi_set_current_line(137, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 2);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 524287U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 524287U);
    t14 = (t0 + 6728);
    xsi_vlogvar_assign_value(t14, t16, 0, 0, 19);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB65;

LAB63:    if (*((unsigned int *)t2) == 0)
        goto LAB62;

LAB64:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB65:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB67;

LAB66:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 9128);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);
    goto LAB25;

LAB19:    xsi_set_current_line(141, ng0);

LAB68:    xsi_set_current_line(142, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 2);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 2);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t11 & 524287U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 524287U);
    t14 = (t0 + 6888);
    xsi_vlogvar_assign_value(t14, t16, 0, 0, 19);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB72;

LAB70:    if (*((unsigned int *)t2) == 0)
        goto LAB69;

LAB71:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB72:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB74;

LAB73:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 9288);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);
    goto LAB25;

LAB21:    xsi_set_current_line(147, ng0);

LAB75:    xsi_set_current_line(148, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t0 + 7368);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 1);
    xsi_set_current_line(149, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 7848);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB79;

LAB77:    if (*((unsigned int *)t2) == 0)
        goto LAB76;

LAB78:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB79:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB81;

LAB80:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 8328);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);
    goto LAB25;

LAB23:    xsi_set_current_line(153, ng0);

LAB82:    xsi_set_current_line(154, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t16 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 2);
    t9 = (t8 & 1);
    *((unsigned int *)t16) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 2);
    t12 = (t11 & 1);
    *((unsigned int *)t3) = t12;
    t14 = (t16 + 4);
    t17 = *((unsigned int *)t14);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB83;

LAB84:    xsi_set_current_line(158, ng0);

LAB93:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 7208);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(160, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 7848);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(161, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB97;

LAB95:    if (*((unsigned int *)t2) == 0)
        goto LAB94;

LAB96:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB97:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB99;

LAB98:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 8168);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);

LAB85:    goto LAB25;

LAB27:    *((unsigned int *)t16) = 1;
    goto LAB30;

LAB32:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB31;

LAB34:    *((unsigned int *)t16) = 1;
    goto LAB37;

LAB39:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB38;

LAB41:    *((unsigned int *)t16) = 1;
    goto LAB44;

LAB46:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB45;

LAB48:    *((unsigned int *)t16) = 1;
    goto LAB51;

LAB53:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB52;

LAB55:    *((unsigned int *)t16) = 1;
    goto LAB58;

LAB60:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB59;

LAB62:    *((unsigned int *)t16) = 1;
    goto LAB65;

LAB67:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB66;

LAB69:    *((unsigned int *)t16) = 1;
    goto LAB72;

LAB74:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB73;

LAB76:    *((unsigned int *)t16) = 1;
    goto LAB79;

LAB81:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB80;

LAB83:    xsi_set_current_line(154, ng0);

LAB86:    xsi_set_current_line(155, ng0);
    t15 = (t0 + 2008U);
    t24 = *((char **)t15);
    t15 = (t0 + 7528);
    xsi_vlogvar_assign_value(t15, t24, 0, 0, 1);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 7848);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(157, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB90;

LAB88:    if (*((unsigned int *)t2) == 0)
        goto LAB87;

LAB89:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB90:    t5 = (t16 + 4);
    t14 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t17 = (~(t12));
    *((unsigned int *)t16) = t17;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB92;

LAB91:    t22 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t22 & 1U);
    t23 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t23 & 1U);
    t15 = (t0 + 8488);
    xsi_vlogvar_assign_value(t15, t16, 0, 0, 1);
    goto LAB85;

LAB87:    *((unsigned int *)t16) = 1;
    goto LAB90;

LAB92:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB91;

LAB94:    *((unsigned int *)t16) = 1;
    goto LAB97;

LAB99:    t18 = *((unsigned int *)t16);
    t19 = *((unsigned int *)t14);
    *((unsigned int *)t16) = (t18 | t19);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    goto LAB98;

LAB101:    xsi_set_current_line(167, ng0);
    t49 = (t0 + 2808U);
    t50 = *((char **)t49);
    t49 = (t0 + 5288);
    xsi_vlogvar_assign_value(t49, t50, 0, 0, 32);
    goto LAB121;

LAB103:    xsi_set_current_line(168, ng0);
    t3 = (t0 + 3768U);
    t4 = *((char **)t3);
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB121;

LAB105:    xsi_set_current_line(169, ng0);
    t3 = (t0 + 3768U);
    t4 = *((char **)t3);
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB121;

LAB107:    xsi_set_current_line(170, ng0);
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t14 = (t0 + 4248U);
    t15 = *((char **)t14);
    t14 = (t0 + 4088U);
    t24 = *((char **)t14);
    t14 = (t0 + 3928U);
    t25 = *((char **)t14);
    xsi_vlogtype_concat(t51, 32, 24, 6U, t25, 1, t24, 1, t15, 1, t3, 9, t5, 4, t4, 8);
    t14 = (t0 + 5288);
    xsi_vlogvar_assign_value(t14, t51, 0, 0, 32);
    goto LAB121;

LAB109:    xsi_set_current_line(171, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1848U);
    t14 = *((char **)t5);
    xsi_vlogtype_concat(t51, 32, 32, 3U, t14, 1, t3, 23, t4, 8);
    t5 = (t0 + 5288);
    xsi_vlogvar_assign_value(t5, t51, 0, 0, 32);
    goto LAB121;

LAB111:    xsi_set_current_line(172, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    memset(t52, 0, 8);
    t3 = (t4 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB122;

LAB123:    if (*((unsigned int *)t3) != 0)
        goto LAB124;

LAB125:    t14 = (t52 + 4);
    t12 = *((unsigned int *)t52);
    t17 = *((unsigned int *)t14);
    t18 = (t12 || t17);
    if (t18 > 0)
        goto LAB126;

LAB127:    t19 = *((unsigned int *)t52);
    t20 = (~(t19));
    t21 = *((unsigned int *)t14);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB128;

LAB129:    if (*((unsigned int *)t14) > 0)
        goto LAB130;

LAB131:    if (*((unsigned int *)t52) > 0)
        goto LAB132;

LAB133:    memcpy(t51, t25, 8);

LAB134:    t26 = (t0 + 5288);
    xsi_vlogvar_assign_value(t26, t51, 0, 0, 32);
    goto LAB121;

LAB113:    xsi_set_current_line(173, ng0);
    t3 = (t0 + 3128U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    xsi_vlogtype_concat(t51, 32, 32, 2U, t3, 20, t4, 12);
    t5 = (t0 + 5288);
    xsi_vlogvar_assign_value(t5, t51, 0, 0, 32);
    goto LAB121;

LAB115:    xsi_set_current_line(174, ng0);
    t3 = (t0 + 3288U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    xsi_vlogtype_concat(t51, 32, 32, 2U, t3, 28, t4, 4);
    t5 = (t0 + 5288);
    xsi_vlogvar_assign_value(t5, t51, 0, 0, 32);
    goto LAB121;

LAB117:    xsi_set_current_line(175, ng0);
    t3 = (t0 + 3448U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    xsi_vlogtype_concat(t51, 32, 32, 2U, t3, 20, t4, 12);
    t5 = (t0 + 5288);
    xsi_vlogvar_assign_value(t5, t51, 0, 0, 32);
    goto LAB121;

LAB119:    xsi_set_current_line(176, ng0);
    t3 = (t0 + 3608U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    xsi_vlogtype_concat(t51, 32, 32, 2U, t3, 20, t4, 12);
    t5 = (t0 + 5288);
    xsi_vlogvar_assign_value(t5, t51, 0, 0, 32);
    goto LAB121;

LAB122:    *((unsigned int *)t52) = 1;
    goto LAB125;

LAB124:    t5 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t5) = 1;
    goto LAB125;

LAB126:    t15 = (t0 + 2968U);
    t24 = *((char **)t15);
    t15 = ((char*)((ng3)));
    xsi_vlogtype_concat(t53, 32, 32, 2U, t15, 20, t24, 12);
    goto LAB127;

LAB128:    t25 = ((char*)((ng3)));
    goto LAB129;

LAB130:    xsi_vlog_unsigned_bit_combine(t51, 32, t53, 32, t25, 32);
    goto LAB134;

LAB132:    memcpy(t51, t53, 8);
    goto LAB134;

}


extern void work_m_00000000000999943588_3343995150_init()
{
	static char *pe[] = {(void *)Cont_68_0,(void *)Cont_70_1,(void *)Cont_71_2,(void *)Always_84_3};
	xsi_register_didat("work_m_00000000000999943588_3343995150", "isim/Test_isim_beh.exe.sim/work/m_00000000000999943588_3343995150.didat");
	xsi_register_executes(pe);
}
