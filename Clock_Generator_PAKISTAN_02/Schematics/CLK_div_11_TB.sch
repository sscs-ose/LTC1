v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 560 -460 1360 -60 {flags=graph
y1=-0.0052
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6e-08
x2=2.6e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdiv11}
B 2 560 -60 1360 340 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6e-08
x2=2.6e-07
divx=5
subdivx=1
node=q1
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 180 290 180 300 {
lab=VSS}
N 180 210 180 230 {
lab=VDD}
N 260 210 260 230 {
lab=VSS}
N 260 290 260 310 {
lab=GND}
N 330 290 330 300 {
lab=VSS}
N 330 210 330 230 {
lab=CLK}
N 160 -110 180 -110 {
lab=Q0}
N 180 -110 190 -110 {
lab=Q0}
N 190 -110 190 -20 {
lab=Q0}
N 160 -90 260 -90 {
lab=Q1}
N 260 -90 260 -20 {
lab=Q1}
N 160 -50 340 -50 {
lab=Q2}
N 340 -50 340 -20 {
lab=Q2}
N 160 -30 420 -30 {
lab=Q3}
N 420 -30 420 -20 {
lab=Q3}
N 160 -70 490 -70 {
lab=Vdiv11}
N 490 -70 490 -20 {
lab=Vdiv11}
N 190 40 260 40 {
lab=VSS}
N 260 40 340 40 {
lab=VSS}
N 340 40 420 40 {
lab=VSS}
N 420 40 490 40 {
lab=VSS}
N 160 -150 170 -150 {
lab=VSS}
N 160 -130 170 -130 {
lab=VDD}
N -160 -150 -140 -150 {
lab=RST}
N -160 -130 -140 -130 {
lab=CLK}
N 0 290 0 300 {
lab=VSS}
N 0 210 0 230 {
lab=RST}
C {devices/vsource.sym} 180 260 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 260 260 0 0 {name=V2 value=0}
C {devices/vsource.sym} 330 260 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 260 210 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 300 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 180 210 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 330 210 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 330 300 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 260 310 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 60 100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 550 -480 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 200n
plot v(CLK) v(Vdiv11)+3.5 v(Q0)+7 v(Q1)+10.5 v(Q2)+14 v(Q3)+17.5 v(RST)+21
write CLK_div_11_TB.raw

.endc
"}
C {devices/capa.sym} 190 10 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 260 10 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 340 10 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 420 10 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 490 10 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 300 40 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -150 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -130 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 190 -110 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 260 -90 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 340 -50 2 0 {name=p11 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 420 -30 2 0 {name=p12 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 490 -70 2 0 {name=p13 sig_type=std_logic lab=Vdiv11}
C {devices/lab_wire.sym} -160 -130 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 0 300 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 0 210 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -160 -150 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 0 260 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_11_new.sym} 10 -90 0 0 {name=x1}
