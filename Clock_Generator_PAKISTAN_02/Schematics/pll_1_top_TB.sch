v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -940 500 -920 {
lab=GND}
N 290 -1040 290 -1030 {
lab=GND}
N 500 -1050 520 -1050 {
lab=Vref}
N 320 -1250 320 -1240 {
lab=VSS}
N 320 -1330 320 -1310 {
lab=VDD}
N 400 -1330 400 -1310 {
lab=VSS}
N 400 -1250 400 -1230 {
lab=GND}
N 280 -810 280 -800 {
lab=VSS}
N 280 -890 280 -870 {
lab=RST_DIV}
N 500 -1050 500 -1000 {
lab=Vref}
N 290 -1110 290 -1100 {
lab=VDD_VCO}
N 290 -1110 310 -1110 {
lab=VDD_VCO}
N 740 -1230 740 -1220 {
lab=VSS}
N 740 -1310 740 -1290 {
lab=S2}
N 860 -1220 860 -1210 {
lab=VSS}
N 860 -1300 860 -1280 {
lab=OPA0}
N 710 -740 740 -740 {
lab=VDD}
N 710 -720 740 -720 {
lab=Vref}
N 710 -700 740 -700 {
lab=S2}
N 1040 -740 1060 -740 {
lab=VSS}
N 1040 -720 1060 -720 {
lab=VDD}
N 1040 -700 1060 -700 {
lab=VCO_op_bar}
N 1040 -680 1060 -680 {
lab=Vco_op}
N 1040 -640 1060 -640 {
lab=#net1}
N 520 -1230 520 -1210 {
lab=VSS}
N 590 -1230 590 -1210 {
lab=IPD+}
N 520 -1310 520 -1290 {
lab=IPD_}
N 590 -1310 590 -1290 {
lab=VDD}
N 710 -680 740 -680 {
lab=RST_DIV}
N 1040 -620 1060 -620 {
lab=IPD_}
N 1040 -600 1060 -600 {
lab=IPD+}
N 1040 -660 1060 -660 {
lab=VDD_VCO}
C {devices/vsource.sym} 500 -970 0 0 {name=VCNTL1 value="pulse(3.3 0 0 100p 100p 250n 500n)"}
C {devices/gnd.sym} 500 -920 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 290 -1030 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 290 -1070 0 0 {name=V4 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 1760 -1350 0 1 {name=NGSPICE2 only_toplevel=true
value="
.control
save all
tran 10n 50u 
plot v(VCO_op) v(VCO_op_bar)+4
**write pll_4.raw
.endc
"}
C {devices/vsource.sym} 320 -1280 0 0 {name=V6 value=3.3}
C {devices/vsource.sym} 400 -1280 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} 400 -1330 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 320 -1240 0 0 {name=p29 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 320 -1330 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 400 -1230 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 310 -1110 2 0 {name=p32 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 510 -1050 2 0 {name=p33 sig_type=std_logic lab=Vref
}
C {devices/lab_wire.sym} 280 -800 0 0 {name=p34 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 280 -840 0 0 {name=V8 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/vsource.sym} 740 -1260 0 0 {name=V11 value=3.3}
C {devices/lab_wire.sym} 740 -1220 0 0 {name=p45 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 740 -1310 0 0 {name=p46 sig_type=std_logic lab=S2}
C {devices/vsource.sym} 860 -1250 0 0 {name=V12 value=3.3}
C {devices/lab_wire.sym} 860 -1210 0 0 {name=p59 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 860 -1300 0 0 {name=p60 sig_type=std_logic lab=OPA0}
C {devices/lab_pin.sym} 280 -880 2 0 {name=p67 sig_type=std_logic lab=RST_DIV}
C {devices/code_shown.sym} 820 -1040 0 0 {name=MODELS2 only_toplevel=true
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
C {devices/lab_wire.sym} 1060 -740 0 1 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1060 -720 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1060 -700 0 1 {name=p3 sig_type=std_logic lab=VCO_op_bar}
C {devices/lab_wire.sym} 1060 -680 0 1 {name=p4 sig_type=std_logic lab=Vco_op
}
C {devices/lab_wire.sym} 1060 -660 0 1 {name=p5 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_wire.sym} 710 -700 0 0 {name=p6 sig_type=std_logic lab=S2}
C {devices/lab_pin.sym} 710 -720 2 1 {name=p7 sig_type=std_logic lab=Vref
}
C {devices/lab_pin.sym} 720 -680 2 1 {name=p8 sig_type=std_logic lab=RST_DIV}
C {devices/isource.sym} 520 -1260 0 0 {name=I2 value=20u}
C {devices/isource.sym} 590 -1260 0 0 {name=I3 value=20u}
C {devices/lab_wire.sym} 520 -1310 0 0 {name=p72 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 590 -1210 2 0 {name=p73 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 520 -1210 2 0 {name=p74 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 590 -1310 2 0 {name=p75 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 720 -740 2 1 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 1060 -620 0 1 {name=p10 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 1060 -600 0 1 {name=p11 sig_type=std_logic lab=IPD+}
C {pll_1_top.sym} 890 -670 0 0 {name=x1}
