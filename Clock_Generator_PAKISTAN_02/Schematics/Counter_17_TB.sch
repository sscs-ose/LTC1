v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -30 -580 770 -180 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0

color=4
node=q4}
B 2 -30 -180 770 220 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -490 70 -490 80 {
lab=VSS}
N -490 -10 -490 10 {
lab=VDD}
N -410 -10 -410 10 {
lab=VSS}
N -410 70 -410 90 {
lab=GND}
N -340 70 -340 80 {
lab=VSS}
N -340 -10 -340 10 {
lab=CLK}
N -410 -490 -390 -490 {
lab=Q0}
N -390 -490 -380 -490 {
lab=Q0}
N -380 -490 -380 -440 {
lab=Q0}
N -410 -530 -400 -530 {
lab=VSS}
N -410 -510 -400 -510 {
lab=VDD}
N -380 -330 -380 -310 {
lab=VSS}
N -730 -530 -710 -530 {
lab=CLK}
N -310 -330 -310 -310 {
lab=VSS}
N -250 -330 -250 -310 {
lab=VSS}
N -180 -330 -180 -310 {
lab=VSS}
N -110 -330 -110 -310 {
lab=VSS}
N -380 -440 -380 -390 {
lab=Q0}
N -410 -470 -320 -470 {
lab=Q1}
N -320 -470 -310 -470 {
lab=Q1}
N -310 -470 -310 -390 {
lab=Q1}
N -410 -450 -250 -450 {
lab=Q2}
N -250 -450 -250 -390 {
lab=Q2}
N -410 -430 -180 -430 {
lab=Q3}
N -180 -430 -180 -390 {
lab=Q3}
N -410 -410 -110 -410 {
lab=Q4}
N -110 -410 -110 -390 {
lab=Q4}
C {devices/vsource.sym} -490 40 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -410 40 0 0 {name=V2 value=0}
C {devices/vsource.sym} -340 40 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -410 -10 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -490 80 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -490 -10 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -340 -10 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -340 80 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -410 90 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -720 -630 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -100 -190 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 200n
plot v(CLK) v(Q0)+3.5 v(Q1)+7 v(Q2)+10.5 v(Q3)+14 v(Q4)+17.5
write Counter_17_TB.raw
.endc
"}
C {devices/capa.sym} -380 -360 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -380 -310 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -400 -530 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -400 -510 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -380 -490 2 0 {name=p13 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} -730 -530 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {Counter_17.sym} -560 -470 0 0 {name=x1}
C {devices/capa.sym} -310 -360 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -310 -310 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -250 -360 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -250 -310 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -180 -360 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -180 -310 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -110 -360 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -110 -310 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -310 -470 2 0 {name=p14 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} -250 -450 2 0 {name=p16 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} -180 -430 2 0 {name=p17 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} -110 -410 2 0 {name=p18 sig_type=std_logic lab=Q4}
