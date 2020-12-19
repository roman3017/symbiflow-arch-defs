## https://github.com/Digilent/digilent-xdc/blob/master/Nexys-4-DDR-Master.xdc
## https://github.com/Digilent/digilent-xdc/blob/master/Nexys-A7-100T-Master.xdc

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clocking_GCLK100 }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clocking_GCLK100 }];

##Switches

set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[16] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[17] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[18] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[19] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[20] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[21] }]; #IO_L7N_T1_D10_14 Sch=sw[5]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[22] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[23] }]; #IO_L5N_T0_D07_14 Sch=sw[7]
set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { system_gpioA_gpio[24] }]; #IO_L24N_T3_34 Sch=sw[8]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { system_gpioA_gpio[25] }]; #IO_25_34 Sch=sw[9]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[26] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[27] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[28] }]; #IO_L24P_T3_35 Sch=sw[12]
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[29] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[30] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[31] }]; #IO_L21P_T3_DQS_14 Sch=sw[15]


## LEDs

set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[6] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[7] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[8] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[9] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[10] }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[11] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=led[11]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[12] }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[13] }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[14] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { system_gpioA_gpio[15] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]

#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { LED16_B }]; #IO_L5P_T0_D06_14 Sch=led16_b
#set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { LED16_G }]; #IO_L10P_T1_D14_14 Sch=led16_g
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { LED16_R }]; #IO_L11P_T1_SRCC_14 Sch=led16_r
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { LED17_B }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=led17_b
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { LED17_G }]; #IO_0_14 Sch=led17_g
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { LED17_R }]; #IO_L11N_T1_SRCC_14 Sch=led17_r


##7 segment display

#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { SEG[0] }]; #IO_L24N_T3_A00_D16_14 Sch=ca
#set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { SEG[1] }]; #IO_25_14 Sch=cb
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { SEG[2] }]; #IO_25_15 Sch=cc
#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { SEG[3] }]; #IO_L17P_T2_A26_15 Sch=cd
#set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { SEG[4] }]; #IO_L13P_T2_MRCC_14 Sch=ce
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { SEG[5] }]; #IO_L19P_T3_A10_D26_14 Sch=cf
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { SEG[6] }]; #IO_L4P_T0_D04_14 Sch=cg
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { SEG[7] }]; #IO_L19N_T3_A21_VREF_15 Sch=dp

#set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { AN[0] }]; #IO_L23P_T3_FOE_B_15 Sch=an[0]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { AN[1] }]; #IO_L23N_T3_FWE_B_15 Sch=an[1]
#set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { AN[2] }]; #IO_L24P_T3_A01_D17_14 Sch=an[2]
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { AN[3] }]; #IO_L19P_T3_A22_15 Sch=an[3]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { AN[4] }]; #IO_L8N_T1_D12_14 Sch=an[4]
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { AN[5] }]; #IO_L14P_T2_SRCC_14 Sch=an[5]
#set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { AN[6] }]; #IO_L23P_T3_35 Sch=an[6]
#set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { AN[7] }]; #IO_L23N_T3_A02_D18_14 Sch=an[7]


##Buttons

#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { cpu_reset }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn

#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { BTNC }]; #IO_L9P_T1_DQS_14 Sch=btnc
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { BTNU }]; #IO_L4N_T0_D05_14 Sch=btnu
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { BTNL }]; #IO_L12P_T1_MRCC_14 Sch=btnl
#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { BTNR }]; #IO_L10N_T1_D15_14 Sch=btnr
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { BTND }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd


##Pmod Headers


##Pmod Header JA

