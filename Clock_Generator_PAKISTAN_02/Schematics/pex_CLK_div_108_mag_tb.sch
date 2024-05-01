v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -600 450 -590 {
lab=VSS}
N 450 -680 450 -660 {
lab=VDD}
N 530 -680 530 -660 {
lab=VSS}
N 530 -600 530 -580 {
lab=GND}
N 600 -600 600 -590 {
lab=VSS}
N 600 -680 600 -660 {
lab=CLK}
N 790 -720 810 -720 {
lab=Vdiv108}
N 810 -720 820 -720 {
lab=Vdiv108}
N 820 -720 820 -670 {
lab=Vdiv108}
N 790 -760 800 -760 {
lab=VSS}
N 790 -740 800 -740 {
lab=VDD}
N 470 -760 490 -760 {
lab=RST}
N 270 -600 270 -590 {
lab=VSS}
N 270 -680 270 -660 {
lab=RST}
N 820 -610 820 -590 {
lab=VSS}
N 470 -740 490 -740 {
lab=CLK}
C {devices/vsource.sym} 450 -630 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 530 -630 0 0 {name=V2 value=0}
C {devices/vsource.sym} 600 -630 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 530 -680 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 450 -590 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 450 -680 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 600 -680 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 600 -590 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 530 -580 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 1050 -680 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 900 -520 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_108_new_mag.spice"
.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv108)+3.5 v(RST)+7
**write pex_CLK_div_108_TB.raw
.endc
"}
C {devices/capa.sym} 820 -640 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 820 -590 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 800 -760 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 800 -740 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 820 -720 2 0 {name=p13 sig_type=std_logic lab=Vdiv108}
C {devices/lab_wire.sym} 470 -740 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 270 -590 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 270 -680 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 470 -760 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 270 -630 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_108_new_mag.sym} 640 -740 0 0 {name=x1}
