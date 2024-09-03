v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 20 -540 820 -140 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.5e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0

color=4
node=q4}
B 2 20 -140 820 260 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.5e-07
divx=5
subdivx=1
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -420 180 -420 190 {
lab=VSS}
N -420 100 -420 120 {
lab=VDD}
N -340 100 -340 120 {
lab=VSS}
N -340 180 -340 200 {
lab=GND}
N -270 180 -270 190 {
lab=VSS}
N -270 100 -270 120 {
lab=CLK}
N -400 -350 -380 -350 {
lab=Q0}
N -380 -350 -370 -350 {
lab=Q0}
N -370 -350 -370 -300 {
lab=Q0}
N -400 -390 -390 -390 {
lab=VSS}
N -400 -370 -390 -370 {
lab=VDD}
N -370 -180 -370 -160 {
lab=VSS}
N -720 -390 -700 -390 {
lab=CLK}
N -310 -180 -310 -160 {
lab=VSS}
N -250 -310 -240 -310 {
lab=Q2}
N -240 -310 -240 -260 {
lab=Q2}
N -240 -180 -240 -160 {
lab=VSS}
N -180 -180 -180 -160 {
lab=VSS}
N -370 -300 -370 -260 {
lab=Q0}
N -400 -330 -310 -330 {
lab=Q1}
N -310 -330 -310 -260 {
lab=Q1}
N -400 -310 -250 -310 {
lab=Q2}
N -400 -290 -180 -290 {
lab=Q3}
N -110 -180 -110 -160 {
lab=VSS}
N -400 -270 -110 -270 {
lab=Q4}
N -180 -290 -180 -260 {
lab=Q3}
N -40 -180 -40 -160 {
lab=VSS}
N -40 -250 -40 -240 {
lab=Vdiv17}
N -400 -250 -40 -250 {
lab=Vdiv17}
N -110 -270 -110 -240 {
lab=Q4}
N -180 -260 -180 -240 {
lab=Q3}
N -240 -260 -240 -240 {
lab=Q2}
N -310 -260 -310 -240 {
lab=Q1}
N -370 -260 -370 -240 {
lab=Q0}
C {devices/vsource.sym} -420 150 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -340 150 0 0 {name=V2 value=0}
C {devices/vsource.sym} -270 150 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -340 100 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -420 190 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -420 100 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -270 100 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -270 190 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -340 200 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -500 -500 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -70 -80 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 250n
plot v(CLK) v(Q0)+3.5 v(Q1)+7 v(Q2)+10.5 v(Q3)+14 v(Q4)+17.5 v(Vdiv17)+21
write CLK_div_17_TB.raw
.endc
"}
C {devices/capa.sym} -370 -210 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -370 -160 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -390 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -370 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -370 -350 2 0 {name=p13 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} -720 -390 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/capa.sym} -310 -210 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -310 -160 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -240 -210 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -240 -160 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -240 -310 2 0 {name=p12 sig_type=std_logic lab=Q2}
C {devices/capa.sym} -180 -210 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -180 -160 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -180 -290 2 0 {name=p19 sig_type=std_logic lab=Q3}
C {devices/capa.sym} -110 -210 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -110 -160 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 -270 2 0 {name=p20 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} -310 -330 2 0 {name=p21 sig_type=std_logic lab=Q1}
C {devices/capa.sym} -40 -210 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -40 -160 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -40 -250 2 0 {name=p16 sig_type=std_logic lab=Vdiv17}
C {CLK_div_17.sym} -550 -320 0 0 {name=x1}