set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { system_spiA_user_data[0] }]; #IO_L20N_T3_A19_15 Sch=ja[1]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { system_spiA_user_data[1] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { system_spiA_user_sclk }]; #IO_L21P_T3_DQS_15 Sch=ja[3]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { system_audioOut_outputs[1] }]; #IO_L18N_T2_A23_15 Sch=ja[4]
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { JA[7] }]; #IO_L16N_T2_A27_15 Sch=ja[7]
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { JA[8] }]; #IO_L16P_T2_A28_15 Sch=ja[8]
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { JA[9] }]; #IO_L22N_T3_A16_15 Sch=ja[9]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { JA[10] }]; #IO_L22P_T3_A17_15 Sch=ja[10]

##Pmod Header JB

#set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { JB[1] }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { JB[2] }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { JB[3] }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { JB[4] }]; #IO_L15P_T2_DQS_15 Sch=jb[4]
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { JB[7] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { JB[8] }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { JB[9] }]; #IO_0_15 Sch=jb[9]
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { JB[10] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


##Pmod Header JC

set_property -dict { PACKAGE_PIN K1 IOSTANDARD LVCMOS33 } [get_ports { hr_cs_n[2] }];
set_property -dict { PACKAGE_PIN F6 IOSTANDARD LVCMOS33 } [get_ports { hr_cs_n[0] }];
set_property -dict { PACKAGE_PIN J2 IOSTANDARD LVCMOS33 } [get_ports { hr_ck }];
set_property -dict { PACKAGE_PIN G6 IOSTANDARD LVCMOS33 } [get_ports { hr_ck_n }];
set_property -dict { PACKAGE_PIN E7 IOSTANDARD LVCMOS33 } [get_ports { hr_cs_n[3] }];
set_property -dict { PACKAGE_PIN J3 IOSTANDARD LVCMOS33 } [get_ports { hr_cs_n[1] }];
set_property -dict { PACKAGE_PIN J4 IOSTANDARD LVCMOS33 } [get_ports { hr_rst_n }];
set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS33 } [get_ports { hr_rwds }];

#set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { JC[1] }]; #IO_L23N_T3_35 Sch=jc[1]
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { JC[2] }]; #IO_L19N_T3_VREF_35 Sch=jc[2]
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { JC[3] }]; #IO_L22N_T3_35 Sch=jc[3]
#set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { JC[4] }]; #IO_L19P_T3_35 Sch=jc[4]
#set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { JC[7] }]; #IO_L6P_T0_35 Sch=jc[7]
#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { JC[8] }]; #IO_L22P_T3_35 Sch=jc[8]
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { JC[9] }]; #IO_L21P_T3_DQS_35 Sch=jc[9]
#set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { JC[10] }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]


##Pmod Header JD

set_property -dict { PACKAGE_PIN H4 IOSTANDARD LVCMOS33 } [get_ports { hr_dq[0] }];
set_property -dict { PACKAGE_PIN H1 IOSTANDARD LVCMOS33 } [get_ports { hr_dq[1] }];
set_property -dict { PACKAGE_PIN G1 IOSTANDARD LVCMOS33 } [get_ports { hr_dq[2] }];
set_property -dict { PACKAGE_PIN G3 IOSTANDARD LVCMOS33 } [get_ports { hr_dq[3] }];
set_property -dict { PACKAGE_PIN H2 IOSTANDARD LVCMOS33 } [get_ports { hr_dq[7] }];
set_property -dict { PACKAGE_PIN G4 IOSTANDARD LVCMOS33 } [get_ports { hr_dq[6] }];
set_property -dict { PACKAGE_PIN G2 IOSTANDARD LVCMOS33 } [get_ports { hr_dq[5] }];
set_property -dict { PACKAGE_PIN F3 IOSTANDARD LVCMOS33 } [get_ports { hr_dq[4] }];

#set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { JD[1] }]; #IO_L21N_T3_DQS_35 Sch=jd[1]
#set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { JD[2] }]; #IO_L17P_T2_35 Sch=jd[2]
#set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { JD[3] }]; #IO_L17N_T2_35 Sch=jd[3]
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { JD[4] }]; #IO_L20N_T3_35 Sch=jd[4]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { JD[7] }]; #IO_L15P_T2_DQS_35 Sch=jd[7]
#set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { JD[8] }]; #IO_L20P_T3_35 Sch=jd[8]
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { JD[9] }]; #IO_L15N_T2_DQS_35 Sch=jd[9]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { JD[10] }]; #IO_L13N_T2_MRCC_35 Sch=jd[10]


