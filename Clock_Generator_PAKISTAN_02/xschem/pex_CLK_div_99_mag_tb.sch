v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -310 260 -300 {
lab=VSS}
N 260 -390 260 -370 {
lab=VDD}
N 340 -390 340 -370 {
lab=VSS}
N 340 -310 340 -290 {
lab=GND}
N 410 -310 410 -300 {
lab=VSS}
N 410 -390 410 -370 {
lab=CLK}
N 350 -660 370 -660 {
lab=Vdiv99}
N 370 -660 380 -660 {
lab=Vdiv99}
N 350 -700 360 -700 {
lab=VSS}
N 350 -680 360 -680 {
lab=VDD}
N 380 -550 380 -530 {
lab=VSS}
N 30 -680 50 -680 {
lab=CLK}
N 380 -650 380 -610 {
lab=Vdiv99}
N 50 -320 50 -310 {
lab=VSS}
N 50 -400 50 -380 {
lab=RST}
N 20 -700 50 -700 {
lab=RST}
N 380 -660 380 -650 {
lab=Vdiv99}
C {devices/vsource.sym} 260 -340 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 340 -340 0 0 {name=V2 value=0}
C {devices/vsource.sym} 410 -340 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 340 -390 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -300 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 260 -390 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 410 -390 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 410 -300 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 340 -290 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 940 -460 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 790 -570 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_99_mag.spice"
.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv99)+3.5 
*write CLK_div_99_TB.raw
.endc
"}
C {devices/capa.sym} 380 -580 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 380 -530 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 -700 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 -680 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 380 -660 2 0 {name=p13 sig_type=std_logic lab=Vdiv99}
C {devices/lab_wire.sym} 30 -680 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 50 -310 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 50 -400 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 50 -350 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} 20 -700 0 0 {name=p14 sig_type=std_logic lab=RST}
C {pex_CLK_div_99_mag.sym} 200 -680 0 0 {name=x1}
