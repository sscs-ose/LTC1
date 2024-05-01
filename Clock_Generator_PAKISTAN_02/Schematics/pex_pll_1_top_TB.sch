v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -340 280 -320 {
lab=GND}
N 70 -440 70 -430 {
lab=GND}
N 280 -450 300 -450 {
lab=Vref}
N 100 -650 100 -640 {
lab=VSS}
N 100 -730 100 -710 {
lab=VDD}
N 180 -730 180 -710 {
lab=VSS}
N 180 -650 180 -630 {
lab=GND}
N 60 -210 60 -200 {
lab=VSS}
N 60 -290 60 -270 {
lab=RST_DIV}
N 280 -450 280 -400 {
lab=Vref}
N 70 -510 70 -500 {
lab=VDD_VCO}
N 70 -510 90 -510 {
lab=VDD_VCO}
N 520 -630 520 -620 {
lab=VSS}
N 520 -710 520 -690 {
lab=S2}
N 490 -130 520 -130 {
lab=EN}
N 490 -110 520 -110 {
lab=Vref}
N 490 -90 520 -90 {
lab=S2}
N 820 -130 840 -130 {
lab=VDD}
N 820 -110 840 -110 {
lab=VCO_op_bar}
N 820 -90 840 -90 {
lab=VSS}
N 820 -70 840 -70 {
lab=Vco_op}
N 820 -50 840 -50 {
lab=VDD_VCO}
N 310 -650 310 -630 {
lab=VSS}
N 380 -650 380 -630 {
lab=IPD+}
N 310 -730 310 -710 {
lab=IPD_}
N 380 -730 380 -710 {
lab=VDD}
N 490 -70 520 -70 {
lab=RST_DIV}
N 820 -10 840 -10 {
lab=IPD_}
N 820 10 840 10 {
lab=IPD+}
N 820 -30 840 -30 {
lab=LP_ext}
N -20 -640 -20 -630 {
lab=VSS}
N -20 -720 -20 -700 {
lab=EN}
C {devices/vsource.sym} 280 -370 0 0 {name=VCNTL1 value="pulse(3.3 0 0 100p 100p 250n 500n)"}
C {devices/gnd.sym} 280 -320 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 70 -430 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 70 -470 0 0 {name=V4 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 1110 -680 0 1 {name=NGSPICE2 only_toplevel=true
value="
.include "pex_pll_1_mag.spice"
.control
save all
tran 10n 50u 
plot v(VCO_op) v(VCO_op_bar)+4
**write pll_4.raw
.endc
"}
C {devices/vsource.sym} 100 -680 0 0 {name=V6 value=3.3}
C {devices/vsource.sym} 180 -680 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} 180 -730 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 100 -640 0 0 {name=p29 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 100 -730 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 180 -630 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 90 -510 2 0 {name=p32 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 290 -450 2 0 {name=p33 sig_type=std_logic lab=Vref
}
C {devices/lab_wire.sym} 60 -200 0 0 {name=p34 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 60 -240 0 0 {name=V8 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/vsource.sym} 520 -660 0 0 {name=V11 value=3.3}
C {devices/lab_wire.sym} 520 -620 0 0 {name=p45 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 520 -710 0 0 {name=p46 sig_type=std_logic lab=S2}
C {devices/lab_pin.sym} 60 -280 2 0 {name=p67 sig_type=std_logic lab=RST_DIV}
C {devices/code_shown.sym} 600 -440 0 0 {name=MODELS2 only_toplevel=true
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
C {devices/lab_wire.sym} 840 -90 0 1 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 840 -130 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 840 -110 0 1 {name=p3 sig_type=std_logic lab=VCO_op_bar}
C {devices/lab_wire.sym} 840 -70 0 1 {name=p4 sig_type=std_logic lab=Vco_op
}
C {devices/lab_wire.sym} 840 -50 0 1 {name=p5 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_wire.sym} 490 -90 0 0 {name=p6 sig_type=std_logic lab=S2}
C {devices/lab_pin.sym} 490 -110 2 1 {name=p7 sig_type=std_logic lab=Vref
}
C {devices/lab_pin.sym} 490 -70 2 1 {name=p8 sig_type=std_logic lab=RST_DIV}
C {devices/isource.sym} 310 -680 0 0 {name=I2 value=20u}
C {devices/isource.sym} 380 -680 0 0 {name=I3 value=20u}
C {devices/lab_wire.sym} 310 -730 0 0 {name=p72 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 380 -630 2 0 {name=p73 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 310 -630 2 0 {name=p74 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -730 2 0 {name=p75 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 840 -30 0 1 {name=p10 sig_type=std_logic lab=LP_ext}
C {devices/lab_wire.sym} 840 10 0 1 {name=p12 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 840 -10 0 1 {name=p13 sig_type=std_logic lab=IPD_}
C {devices/lab_pin.sym} 490 -130 2 1 {name=p9 sig_type=std_logic lab=EN
}
C {devices/vsource.sym} -20 -670 0 0 {name=V1 value=3.3}
C {devices/lab_wire.sym} -20 -630 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -20 -720 0 0 {name=p14 sig_type=std_logic lab=EN}
C {pex_pll_1_mag.sym} 670 -60 0 0 {name=x1}
