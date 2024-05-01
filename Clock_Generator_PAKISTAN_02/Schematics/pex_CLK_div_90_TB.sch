v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -270 210 -260 {
lab=VSS}
N 210 -350 210 -330 {
lab=VDD}
N 290 -350 290 -330 {
lab=VSS}
N 290 -270 290 -250 {
lab=GND}
N 360 -270 360 -260 {
lab=VSS}
N 360 -350 360 -330 {
lab=CLK}
N 550 -390 570 -390 {
lab=Vdiv90}
N 570 -390 580 -390 {
lab=Vdiv90}
N 580 -390 580 -340 {
lab=Vdiv90}
N 550 -430 560 -430 {
lab=VSS}
N 550 -410 560 -410 {
lab=VDD}
N 230 -430 250 -430 {
lab=RST}
N 30 -270 30 -260 {
lab=VSS}
N 30 -350 30 -330 {
lab=RST}
N 580 -280 580 -260 {
lab=VSS}
N 230 -410 250 -410 {
lab=CLK}
C {devices/vsource.sym} 210 -300 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 290 -300 0 0 {name=V2 value=0}
C {devices/vsource.sym} 360 -300 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 290 -350 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 -260 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 210 -350 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 360 -350 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 360 -260 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 290 -250 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 220 -560 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 660 -190 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_90_mag.spice"
.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv90)+3.5 v(RST)+7
write pex_CLK_div_90_TB.raw
.endc
"}
C {devices/capa.sym} 580 -310 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 580 -260 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 560 -430 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 560 -410 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 580 -390 2 0 {name=p13 sig_type=std_logic lab=Vdiv90}
C {devices/lab_wire.sym} 230 -410 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 30 -260 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 30 -350 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 230 -430 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 30 -300 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_90_mag.sym} 400 -410 0 0 {name=x1}
