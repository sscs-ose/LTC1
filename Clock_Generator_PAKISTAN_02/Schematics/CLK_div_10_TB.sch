v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 630 -330 1430 70 {flags=graph
y1=-0.017
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
node=vdiv10
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -360 120 -360 130 {
lab=VSS}
N -360 40 -360 60 {
lab=VDD}
N -280 40 -280 60 {
lab=VSS}
N -280 120 -280 140 {
lab=GND}
N -210 120 -210 130 {
lab=VSS}
N -210 40 -210 60 {
lab=CLK}
N 240 -40 260 -40 {
lab=Q0}
N 260 -40 270 -40 {
lab=Q0}
N 270 -40 270 50 {
lab=Q0}
N 240 -20 340 -20 {
lab=Q1}
N 340 -20 340 50 {
lab=Q1}
N 240 20 420 20 {
lab=Q2}
N 420 20 420 50 {
lab=Q2}
N 240 40 500 40 {
lab=Q3}
N 500 40 500 50 {
lab=Q3}
N 240 -0 570 0 {
lab=Vdiv10}
N 570 0 570 50 {
lab=Vdiv10}
N 270 110 340 110 {
lab=VSS}
N 340 110 420 110 {
lab=VSS}
N 420 110 500 110 {
lab=VSS}
N 500 110 570 110 {
lab=VSS}
N 240 -80 250 -80 {
lab=VSS}
N 240 -60 250 -60 {
lab=VDD}
N -80 -80 -60 -80 {
lab=RST}
N -80 -60 -60 -60 {
lab=CLK}
N -540 120 -540 130 {
lab=VSS}
N -540 40 -540 60 {
lab=RST}
C {CLK_div_10.sym} 90 -20 0 0 {name=x1}
C {devices/vsource.sym} -360 90 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -280 90 0 0 {name=V2 value=0}
C {devices/vsource.sym} -210 90 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -280 40 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -360 130 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -360 40 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -210 40 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -210 130 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -280 140 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -590 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 530 -330 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv10)+3.5 v(Q0)+7 v(Q1)+10.5 v(Q2)+14 v(Q3)+17.5 v(RST)+21
write CLK_div_10_TB.raw
.endc
"}
C {devices/capa.sym} 270 80 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 340 80 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 420 80 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 500 80 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 570 80 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 380 110 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 250 -80 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 250 -60 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 270 -40 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 340 -20 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 420 20 2 0 {name=p11 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 500 40 2 0 {name=p12 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 570 0 2 0 {name=p13 sig_type=std_logic lab=Vdiv10}
C {devices/lab_wire.sym} -80 -60 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -540 130 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -540 40 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -80 -80 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -540 90 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
