v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -110 250 -100 {
lab=VSS}
N 250 -190 250 -170 {
lab=VDD}
N 330 -190 330 -170 {
lab=VSS}
N 330 -110 330 -90 {
lab=GND}
N 400 -110 400 -100 {
lab=VSS}
N 400 -190 400 -170 {
lab=CLK}
N 850 -270 870 -270 {
lab=Vdiv2}
N 870 -270 880 -270 {
lab=Vdiv2}
N 880 -270 880 -180 {
lab=Vdiv2}
N 850 -310 860 -310 {
lab=VSS}
N 850 -290 860 -290 {
lab=VDD}
N 530 -310 550 -310 {
lab=RST}
N 530 -290 550 -290 {
lab=CLK}
N 70 -110 70 -100 {
lab=VSS}
N 70 -190 70 -170 {
lab=RST}
N 880 -120 880 -100 {
lab=VSS}
C {devices/vsource.sym} 250 -140 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 330 -140 0 0 {name=V2 value=0}
C {devices/vsource.sym} 400 -140 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 330 -190 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 250 -100 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 250 -190 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 400 -190 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 400 -100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 330 -90 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 20 -350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1060 -500 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_2_mag.spice"
.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv2)+3.5
*write CLK_div_2_TB.raw
.endc
"}
C {devices/capa.sym} 880 -150 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 860 -310 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 860 -290 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 880 -270 2 0 {name=p9 sig_type=std_logic lab=Vdiv2}
C {devices/lab_wire.sym} 530 -290 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 70 -100 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 70 -190 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 530 -310 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 70 -140 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} 880 -100 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {pex_CLK_div_2_mag.sym} 700 -290 0 0 {name=x1}
