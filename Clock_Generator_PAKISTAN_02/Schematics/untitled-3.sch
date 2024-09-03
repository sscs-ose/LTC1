v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -490 260 -470 {
lab=VDD}
N 260 -340 260 -320 {
lab=VSS}
N 170 -430 190 -430 {
lab=Vref}
N 170 -380 190 -380 {
lab=Vdiv}
N 330 -380 350 -380 {
lab=PD}
N 90 -430 150 -430 {
lab=Vref}
N 150 -430 170 -430 {
lab=Vref}
N 350 -430 440 -430 {
lab=PU}
N 350 -380 440 -380 {
lab=PD}
N 630 -430 780 -430 {
lab=PU}
N 630 -380 780 -380 {
lab=PD}
N 170 -380 170 -250 {
lab=Vdiv}
N 170 -150 170 -120 {
lab=Vdiv}
N 180 -120 470 -120 {
lab=Vdiv}
N 170 -250 170 -150 {
lab=Vdiv}
N 170 -120 180 -120 {
lab=Vdiv}
N 330 -430 350 -430 {
lab=PU}
N 440 -430 630 -430 {
lab=PU}
N 440 -380 630 -380 {
lab=PD}
N 370 -660 370 -640 {
lab=GND}
N 160 -760 160 -750 {
lab=GND}
N 370 -770 390 -770 {
lab=Vref}
N 190 -970 190 -960 {
lab=VSS}
N 190 -1050 190 -1030 {
lab=VDD}
N 270 -1050 270 -1030 {
lab=VSS}
N 270 -970 270 -950 {
lab=GND}
N 470 -120 640 -120 {
lab=Vdiv}
N 970 -160 1620 -160 {
lab=VCO_op}
N 150 -530 150 -520 {
lab=VSS}
N 150 -610 150 -590 {
lab=RST_DIV}
N 1620 -410 1620 -390 {
lab=VCO_op}
N 1130 -390 1140 -390 {
lab=vcntl}
N 370 -770 370 -720 {
lab=Vref}
N 940 -160 960 -160 {
lab=VCO_op}
N 960 -160 970 -160 {
lab=VCO_op}
N 1620 -390 1620 -160 {
lab=VCO_op}
N 160 -830 160 -820 {
lab=VDD_VCO}
N 160 -830 180 -830 {
lab=VDD_VCO}
N 510 -950 510 -940 {
lab=VSS}
N 510 -1030 510 -1010 {
lab=F1}
N 370 -970 370 -960 {
lab=VSS}
N 370 -1050 370 -1030 {
lab=F0}
N 610 -950 610 -940 {
lab=VSS}
N 610 -1030 610 -1010 {
lab=F2}
N 730 -940 730 -930 {
lab=VSS}
N 730 -1020 730 -1000 {
lab=OPA0}
N 830 -940 830 -930 {
lab=VSS}
N 830 -1020 830 -1000 {
lab=OPA1}
N 910 -940 910 -930 {
lab=VSS}
N 910 -1020 910 -1000 {
lab=OPB0}
N 1010 -940 1010 -930 {
lab=VSS}
N 1010 -1020 1010 -1000 {
lab=OPB1}
N 890 -490 890 -470 {
lab=VDD_VCO}
N 890 -310 890 -290 {
lab=VSS}
N 780 -430 780 -410 {
lab=PU}
N 780 -410 780 -400 {
lab=PU}
N 780 -400 800 -400 {
lab=PU}
N 780 -380 800 -380 {
lab=PD}
N 1040 -260 1040 -240 {
lab=VSS}
N 860 -490 860 -470 {
lab=IPD+}
N 860 -310 860 -290 {
lab=IPD_}
N 970 -390 1130 -390 {
lab=vcntl}
N 530 -780 530 -760 {
lab=VSS}
N 600 -780 600 -760 {
lab=IPD+}
N 530 -860 530 -840 {
lab=IPD_}
N 600 -860 600 -840 {
lab=VDD}
N 70 -430 100 -430 {
lab=Vref}
N 1060 -390 1060 -370 {
lab=vcntl}
N 1010 -370 1030 -370 {
lab=VDD}
N 1260 -410 1300 -410 {
lab=vcntl}
N 1620 -430 1620 -410 {
lab=VCO_op}
N 1600 -430 1620 -430 {
lab=VCO_op}
N 1600 -410 1600 -380 {
lab=VCO_op_bar}
N 1260 -410 1260 -390 {
lab=vcntl}
N 1140 -390 1260 -390 {
lab=vcntl}
N 640 -140 640 -120 {
lab=Vdiv}
N 630 -160 640 -160 {
lab=VDD}
N 620 -160 630 -160 {
lab=VDD}
N 620 -180 640 -180 {
lab=VSS}
N 940 -180 970 -180 {
lab=RST_DIV}
N 1430 -440 1460 -440 {
lab=VDD_VCO}
N 1300 -410 1460 -410 {
lab=vcntl}
C {devices/lab_pin.sym} 260 -490 2 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 260 -320 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 -120 3 0 {name=p25 sig_type=std_logic lab=Vdiv
}
C {devices/lab_pin.sym} 1620 -410 2 0 {name=p26 sig_type=std_logic lab=VCO_op
}
C {devices/vsource.sym} 370 -690 0 0 {name=VCNTL1 value="pulse(3.3 0 0 100p 100p 250n 500n)"}
C {devices/gnd.sym} 370 -640 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 160 -750 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 160 -790 0 0 {name=V4 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 1630 -1070 0 1 {name=NGSPICE2 only_toplevel=true
value="
.include "pex_PFD_layout.spice"
.include "pex_CP_mag.spice"
.include "pex_LF_mag.spice"
.include "pex_VCO_mag.spice"
.include "pex_CLK_div_110_mag.spice"
.control
save all
tran 10n 50u 
plot v(VCO_op) v(VCO_op_bar)+4
plot v(vcntl)
plot v(Vdiv)
plot v(vref)
**write pll_4.raw
.endc
"}
C {devices/vsource.sym} 190 -1000 0 0 {name=V6 value=3.3}
C {devices/vsource.sym} 270 -1000 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} 270 -1050 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -960 0 0 {name=p29 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 190 -1050 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 270 -950 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1600 -380 2 0 {name=p31 sig_type=std_logic lab=VCO_op_bar
}
C {devices/lab_pin.sym} 180 -830 2 0 {name=p32 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 380 -770 2 0 {name=p33 sig_type=std_logic lab=Vref
}
C {devices/lab_wire.sym} 150 -520 0 0 {name=p34 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 150 -560 0 0 {name=V8 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_pin.sym} 1060 -390 1 0 {name=p35 sig_type=std_logic lab=vcntl
}
C {devices/lab_pin.sym} 600 -430 1 0 {name=p37 sig_type=std_logic lab=PU}
C {devices/lab_pin.sym} 600 -380 1 0 {name=p40 sig_type=std_logic lab=PD}
C {devices/vsource.sym} 510 -980 0 0 {name=V9 value=3.3}
C {devices/lab_wire.sym} 510 -940 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 510 -1030 0 0 {name=p42 sig_type=std_logic lab=F1}
C {devices/vsource.sym} 370 -1000 0 0 {name=V10 value=3.3}
C {devices/lab_wire.sym} 370 -960 0 0 {name=p43 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 370 -1050 0 0 {name=p44 sig_type=std_logic lab=F0}
C {devices/vsource.sym} 610 -980 0 0 {name=V11 value=3.3}
C {devices/lab_wire.sym} 610 -940 0 0 {name=p45 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 610 -1030 0 0 {name=p46 sig_type=std_logic lab=F2}
C {devices/vsource.sym} 730 -970 0 0 {name=V12 value=3.3}
C {devices/lab_wire.sym} 730 -930 0 0 {name=p59 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 730 -1020 0 0 {name=p60 sig_type=std_logic lab=OPA0}
C {devices/vsource.sym} 830 -970 0 0 {name=V13 value=3.3}
C {devices/lab_wire.sym} 830 -930 0 0 {name=p61 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 830 -1020 0 0 {name=p62 sig_type=std_logic lab=OPA1}
C {devices/vsource.sym} 910 -970 0 0 {name=V14 value=3.3}
C {devices/lab_wire.sym} 910 -930 0 0 {name=p63 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 910 -1020 0 0 {name=p64 sig_type=std_logic lab=OPB0
}
C {devices/vsource.sym} 1010 -970 0 0 {name=V15 value=0}
C {devices/lab_wire.sym} 1010 -930 0 0 {name=p65 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1010 -1020 0 0 {name=p66 sig_type=std_logic lab=OPB1}
C {devices/lab_pin.sym} 150 -600 2 0 {name=p67 sig_type=std_logic lab=RST_DIV}
C {devices/lab_wire.sym} 890 -290 2 0 {name=p68 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1040 -240 2 0 {name=p69 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 860 -480 0 0 {name=p70 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 860 -290 0 0 {name=p71 sig_type=std_logic lab=IPD_}
C {devices/isource.sym} 530 -810 0 0 {name=I2 value=20u}
C {devices/isource.sym} 600 -810 0 0 {name=I3 value=20u}
C {devices/lab_wire.sym} 530 -860 0 0 {name=p72 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 600 -760 2 0 {name=p73 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 530 -760 2 0 {name=p74 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 600 -860 2 0 {name=p75 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 80 -430 0 0 {name=p76 sig_type=std_logic lab=Vref
}
C {devices/code_shown.sym} 690 -760 0 0 {name=MODELS2 only_toplevel=true
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
C {devices/lab_pin.sym} 1020 -370 0 0 {name=p77 sig_type=std_logic lab=VDD}
C {PFD_pex.sym} -30 -220 0 0 {name=x8}
C {devices/lab_wire.sym} 620 -180 0 0 {name=p78 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 -160 0 0 {name=p79 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 960 -180 2 0 {name=p80 sig_type=std_logic lab=RST_DIV}
C {pex_CLK_div_110_mag.sym} 790 -160 0 1 {name=x9}
C {pex_CP_mag.sym} 310 -190 0 0 {name=x11}
C {devices/lab_pin.sym} 890 -490 2 0 {name=p81 sig_type=std_logic lab=VDD_VCO}
C {VCO_smb_old.sym} 1610 -420 0 0 {name=x12}
C {devices/lab_pin.sym} 1430 -440 0 0 {name=p89 sig_type=std_logic lab=VDD_VCO}
C {LF.sym} 900 -210 0 0 {name=x1}
