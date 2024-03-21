v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -170 -70 630 330 {flags=graph
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
B 2 -170 330 630 730 {flags=graph
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
N -1000 520 -1000 530 {
lab=VSS}
N -1000 440 -1000 460 {
lab=VDD}
N -920 440 -920 460 {
lab=VSS}
N -920 520 -920 540 {
lab=GND}
N -850 520 -850 530 {
lab=VSS}
N -850 440 -850 460 {
lab=CLK}
N -400 360 -380 360 {
lab=Q0}
N -380 360 -370 360 {
lab=Q0}
N -370 360 -370 450 {
lab=Q0}
N -400 380 -300 380 {
lab=Q1}
N -300 380 -300 450 {
lab=Q1}
N -220 400 -220 450 {
lab=Vdiv3}
N -370 510 -300 510 {
lab=VSS}
N -300 510 -220 510 {
lab=VSS}
N -400 320 -390 320 {
lab=VSS}
N -400 340 -390 340 {
lab=VDD}
N -720 320 -700 320 {
lab=RST}
N -720 340 -700 340 {
lab=CLK}
N -1180 520 -1180 530 {
lab=VSS}
N -1180 440 -1180 460 {
lab=RST}
N -400 400 -220 400 {
lab=Vdiv3}
C {devices/vsource.sym} -1000 490 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -920 490 0 0 {name=V2 value=0}
C {devices/vsource.sym} -850 490 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -920 440 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1000 530 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -1000 440 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -850 440 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -850 530 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -920 540 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -1230 280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -190 130 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_3_mag.spice"
.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv3)+3.5 v(Q0)+7 v(Q1)+10.5 v(RST)+14
write CLK_div_3_TB.raw
.endc
"}
C {devices/capa.sym} -370 480 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -300 480 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -220 480 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -260 510 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 320 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 340 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -370 360 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} -300 380 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} -220 400 2 0 {name=p13 sig_type=std_logic lab=Vdiv3}
C {devices/lab_wire.sym} -720 340 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -1180 530 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -1180 440 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -720 320 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -1180 490 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_3_mag.sym} -550 360 0 0 {name=x1}
