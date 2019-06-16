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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000460721591_3114136509_init();
    work_m_00000000001642155645_3618505025_init();
    work_m_00000000003567004991_2866410756_init();
    work_m_00000000003052344422_1050377555_init();
    work_m_00000000003052344422_1240343619_init();
    unisims_ver_m_00000000000236260522_2449448540_init();
    unisims_ver_m_00000000003510477262_2316096324_init();
    unisims_ver_m_00000000001762375489_3501834183_init();
    work_m_00000000002585632967_0726789969_init();
    work_m_00000000003125655654_1972030326_init();
    work_m_00000000004076350501_0886308060_init();
    work_m_00000000002059325041_0175114683_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002059325041_0175114683");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}