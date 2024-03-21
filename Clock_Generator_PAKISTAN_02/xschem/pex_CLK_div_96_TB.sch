v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -260 240 -250 {
lab=VSS}
N 240 -340 240 -320 {
lab=VDD}
N 320 -340 320 -320 {
lab=VSS}
N 320 -260 320 -240 {
lab=GND}
N 390 -260 390 -250 {
lab=VSS}
N 390 -340 390 -320 {
lab=CLK}
N 580 -380 600 -380 {
lab=Vdiv96}
N 600 -380 610 -380 {
lab=Vdiv96}
N 610 -380 610 -330 {
lab=Vdiv96}
N 580 -420 590 -420 {
lab=VSS}
N 580 -400 590 -400 {
lab=VDD}
N 260 -420 280 -420 {
lab=RST}
N 60 -260 60 -250 {
lab=VSS}
N 60 -340 60 -320 {
lab=RST}
N 610 -270 610 -250 {
lab=VSS}
N 260 -400 280 -400 {
lab=CLK}
C {devices/vsource.sym} 240 -290 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 320 -290 0 0 {name=V2 value=0}
C {devices/vsource.sym} 390 -290 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 320 -340 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -250 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 240 -340 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 390 -340 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 390 -250 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 320 -240 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 250 -550 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 690 -180 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_96_mag.spice"
.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv96)+3.5 v(RST)+7
*write pex_CLK_div_96_TB.raw
.endc
"}
C {devices/capa.sym} 610 -300 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 610 -250 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 590 -420 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 590 -400 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 610 -380 2 0 {name=p13 sig_type=std_logic lab=Vdiv96}
C {devices/lab_wire.sym} 260 -400 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 60 -250 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 60 -340 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 260 -420 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 60 -290 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_96_mag.sym} 430 -400 0 0 {name=x1}
