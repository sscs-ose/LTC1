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
N 640 -1230 640 -1220 {
lab=VSS}
N 640 -1310 640 -1290 {
lab=F1}
N 500 -1250 500 -1240 {
lab=VSS}
N 500 -1330 500 -1310 {
lab=F0}
N 740 -1230 740 -1220 {
lab=VSS}
N 740 -1310 740 -1290 {
lab=S2}
N 860 -1220 860 -1210 {
lab=VSS}
N 860 -1300 860 -1280 {
lab=OPA0}
N 960 -1220 960 -1210 {
lab=VSS}
N 960 -1300 960 -1280 {
lab=OPA1}
N 1040 -1220 1040 -1210 {
lab=VSS}
N 1040 -1300 1040 -1280 {
lab=OPB0}
N 1140 -1220 1140 -1210 {
lab=VSS}
N 1140 -1300 1140 -1280 {
lab=OPB1}
N 710 -730 740 -730 {}
N 710 -710 740 -710 {}
N 710 -690 740 -690 {}
N 710 -670 740 -670 {}
N 1040 -730 1060 -730 {}
N 1040 -710 1060 -710 {}
N 1040 -690 1060 -690 {}
N 1040 -670 1060 -670 {}
N 1040 -650 1060 -650 {}
C {devices/vsource.sym} 500 -970 0 0 {name=VCNTL1 value="pulse(3.3 0 0 100p 100p 250n 500n)"}
C {devices/gnd.sym} 500 -920 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 290 -1030 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 290 -1070 0 0 {name=V4 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 1760 -1350 0 1 {name=NGSPICE2 only_toplevel=true
value="
.include "pex_PFD_layout.spice"
.include "pex_CP_mag.spice"
.include "pex_a2x1mux_mag.spice"
.include "pex_LF_mag.spice"
.include "pex_CLK_div_110_mag.spice"
.include "VCO_PEX.spice"
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
C {devices/vsource.sym} 640 -1260 0 0 {name=V9 value=3.3}
C {devices/lab_wire.sym} 640 -1220 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 640 -1310 0 0 {name=p42 sig_type=std_logic lab=F1}
C {devices/vsource.sym} 500 -1280 0 0 {name=V10 value=3.3}
C {devices/lab_wire.sym} 500 -1240 0 0 {name=p43 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 500 -1330 0 0 {name=p44 sig_type=std_logic lab=F0}
C {devices/vsource.sym} 740 -1260 0 0 {name=V11 value=3.3}
C {devices/lab_wire.sym} 740 -1220 0 0 {name=p45 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 740 -1310 0 0 {name=p46 sig_type=std_logic lab=S2}
C {devices/vsource.sym} 860 -1250 0 0 {name=V12 value=3.3}
C {devices/lab_wire.sym} 860 -1210 0 0 {name=p59 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 860 -1300 0 0 {name=p60 sig_type=std_logic lab=OPA0}
C {devices/vsource.sym} 960 -1250 0 0 {name=V13 value=3.3}
C {devices/lab_wire.sym} 960 -1210 0 0 {name=p61 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 960 -1300 0 0 {name=p62 sig_type=std_logic lab=OPA1}
C {devices/vsource.sym} 1040 -1250 0 0 {name=V14 value=3.3}
C {devices/lab_wire.sym} 1040 -1210 0 0 {name=p63 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1040 -1300 0 0 {name=p64 sig_type=std_logic lab=OPB0
}
C {devices/vsource.sym} 1140 -1250 0 0 {name=V15 value=0}
C {devices/lab_wire.sym} 1140 -1210 0 0 {name=p65 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1140 -1300 0 0 {name=p66 sig_type=std_logic lab=OPB1}
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
C {pll_1_sch.sym} 890 -690 0 0 {name=x1}
