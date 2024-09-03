v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 130 -130 140 {
lab=VSS}
N -130 50 -130 70 {
lab=VDD}
N -50 50 -50 70 {
lab=VSS}
N -50 130 -50 150 {
lab=GND}
N 20 130 20 140 {
lab=VSS}
N 20 50 20 70 {
lab=CLK}
N 470 -30 490 -30 {
lab=Q0}
N 490 -30 500 -30 {
lab=Q0}
N 500 -30 500 60 {
lab=Q0}
N 470 -10 570 -10 {
lab=Q1}
N 570 -10 570 60 {
lab=Q1}
N 730 50 730 60 {
lab=Q3}
N 500 120 570 120 {
lab=VSS}
N 570 120 650 120 {
lab=VSS}
N 650 120 730 120 {
lab=VSS}
N 470 -70 480 -70 {
lab=VSS}
N 470 -50 480 -50 {
lab=VDD}
N 150 -70 170 -70 {
lab=RST}
N 150 -50 170 -50 {
lab=CLK}
N -310 130 -310 140 {
lab=VSS}
N -310 50 -310 70 {
lab=RST}
N 470 10 650 10 {
lab=Q2}
N 730 30 730 50 {
lab=Q3}
N 470 30 730 30 {
lab=Q3}
N 650 10 650 60 {
lab=Q2}
C {devices/vsource.sym} -130 100 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -50 100 0 0 {name=V2 value=0}
C {devices/vsource.sym} 20 100 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -50 50 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -130 140 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -130 50 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 20 50 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 20 140 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -50 150 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -360 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 760 -320 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(RST)+3.5 v(Q0)+7 v(Q1)+10.5 v(Q2)+14 v(Q3)+17.5
.endc
"}
C {devices/capa.sym} 500 90 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 570 90 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 650 90 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 730 90 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 610 120 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -70 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -50 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 500 -30 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 570 -10 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 650 10 2 0 {name=p11 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 730 50 2 0 {name=p12 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 150 -50 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -310 140 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -310 50 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 150 -70 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -310 100 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {Counter_10.sym} 320 -20 0 0 {name=x1}
