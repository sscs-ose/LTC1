v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 810 -410 1610 -10 {flags=graph
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
B 2 810 -810 1610 -410 {flags=graph
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
B 2 810 -810 1610 -410 {flags=graph
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
N 350 -200 350 -190 {
lab=VSS}
N 350 -280 350 -260 {
lab=VDD}
N 430 -280 430 -260 {
lab=VSS}
N 430 -200 430 -180 {
lab=GND}
N 500 -200 500 -190 {
lab=VSS}
N 500 -280 500 -260 {
lab=CLK}
N 690 -320 710 -320 {
lab=Vdiv100}
N 710 -320 720 -320 {
lab=Vdiv100}
N 720 -320 720 -270 {
lab=Vdiv100}
N 690 -360 700 -360 {
lab=VSS}
N 690 -340 700 -340 {
lab=VDD}
N 370 -360 390 -360 {
lab=RST}
N 170 -200 170 -190 {
lab=VSS}
N 170 -280 170 -260 {
lab=RST}
N 720 -210 720 -190 {
lab=VSS}
N 370 -340 390 -340 {
lab=CLK}
C {devices/vsource.sym} 350 -230 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 430 -230 0 0 {name=V2 value=0}
C {devices/vsource.sym} 500 -230 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 430 -280 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 350 -190 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 350 -280 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 500 -280 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 500 -190 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 430 -180 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 350 -480 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 360 -550 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 1u
plot v(CLK) v(Vdiv100)+3.5 v(RST)+7
write CLK_div_100_TB.raw
.endc
"}
C {devices/capa.sym} 720 -240 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 720 -190 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 700 -360 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 700 -340 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 720 -320 2 0 {name=p13 sig_type=std_logic lab=Vdiv100}
C {devices/lab_wire.sym} 370 -340 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 170 -190 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 170 -280 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 370 -360 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 170 -230 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_100.sym} 540 -340 0 0 {name=x1}
