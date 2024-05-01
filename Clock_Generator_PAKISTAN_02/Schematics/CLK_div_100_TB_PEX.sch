v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 350 -60 1150 340 {flags=graph
y1=-0.021
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
node=vdiv100
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 350 -460 1150 -60 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
node=clk
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 350 -460 1150 -60 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
node=clk
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N -110 150 -110 160 {
lab=VSS}
N -110 70 -110 90 {
lab=VDD}
N -30 70 -30 90 {
lab=VSS}
N -30 150 -30 170 {
lab=GND}
N 40 150 40 160 {
lab=VSS}
N 40 70 40 90 {
lab=CLK}
N 230 30 250 30 {
lab=Vdiv100}
N 250 30 260 30 {
lab=Vdiv100}
N 260 30 260 80 {
lab=Vdiv100}
N 230 -10 240 -10 {
lab=VSS}
N 230 10 240 10 {
lab=VDD}
N -90 -10 -70 -10 {
lab=RST}
N -290 150 -290 160 {
lab=VSS}
N -290 70 -290 90 {
lab=RST}
N 260 140 260 160 {
lab=VSS}
N -90 10 -70 10 {
lab=CLK}
C {devices/vsource.sym} -110 120 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -30 120 0 0 {name=V2 value=0}
C {devices/vsource.sym} 40 120 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -30 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 160 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -110 70 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 40 70 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 40 160 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -30 170 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -110 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -100 -200 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_100_mag.spice"
.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv100)+3.5 v(RST)+7
write CLK_div_100_TB_PEX.raw
.endc
"}
C {devices/capa.sym} 260 110 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 260 160 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -10 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 10 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 260 30 2 0 {name=p13 sig_type=std_logic lab=Vdiv100}
C {devices/lab_wire.sym} -90 10 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -290 160 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -290 70 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -90 -10 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -290 120 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_100_mag.sym} 80 10 0 0 {name=x1}
