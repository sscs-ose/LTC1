v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 890 670 890 690 {
lab=VDD}
N 890 820 890 840 {
lab=VSS}
N 800 730 820 730 {
lab=Vref}
N 800 780 820 780 {
lab=Vdiv}
N 960 780 980 780 {
lab=PD}
N 720 730 780 730 {
lab=Vref}
N 780 730 800 730 {
lab=Vref}
N 980 730 1070 730 {
lab=PU}
N 980 780 1070 780 {
lab=PD}
N 1260 730 1410 730 {
lab=PU}
N 1260 780 1410 780 {
lab=PD}
N 1520 670 1520 690 {
lab=VDD}
N 1520 850 1520 870 {
lab=VSS}
N 800 780 800 910 {
lab=Vdiv}
N 800 1010 800 1040 {
lab=Vdiv}
N 810 1040 1100 1040 {
lab=Vdiv}
N 2190 750 2250 750 {
lab=VCO_op}
N 2130 750 2190 750 {
lab=VCO_op}
N 2080 750 2130 750 {
lab=VCO_op}
N 1880 750 1920 750 {
lab=VDD_VCO}
N 2080 770 2110 770 {
lab=VCO_op_bar}
N 800 910 800 1010 {
lab=Vdiv}
N 800 1040 810 1040 {
lab=Vdiv}
N 960 730 980 730 {
lab=PU}
N 1070 730 1260 730 {
lab=PU}
N 1070 780 1260 780 {
lab=PD}
N 1000 500 1000 520 {
lab=GND}
N 790 400 790 410 {
lab=GND}
N 1000 390 1020 390 {
lab=Vref}
N 820 190 820 200 {
lab=VSS}
N 820 110 820 130 {
lab=VDD}
N 900 110 900 130 {
lab=VSS}
N 900 190 900 210 {
lab=GND}
N 1880 730 1880 750 {
lab=VDD_VCO}
N 1100 1040 1270 1040 {
lab=Vdiv}
N 1230 1060 1270 1060 {
lab=VDD}
N 1230 1080 1270 1080 {
lab=VSS}
N 1570 1060 1600 1060 {
lab=VCO_op}
N 1570 1080 1600 1080 {
lab=RST}
N 2250 770 2250 1060 {
lab=VCO_op}
N 1600 1060 2250 1060 {
lab=VCO_op}
N 780 630 780 640 {
lab=VSS}
N 780 550 780 570 {
lab=RST}
N 2250 750 2250 770 {
lab=VCO_op}
N 1410 730 1410 750 {
lab=PU}
N 1760 770 1770 770 {
lab=vcntl}
N 790 340 850 340 {
lab=VDD_VCO}
N 1000 390 1000 440 {
lab=Vref}
N 1920 750 1930 750 {
lab=VDD_VCO}
N 1770 770 1930 770 {
lab=vcntl}
N 1410 750 1410 760 {
lab=PU}
N 1410 760 1430 760 {
lab=PU}
N 1410 780 1430 780 {
lab=PD}
N 1600 770 1760 770 {
lab=vcntl}
N 1670 900 1670 920 {
lab=VSS}
N 1490 670 1490 690 {
lab=IPD+}
N 1490 850 1490 870 {
lab=IPD_}
N 1000 190 1000 210 {
lab=VSS}
N 1070 190 1070 210 {
lab=IPD+}
N 1000 110 1000 130 {
lab=IPD_}
N 1070 110 1070 130 {
lab=VDD}
N 1690 770 1690 790 {
lab=vcntl}
N 1650 790 1660 790 {
lab=VDD}
N 1930 770 1940 770 {
lab=vcntl}
N 1930 750 1940 750 {
lab=VDD_VCO}
N 1940 740 1940 750 {
lab=VDD_VCO}
C {PFD.sym} 600 940 0 0 {name=x3}
C {devices/lab_pin.sym} 890 670 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 890 840 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1520 870 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1520 670 2 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 730 0 0 {name=p24 sig_type=std_logic lab=Vref
}
C {devices/lab_pin.sym} 970 1040 3 0 {name=p28 sig_type=std_logic lab=Vdiv
}
C {devices/lab_pin.sym} 2250 750 2 0 {name=p36 sig_type=std_logic lab=VCO_op
}
C {devices/vsource.sym} 1000 470 0 0 {name=VCNTL value="pulse(3.3 0 0 100p 100p 250n 500n)"}
C {devices/gnd.sym} 1000 520 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 790 410 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 790 370 0 0 {name=V2 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 2220 380 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option temp=27
.control
save all
tran 5n 100u 
plot v(VCO_op) v(VCO_op_bar)+4
plot v(vcntl)
plot v(Vdiv)
plot v(vref)
write pll_1_tt.raw
.endc
"}
C {devices/vsource.sym} 820 160 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 900 160 0 0 {name=V3 value=0}
C {devices/lab_wire.sym} 900 110 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 820 200 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 820 110 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 900 210 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1880 730 0 0 {name=p2 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 2110 770 2 0 {name=p5 sig_type=std_logic lab=VCO_op_bar
}
C {devices/lab_pin.sym} 1230 1060 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1230 1080 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1600 1080 3 0 {name=p8 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 850 340 1 0 {name=p11 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 1010 390 2 0 {name=p12 sig_type=std_logic lab=Vref
}
C {devices/lab_wire.sym} 780 640 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 780 550 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 780 600 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_pin.sym} 1760 770 1 0 {name=p14 sig_type=std_logic lab=vcntl
}
C {CLK_div_100.sym} 1420 1060 2 0 {name=x1}
C {devices/lab_pin.sym} 1230 730 1 0 {name=p18 sig_type=std_logic lab=PU}
C {devices/lab_pin.sym} 1230 780 1 0 {name=p19 sig_type=std_logic lab=PD}
C {CP.sym} 940 970 0 0 {name=x4}
C {LF.sym} 1530 950 0 0 {name=x5}
C {devices/lab_wire.sym} 1670 920 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 1000 160 0 0 {name=I0 value=20u}
C {devices/isource.sym} 1070 160 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 1000 110 0 0 {name=p21 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 1070 210 2 0 {name=p22 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 1000 210 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1070 110 2 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1490 680 0 0 {name=p26 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 1490 870 0 0 {name=p27 sig_type=std_logic lab=IPD_}
C {devices/lab_pin.sym} 1650 790 2 1 {name=p29 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1200 250 0 0 {name=MODELS1 only_toplevel=true
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
C {VCO_smb_old.sym} 2090 760 0 0 {name=x6}