##Pmod Header JXADC

#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVDS     } [get_ports { XA_N[1] }]; #IO_L9N_T1_DQS_AD3N_15 Sch=xa_n[1]
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVDS     } [get_ports { XA_P[1] }]; #IO_L9P_T1_DQS_AD3P_15 Sch=xa_p[1]
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVDS     } [get_ports { XA_N[2] }]; #IO_L8N_T1_AD10N_15 Sch=xa_n[2]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVDS     } [get_ports { XA_P[2] }]; #IO_L8P_T1_AD10P_15 Sch=xa_p[2]
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVDS     } [get_ports { XA_N[3] }]; #IO_L7N_T1_AD2N_15 Sch=xa_n[3]
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVDS     } [get_ports { XA_P[3] }]; #IO_L7P_T1_AD2P_15 Sch=xa_p[3]
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVDS     } [get_ports { XA_N[4] }]; #IO_L10N_T1_AD11N_15 Sch=xa_n[4]
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVDS     } [get_ports { XA_P[4] }]; #IO_L10P_T1_AD11P_15 Sch=xa_p[4]


##VGA Connector

set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_r[0] }]; #IO_L8N_T1_AD14N_35 Sch=vga_r[0]
set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_r[1] }]; #IO_L7N_T1_AD6N_35 Sch=vga_r[1]
set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_r[2] }]; #IO_L1N_T0_AD4N_35 Sch=vga_r[2]
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_r[3] }]; #IO_L8P_T1_AD14P_35 Sch=vga_r[3]

set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_g[0] }]; #IO_L1P_T0_AD4P_35 Sch=vga_g[0]
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_g[1] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=vga_g[1]
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_g[2] }]; #IO_L2N_T0_AD12N_35 Sch=vga_g[2]
set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_g[3] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=vga_g[3]

set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_b[0] }]; #IO_L2P_T0_AD12P_35 Sch=vga_b[0]
set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_b[1] }]; #IO_L4N_T0_35 Sch=vga_b[1]
set_property -dict { PACKAGE_PIN D7    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_b[2] }]; #IO_L6N_T0_VREF_35 Sch=vga_b[2]
set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_color_b[3] }]; #IO_L4P_T0_35 Sch=vga_b[3]

set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_hSync }]; #IO_L4P_T0_15 Sch=vga_hs
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { system_vgaPhy_vSync }]; #IO_L3N_T0_DQS_AD1N_15 Sch=vga_vs


##Micro SD Connector

#set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { SD_RESET }]; #IO_L14P_T2_SRCC_35 Sch=sd_reset
#set_property -dict { PACKAGE_PIN A1    IOSTANDARD LVCMOS33 } [get_ports { SD_CD }]; #IO_L9N_T1_DQS_AD7N_35 Sch=sd_cd
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { system_spiA_sdcard_sclk }]; #IO_L9P_T1_DQS_AD7P_35 Sch=sd_sck
set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { system_spiA_sdcard_data[0] }]; #IO_L16N_T2_35 Sch=sd_cmd
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { system_spiA_sdcard_data[1] }]; #IO_L16P_T2_35 Sch=sd_dat[0]
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[1] }]; #IO_L18N_T2_35 Sch=sd_dat[1]
#set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[2] }]; #IO_L18P_T2_35 Sch=sd_dat[2]
set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { system_spiA_sdcard_ss[0] }]; #IO_L14N_T2_SRCC_35 Sch=sd_dat[3]


##Accelerometer

