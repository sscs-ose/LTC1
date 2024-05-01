v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -760 500 -740 {
lab=VSS}
N 300 -780 300 -770 {
lab=VSS}
N 500 -850 520 -850 {
lab=Vref}
N 330 -950 330 -940 {
lab=VSS}
N 330 -1030 330 -1010 {
lab=VDD}
N 410 -1030 410 -1010 {
lab=VSS}
N 410 -950 410 -930 {
lab=GND}
N 90 -780 90 -770 {
lab=VSS}
N 90 -860 90 -840 {
lab=RST_DIV}
N 300 -850 300 -840 {
lab=VDD_VCO}
N 300 -850 320 -850 {
lab=VDD_VCO}
N 870 -920 870 -910 {
lab=VSS}
N 870 -1000 870 -980 {
lab=OPA0}
N 970 -920 970 -910 {
lab=VSS}
N 970 -1000 970 -980 {
lab=OPA1}
N 1050 -920 1050 -910 {
lab=VSS}
N 1050 -1000 1050 -980 {
lab=OPB0}
N 1150 -920 1150 -910 {
lab=VSS}
N 1150 -1000 1150 -980 {
lab=OPB1}
N 670 -760 670 -740 {
lab=VSS}
N 740 -760 740 -740 {
lab=IPD+}
N 670 -840 670 -820 {
lab=IPD_}
N 740 -840 740 -820 {
lab=VDD}
N 1280 -920 1280 -910 {
lab=VSS}
N 1280 -1000 1280 -980 {
lab=S1}
N 500 -850 500 -820 {
lab=Vref}
N 1380 -910 1380 -900 {
lab=VSS}
N 1380 -990 1380 -970 {
lab=S0}
N 1470 -920 1470 -910 {
lab=VSS}
N 1470 -1000 1470 -980 {
lab=S2}
N 780 -530 810 -530 {
lab=VSS}
N 780 -510 810 -510 {
lab=Vco_op_bar}
N 780 -490 810 -490 {
lab=Vco_op}
N 780 -470 810 -470 {
lab=VDD}
N 780 -450 800 -450 {
lab=LP_ext}
N 800 -450 810 -450 {
lab=LP_ext}
N 780 -430 810 -430 {
lab=VDD_VCO}
N 780 -410 810 -410 {
lab=IPD_}
N 780 -410 810 -410 {
lab=IPD_}
N 780 -390 810 -390 {
lab=IPD+}
N 780 -370 810 -370 {
lab=LP_op_test}
N 450 -350 480 -350 {
lab=PD_test}
N 450 -370 480 -370 {
lab=Vdiv_test}
N 450 -390 480 -390 {
lab=vcntl_test}
N 450 -410 480 -410 {
lab=S1}
N 450 -430 480 -430 {
lab=S0}
N 450 -450 480 -450 {
lab=PU_test}
N 450 -470 480 -470 {
lab=RST_DIV}
N 450 -490 480 -490 {
lab=Vo_test}
N 450 -510 480 -510 {
lab=VDD}
N 450 -530 480 -530 {
lab=Vref}
N 70 -620 70 -610 {
lab=VSS}
N 70 -700 70 -680 {
lab=PU_test}
N 170 -620 170 -610 {
lab=VSS}
N 170 -700 170 -680 {
lab=PD_test}
N 270 -620 270 -610 {
lab=VSS}
N 270 -700 270 -680 {
lab=vcntl_test}
N 70 -450 70 -440 {
lab=VSS}
N 70 -530 70 -510 {
lab=Vdiv_test}
N 160 -460 160 -450 {
lab=VSS}
N 160 -540 160 -520 {
lab=Vo_test}
N 450 -330 480 -330 {
lab=S2}
C {devices/vsource.sym} 500 -790 0 0 {name=VCNTL value="pulse(3.3 0 0 100p 100p 250n 500n)"}
C {devices/vsource.sym} 300 -810 0 0 {name=V3 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 1730 -760 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "VCO_PEX.spice"
.control
save all
tran 10n 50u 
plot v(VCO_op) v(VCO_op_bar)+4
**write pll_4.raw
.endc
"}
C {devices/vsource.sym} 330 -980 0 0 {name=V4 value=3.3}
C {devices/vsource.sym} 410 -980 0 0 {name=V5 value=0}
C {devices/lab_wire.sym} 410 -1030 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 330 -940 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 330 -1030 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 410 -930 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 320 -850 2 0 {name=p16 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 510 -850 2 0 {name=p17 sig_type=std_logic lab=Vref
}
C {devices/lab_wire.sym} 90 -770 0 0 {name=p18 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 90 -810 0 0 {name=V6 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/vsource.sym} 870 -950 0 0 {name=V10 value=3.3}
C {devices/lab_wire.sym} 870 -910 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 870 -1000 0 0 {name=p42 sig_type=std_logic lab=OPA0}
C {devices/vsource.sym} 970 -950 0 0 {name=V11 value=3.3}
C {devices/lab_wire.sym} 970 -910 0 0 {name=p43 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 970 -1000 0 0 {name=p44 sig_type=std_logic lab=OPA1}
C {devices/vsource.sym} 1050 -950 0 0 {name=V12 value=3.3}
C {devices/lab_wire.sym} 1050 -910 0 0 {name=p45 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1050 -1000 0 0 {name=p46 sig_type=std_logic lab=OPB0
}
C {devices/vsource.sym} 1150 -950 0 0 {name=V13 value=0}
C {devices/lab_wire.sym} 1150 -910 0 0 {name=p47 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1150 -1000 0 0 {name=p48 sig_type=std_logic lab=OPB1}
C {devices/lab_pin.sym} 90 -850 2 0 {name=p38 sig_type=std_logic lab=RST_DIV}
C {devices/isource.sym} 670 -790 0 0 {name=I0 value=20u}
C {devices/isource.sym} 740 -790 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 670 -840 0 0 {name=p54 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 740 -740 2 0 {name=p55 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 670 -740 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 740 -840 2 0 {name=p57 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 830 -740 0 0 {name=MODELS2 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_wire.sym} 300 -770 2 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 500 -740 2 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 1280 -950 0 0 {name=V14 value=3.3}
C {devices/lab_wire.sym} 1280 -910 0 0 {name=p71 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1280 -1000 0 0 {name=p72 sig_type=std_logic lab=S1}
C {devices/vsource.sym} 1380 -940 0 0 {name=V15 value=0}
C {devices/lab_wire.sym} 1380 -900 0 0 {name=p95 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1380 -990 0 0 {name=p96 sig_type=std_logic lab=S0}
C {devices/vsource.sym} 1470 -950 0 0 {name=V16 value=3.3}
C {devices/lab_wire.sym} 1470 -910 0 0 {name=p51 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1470 -1000 0 0 {name=p59 sig_type=std_logic lab=S2}
C {devices/lab_pin.sym} 450 -530 0 0 {name=p1 sig_type=std_logic lab=Vref
}
C {devices/lab_pin.sym} 450 -510 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 -470 0 0 {name=p3 sig_type=std_logic lab=RST_DIV}
C {devices/vsource.sym} 70 -650 0 0 {name=V1 value=3.3}
C {devices/lab_wire.sym} 70 -610 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 70 -700 0 0 {name=p9 sig_type=std_logic lab=PU_test}
C {devices/vsource.sym} 170 -650 0 0 {name=V2 value=3.3}
C {devices/lab_wire.sym} 170 -610 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 170 -700 0 0 {name=p12 sig_type=std_logic lab=PD_test}
C {devices/vsource.sym} 270 -650 0 0 {name=V17 value=3.3}
C {devices/lab_wire.sym} 270 -610 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 270 -700 0 0 {name=p14 sig_type=std_logic lab=vcntl_test}
C {devices/vsource.sym} 70 -480 0 0 {name=V18 value=3.3}
C {devices/lab_wire.sym} 70 -440 0 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 70 -530 0 0 {name=p19 sig_type=std_logic lab=Vdiv_test}
C {devices/vsource.sym} 160 -490 0 0 {name=V19 value=3.3}
C {devices/lab_wire.sym} 160 -450 0 0 {name=p20 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 160 -540 0 0 {name=p21 sig_type=std_logic lab=Vo_test}
C {pll_2_top.sym} 630 -430 0 0 {name=x1}
C {devices/lab_pin.sym} 450 -490 0 0 {name=p22 sig_type=std_logic lab=Vo_test}
C {devices/lab_pin.sym} 450 -450 0 0 {name=p24 sig_type=std_logic lab=PU_test}
C {devices/lab_pin.sym} 450 -430 0 0 {name=p32 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 450 -410 0 0 {name=p33 sig_type=std_logic lab=S1}
C {devices/lab_pin.sym} 450 -390 0 0 {name=p23 sig_type=std_logic lab=vcntl_test
}
C {devices/lab_pin.sym} 450 -370 0 0 {name=p34 sig_type=std_logic lab=Vdiv_test}
C {devices/lab_pin.sym} 450 -350 0 0 {name=p28 sig_type=std_logic lab=PD_test}
C {devices/lab_pin.sym} 450 -330 0 0 {name=p35 sig_type=std_logic lab=S2}
C {devices/lab_pin.sym} 810 -530 2 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 810 -510 2 0 {name=p37 sig_type=std_logic lab=Vco_op_bar}
C {devices/lab_pin.sym} 810 -490 2 0 {name=p39 sig_type=std_logic lab=Vco_op}
C {devices/lab_pin.sym} 810 -470 2 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 810 -450 2 0 {name=p49 sig_type=std_logic lab=LP_ext}
C {devices/lab_pin.sym} 810 -430 2 0 {name=p50 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 810 -410 2 0 {name=p52 sig_type=std_logic lab=IPD_}
C {devices/lab_pin.sym} 810 -390 2 0 {name=p53 sig_type=std_logic lab=IPD+}
C {devices/lab_pin.sym} 810 -370 2 0 {name=p58 sig_type=std_logic lab=LP_op_test}
