v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 280 -130 290 {
lab=VSS}
N -130 200 -130 220 {
lab=VDD}
N -50 200 -50 220 {
lab=VSS}
N -50 280 -50 300 {
lab=GND}
N 20 280 20 290 {
lab=VSS}
N 20 200 20 220 {
lab=CLK}
N 470 120 490 120 {
lab=Q0}
N 490 120 500 120 {
lab=Q0}
N 500 120 500 210 {
lab=Q0}
N 470 140 570 140 {
lab=Q1}
N 570 140 570 210 {
lab=Q1}
N 470 180 650 180 {
lab=Q2}
N 650 180 650 210 {
lab=Q2}
N 720 160 720 210 {
lab=Vdiv7}
N 500 270 570 270 {
lab=VSS}
N 570 270 650 270 {
lab=VSS}
N 470 80 480 80 {
lab=VSS}
N 470 100 480 100 {
lab=VDD}
N 150 80 170 80 {
lab=RST}
N 150 100 170 100 {
lab=CLK}
N -310 280 -310 290 {
lab=VSS}
N -310 200 -310 220 {
lab=RST}
N 650 270 720 270 {
lab=VSS}
N 470 160 720 160 {
lab=Vdiv7}
C {devices/vsource.sym} -130 250 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -50 250 0 0 {name=V2 value=0}
C {devices/vsource.sym} 20 250 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -50 200 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -130 290 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -130 200 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 20 200 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 20 290 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -50 300 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -350 40 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 760 -130 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 200n
plot v(CLK) v(Vdiv7)+3.5 v(Q0)+7 v(Q1)+10.5 v(Q2)+14 v(RST)+17.5
.endc
"}
C {devices/capa.sym} 500 240 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 570 240 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 650 240 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 720 240 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 610 270 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 80 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 100 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 500 120 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 570 140 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 650 180 2 0 {name=p11 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 720 160 2 0 {name=p13 sig_type=std_logic lab=Vdiv7}
C {devices/lab_wire.sym} 150 100 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -310 290 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -310 200 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 150 80 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -310 250 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_7.sym} 320 130 0 0 {name=x1}