#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { ACL_MISO }]; #IO_L11P_T1_SRCC_15 Sch=acl_miso
#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { ACL_MOSI }]; #IO_L5N_T0_AD9N_15 Sch=acl_mosi
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { ACL_SCLK }]; #IO_L14P_T2_SRCC_15 Sch=acl_sclk
#set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { ACL_CSN }]; #IO_L12P_T1_MRCC_15 Sch=acl_csn
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { ACL_INT[1] }]; #IO_L2P_T0_AD8P_15 Sch=acl_int[1]
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { ACL_INT[2] }]; #IO_L20P_T3_A20_15 Sch=acl_int[2]


##Temperature Sensor

#set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { TMP_SCL }]; #IO_L1N_T0_AD0N_15 Sch=tmp_scl
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { TMP_SDA }]; #IO_L12N_T1_MRCC_15 Sch=tmp_sda
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { TMP_INT }]; #IO_L6N_T0_VREF_15 Sch=tmp_int
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { TMP_CT }]; #IO_L2N_T0_AD8N_15 Sch=tmp_ct

##Omnidirectional Microphone

#set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { M_CLK }]; #IO_25_35 Sch=m_clk
#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { M_DATA }]; #IO_L24N_T3_35 Sch=m_data
#set_property -dict { PACKAGE_PIN F5    IOSTANDARD LVCMOS33 } [get_ports { M_LRSEL }]; #IO_0_35 Sch=m_lrsel


##PWM Audio Amplifier

set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { system_audioOut_outputs[0] }]; #IO_L4N_T0_15 Sch=aud_pwm
set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { audioOut_sd }]; #IO_L6P_T0_15 Sch=aud_sd


##USB-RS232 Interface

set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports system_uartA_uart_txd]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports system_uartA_uart_rxd]

#set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { UART_TXD_IN }]; #IO_L7P_T1_AD6P_35 Sch=uart_txd_in
#set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { UART_RXD_OUT }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { UART_CTS }]; #IO_L12N_T1_MRCC_35 Sch=uart_cts
#set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { UART_RTS }]; #IO_L5N_T0_AD13N_35 Sch=uart_rts

##USB HID (PS/2)

#set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { PS2_CLK }]; #IO_L13P_T2_MRCC_35 Sch=ps2_clk
#set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { PS2_DATA }]; #IO_L10N_T1_AD15N_35 Sch=ps2_data


##SMSC Ethernet PHY

set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { system_spiA_md_C }]; #IO_L11P_T1_SRCC_16 Sch=eth_mdc
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { system_spiA_md_IO }]; #IO_L14N_T2_SRCC_16 Sch=eth_mdio
#set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { ETH_RSTN }]; #IO_L10P_T1_AD15P_35 Sch=eth_rstn
set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { system_eth_mii_RX_CRS_DV }]; #IO_L6N_T0_VREF_16 Sch=eth_crsdv/eth_mode[2]
set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { system_eth_mii_RX_ER }]; #IO_L13N_T2_MRCC_16 Sch=eth_rxerr/eth_phyad0
set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { system_eth_mii_RX_D[0] }]; #IO_L13P_T2_MRCC_16 Sch=eth_rxd[0]/eth_mode[0]
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { system_eth_mii_RX_D[1] }]; #IO_L19N_T3_VREF_16 Sch=eth_rxd[1]/eth_mode[1]
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { system_eth_mii_TX_EN }]; #IO_L11N_T1_SRCC_16 Sch=eth_txen
set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { system_eth_mii_TX_D[0] }]; #IO_L14P_T2_SRCC_16 Sch=eth_txd[0]
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { system_eth_mii_TX_D[1] }]; #IO_L12N_T1_MRCC_16 Sch=eth_txd[1]
set_property -dict { PACKAGE_PIN D5    IOSTANDARD LVCMOS33 } [get_ports { clocking_clk50 }]; #IO_L11P_T1_SRCC_35 Sch=eth_refclk
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { ETH_INTN }]; #IO_L12P_T1_MRCC_16 Sch=eth_intn/eth_refclko


##Quad SPI Flash

