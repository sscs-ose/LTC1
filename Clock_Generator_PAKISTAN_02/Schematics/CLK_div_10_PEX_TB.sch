v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 650 -320 1450 80 {flags=graph
y1=-0.022
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
N 0 -430 0 -420 {
lab=VSS}
N 0 -510 0 -490 {
lab=VDD}
N 80 -510 80 -490 {
lab=VSS}
N 80 -430 80 -410 {
lab=GND}
N 150 -430 150 -420 {
lab=VSS}
N 150 -510 150 -490 {
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
N -180 -430 -180 -420 {
lab=VSS}
N -180 -510 -180 -490 {
lab=RST}
C {devices/vsource.sym} 0 -460 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 80 -460 0 0 {name=V2 value=0}
C {devices/vsource.sym} 150 -460 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 80 -510 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 0 -420 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 0 -510 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 150 -510 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 150 -420 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 80 -410 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -230 -650 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 650 -340 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_10_mag.spice"
.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv10)+3.5 v(Q0)+7 v(Q1)+10.5 v(Q2)+14 v(Q3)+17.5 v(RST)+21 v(VDD)+24.5 v(VSS)+27
write CLK_div_10_PEX_TB.raw
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
C {devices/lab_wire.sym} -180 -420 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -180 -510 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -80 -80 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -180 -460 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_10_mag.sym} 90 -20 0 0 {name=x1}
