v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 720 -520 1520 -120 {flags=graph
y1=-0.013
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


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdiv3}
B 2 720 -120 1520 280 {flags=graph
y1=-0.016
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
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -110 70 -110 80 {
lab=VSS}
N -110 -10 -110 10 {
lab=VDD}
N -30 -10 -30 10 {
lab=VSS}
N -30 70 -30 90 {
lab=GND}
N 40 70 40 80 {
lab=VSS}
N 40 -10 40 10 {
lab=CLK}
N 490 -90 510 -90 {
lab=Q0}
N 510 -90 520 -90 {
lab=Q0}
N 520 -90 520 0 {
lab=Q0}
N 490 -70 590 -70 {
lab=Q1}
N 590 -70 590 0 {
lab=Q1}
N 670 -50 670 0 {
lab=Vdiv3}
N 520 60 590 60 {
lab=VSS}
N 590 60 670 60 {
lab=VSS}
N 490 -130 500 -130 {
lab=VSS}
N 490 -110 500 -110 {
lab=VDD}
N 170 -130 190 -130 {
lab=RST}
N 170 -110 190 -110 {
lab=CLK}
N -290 70 -290 80 {
lab=VSS}
N -290 -10 -290 10 {
lab=RST}
N 490 -50 670 -50 {
lab=Vdiv3}
C {devices/vsource.sym} -110 40 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -30 40 0 0 {name=V2 value=0}
C {devices/vsource.sym} 40 40 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -30 -10 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 80 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -110 -10 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 40 -10 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 40 80 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -30 90 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -340 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 700 -320 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv3)+3.5 v(Q0)+7 v(Q1)+10.5 v(RST)+14
write CLK_div_3_TB.raw
.endc
"}
C {devices/capa.sym} 520 30 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 590 30 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 670 30 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 630 60 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 -130 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 -110 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 520 -90 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 590 -70 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 670 -50 2 0 {name=p13 sig_type=std_logic lab=Vdiv3}
C {devices/lab_wire.sym} 170 -110 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -290 80 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -290 -10 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 170 -130 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -290 40 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_3.sym} 340 -90 0 0 {name=x1}