set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { system_spiA_flash_data[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { system_spiA_flash_data[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { QSPI_DQ[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { QSPI_DQ[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]
set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { system_spiA_flash_ss[0] }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_csn

##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Fri Feb 21 11:11:59 2014
##  Generated by MIG Version 1.9
##  
##################################################################################################
##  File name :       ddr.xdc
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A100T-CSG324
##                    Speedgrade:        -1
##                    Design Entry:      VHDL
##                    Frequency:         300.03 MHz
##                    Time Period:       3333 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR2_SDRAM->Components->MT47H64M16HR-25E
## Data Width: 16
## Time Period: 3333
## Data Mask: 1
##################################################################################################

#create_clock -name sys_clk_i -period 4.999 [get_ports sys_clk_i]
#set_propagated_clock sys_clk_i
          
############## NET - IOSTANDARD ##################


# PadFunction: IO_L23P_T3_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[0]}]
set_property LOC R7 [get_ports {sdramDomain_phyA_sdram_DQ[0]}]

# PadFunction: IO_L20N_T3_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[1]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[1]}]
set_property LOC V6 [get_ports {sdramDomain_phyA_sdram_DQ[1]}]

# PadFunction: IO_L24P_T3_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[2]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[2]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[2]}]
set_property LOC R8 [get_ports {sdramDomain_phyA_sdram_DQ[2]}]

# PadFunction: IO_L22P_T3_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[3]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[3]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[3]}]
set_property LOC U7 [get_ports {sdramDomain_phyA_sdram_DQ[3]}]

# PadFunction: IO_L20P_T3_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[4]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[4]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[4]}]
set_property LOC V7 [get_ports {sdramDomain_phyA_sdram_DQ[4]}]

# PadFunction: IO_L19P_T3_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[5]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[5]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[5]}]
set_property LOC R6 [get_ports {sdramDomain_phyA_sdram_DQ[5]}]

# PadFunction: IO_L22N_T3_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[6]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[6]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[6]}]
set_property LOC U6 [get_ports {sdramDomain_phyA_sdram_DQ[6]}]

# PadFunction: IO_L19N_T3_VREF_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[7]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[7]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[7]}]
set_property LOC R5 [get_ports {sdramDomain_phyA_sdram_DQ[7]}]

# PadFunction: IO_L12P_T1_MRCC_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[8]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[8]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[8]}]
set_property LOC T5 [get_ports {sdramDomain_phyA_sdram_DQ[8]}]

# PadFunction: IO_L8N_T1_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[9]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[9]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[9]}]
set_property LOC U3 [get_ports {sdramDomain_phyA_sdram_DQ[9]}]

# PadFunction: IO_L10P_T1_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[10]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[10]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[10]}]
set_property LOC V5 [get_ports {sdramDomain_phyA_sdram_DQ[10]}]

# PadFunction: IO_L8P_T1_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[11]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[11]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[11]}]
set_property LOC U4 [get_ports {sdramDomain_phyA_sdram_DQ[11]}]

# PadFunction: IO_L10N_T1_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[12]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[12]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[12]}]
set_property LOC V4 [get_ports {sdramDomain_phyA_sdram_DQ[12]}]

# PadFunction: IO_L12N_T1_MRCC_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[13]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[13]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[13]}]
set_property LOC T4 [get_ports {sdramDomain_phyA_sdram_DQ[13]}]

# PadFunction: IO_L7N_T1_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[14]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[14]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[14]}]
set_property LOC V1 [get_ports {sdramDomain_phyA_sdram_DQ[14]}]

# PadFunction: IO_L11N_T1_SRCC_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQ[15]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQ[15]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQ[15]}]
set_property LOC T3 [get_ports {sdramDomain_phyA_sdram_DQ[15]}]

# PadFunction: IO_L18N_T2_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[12]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[12]}]
set_property LOC N6 [get_ports {sdramDomain_phyA_sdram_ADDR[12]}]

# PadFunction: IO_L5P_T0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[11]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[11]}]
set_property LOC K5 [get_ports {sdramDomain_phyA_sdram_ADDR[11]}]

# PadFunction: IO_L15N_T2_DQS_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[10]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[10]}]
set_property LOC R2 [get_ports {sdramDomain_phyA_sdram_ADDR[10]}]

# PadFunction: IO_L13P_T2_MRCC_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[9]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[9]}]
set_property LOC N5 [get_ports {sdramDomain_phyA_sdram_ADDR[9]}]

# PadFunction: IO_L5N_T0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[8]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[8]}]
set_property LOC L4 [get_ports {sdramDomain_phyA_sdram_ADDR[8]}]

# PadFunction: IO_L3N_T0_DQS_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[7]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[7]}]
set_property LOC N1 [get_ports {sdramDomain_phyA_sdram_ADDR[7]}]

# PadFunction: IO_L4N_T0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[6]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[6]}]
set_property LOC M2 [get_ports {sdramDomain_phyA_sdram_ADDR[6]}]

# PadFunction: IO_L13N_T2_MRCC_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[5]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[5]}]
set_property LOC P5 [get_ports {sdramDomain_phyA_sdram_ADDR[5]}]

# PadFunction: IO_L2N_T0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[4]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[4]}]
set_property LOC L3 [get_ports {sdramDomain_phyA_sdram_ADDR[4]}]

# PadFunction: IO_L17N_T2_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[3]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[3]}]
set_property LOC T1 [get_ports {sdramDomain_phyA_sdram_ADDR[3]}]

# PadFunction: IO_L18P_T2_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[2]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[2]}]
set_property LOC M6 [get_ports {sdramDomain_phyA_sdram_ADDR[2]}]

# PadFunction: IO_L14P_T2_SRCC_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[1]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[1]}]
set_property LOC P4 [get_ports {sdramDomain_phyA_sdram_ADDR[1]}]

# PadFunction: IO_L16P_T2_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ADDR[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ADDR[0]}]
set_property LOC M4 [get_ports {sdramDomain_phyA_sdram_ADDR[0]}]

# PadFunction: IO_L17P_T2_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_BA[2]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_BA[2]}]
set_property LOC R1 [get_ports {sdramDomain_phyA_sdram_BA[2]}]

# PadFunction: IO_L14N_T2_SRCC_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_BA[1]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_BA[1]}]
set_property LOC P3 [get_ports {sdramDomain_phyA_sdram_BA[1]}]

# PadFunction: IO_L15P_T2_DQS_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_BA[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_BA[0]}]
set_property LOC P2 [get_ports {sdramDomain_phyA_sdram_BA[0]}]

# PadFunction: IO_L16N_T2_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_RASn}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_RASn}]
set_property LOC N4 [get_ports {sdramDomain_phyA_sdram_RASn}]

# PadFunction: IO_L1P_T0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_CASn}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_CASn}]
set_property LOC L1 [get_ports {sdramDomain_phyA_sdram_CASn}]

# PadFunction: IO_L3P_T0_DQS_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_WEn}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_WEn}]
set_property LOC N2 [get_ports {sdramDomain_phyA_sdram_WEn}]

# PadFunction: IO_L1N_T0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_CKE}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_CKE}]
set_property LOC M1 [get_ports {sdramDomain_phyA_sdram_CKE}]

# PadFunction: IO_L4P_T0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_ODT}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_ODT}]
set_property LOC M3 [get_ports {sdramDomain_phyA_sdram_ODT}]

# PadFunction: IO_0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_CSn}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_CSn}]
set_property LOC K6 [get_ports {sdramDomain_phyA_sdram_CSn}]

# PadFunction: IO_L23N_T3_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DM[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DM[0]}]
set_property LOC T6 [get_ports {sdramDomain_phyA_sdram_DM[0]}]

# PadFunction: IO_L7P_T1_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DM[1]}]
set_property IOSTANDARD SSTL18_II [get_ports {sdramDomain_phyA_sdram_DM[1]}]
set_property LOC U1 [get_ports {sdramDomain_phyA_sdram_DM[1]}]

# PadFunction: IO_L21P_T3_DQS_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQS[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQS[0]}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQS[0]}]
set_property LOC U9 [get_ports {sdramDomain_phyA_sdram_DQS[0]}]

# PadFunction: IO_L21N_T3_DQS_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQSn[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQSn[0]}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQSn[0]}]
set_property LOC V9 [get_ports {sdramDomain_phyA_sdram_DQSn[0]}]

# PadFunction: IO_L9P_T1_DQS_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQS[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQS[1]}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQS[1]}]
set_property LOC U2 [get_ports {sdramDomain_phyA_sdram_DQS[1]}]

# PadFunction: IO_L9N_T1_DQS_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_DQSn[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {sdramDomain_phyA_sdram_DQSn[1]}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {sdramDomain_phyA_sdram_DQSn[1]}]
set_property LOC V2 [get_ports {sdramDomain_phyA_sdram_DQSn[1]}]

# PadFunction: IO_L6P_T0_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_CK}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {sdramDomain_phyA_sdram_CK}]
set_property LOC L6 [get_ports {sdramDomain_phyA_sdram_CK}]

# PadFunction: IO_L6N_T0_VREF_34 
set_property SLEW FAST [get_ports {sdramDomain_phyA_sdram_CKn}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {sdramDomain_phyA_sdram_CKn}]
set_property LOC L5 [get_ports {sdramDomain_phyA_sdram_CKn}]


set_property INTERNAL_VREF  0.900 [get_iobanks 34]

set_property LOC PHASER_OUT_PHY_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_out}]

## set_property LOC PHASER_IN_PHY_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/phaser_in_gen.phaser_in}]
## set_property LOC PHASER_IN_PHY_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/phaser_in_gen.phaser_in}]
set_property LOC PHASER_IN_PHY_X1Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/phaser_in_gen.phaser_in}]



set_property LOC OUT_FIFO_X1Y7 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/out_fifo}]
set_property LOC OUT_FIFO_X1Y5 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/out_fifo}]
set_property LOC OUT_FIFO_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/out_fifo}]
set_property LOC OUT_FIFO_X1Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/out_fifo}]

set_property LOC IN_FIFO_X1Y6 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/in_fifo_gen.in_fifo}]
set_property LOC IN_FIFO_X1Y4 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/in_fifo_gen.in_fifo}]

set_property LOC PHY_CONTROL_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phy_control_i}]

set_property LOC PHASER_REF_X1Y1 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/phaser_ref_i}]

set_property LOC OLOGIC_X1Y81 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/*slave_ts}]
set_property LOC OLOGIC_X1Y57 [get_cells  -hier -filter {NAME =~ */ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/ddr_byte_group_io/*slave_ts}]

set_property LOC PLLE2_ADV_X1Y1 [get_cells u_ddr2_infrastructure/plle2_i]
set_property LOC MMCME2_ADV_X1Y1 [get_cells u_ddr2_infrastructure/gen_mmcm.mmcm_i]


set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] \
                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
                    -setup 6

set_multicycle_path -from [get_cells -hier -filter {NAME =~ */mc0/mc_read_idle_r_reg}] \
                    -to   [get_cells -hier -filter {NAME =~ */input_[?].iserdes_dq_.iserdesdq}] \
                    -hold 5

set_false_path -through [get_pins -filter {NAME =~ */DQSFOUND} -of [get_cells -hier -filter {REF_NAME == PHASER_IN_PHY}]]

set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -setup 2 -start
set_multicycle_path -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] -hold 1 -start

set_multicycle_path -to   [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1*}] \
                    -setup 12 -end

set_multicycle_path -to   [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/device_temp_sync_r1*}] \
                    -hold 11 -end
          
set_multicycle_path -to   [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/xadc_supplied_temperature.rst_r1*}] \
                    -setup 2 -end

set_multicycle_path -to   [get_cells -hier -filter {NAME =~ *temp_mon_enabled.u_tempmon/xadc_supplied_temperature.rst_r1*}] \
                    -hold 1 -end
