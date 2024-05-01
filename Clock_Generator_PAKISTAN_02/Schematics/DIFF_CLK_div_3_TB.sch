v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 -800 800 -400 {flags=graph
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
B 2 0 -400 800 0 {flags=graph
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
N -160 -50 -160 -40 {
lab=VSS}
N -160 -130 -160 -110 {
lab=VDD}
N -570 -620 -570 -600 {
lab=VSS}
N -570 -540 -570 -520 {
lab=GND}
N -670 -210 -670 -200 {
lab=VSS}
N -670 -290 -670 -270 {
lab=CLK}
N -220 -370 -200 -370 {
lab=Vdiv3}
N -200 -370 -190 -370 {
lab=Vdiv3}
N -190 -370 -190 -280 {
lab=Vdiv3}
N -220 -350 -120 -350 {
lab=Vdiv3B}
N -120 -350 -120 -280 {
lab=Vdiv3B}
N -190 -220 -120 -220 {
lab=VSS}
N -220 -410 -210 -410 {
lab=VSS}
N -220 -390 -210 -390 {
lab=VDD}
N -540 -410 -520 -410 {
lab=RST}
N -540 -390 -520 -390 {
lab=CLKB}
N -650 -70 -650 -60 {
lab=VSS}
N -650 -150 -650 -130 {
lab=RST}
N -540 -370 -520 -370 {
lab=CLK}
N -440 -90 -440 -80 {
lab=VSS}
N -440 -170 -440 -150 {
lab=CLKB}
C {devices/vsource.sym} -160 -80 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -570 -570 0 0 {name=V2 value=0}
C {devices/vsource.sym} -670 -240 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -570 -620 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -160 -40 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -160 -130 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -670 -290 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -670 -200 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -570 -520 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -480 -730 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -10 -600 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv3)+3.5 v(Vdiv3B)+7 v(RST)+10.5
write DIFF_CLK_div_3_TB.raw
.endc
"}
C {devices/capa.sym} -190 -250 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -120 -250 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -150 -220 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -210 -410 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -210 -390 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -120 -350 2 0 {name=p13 sig_type=std_logic lab=Vdiv3B}
C {devices/lab_wire.sym} -540 -390 0 0 {name=p15 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} -650 -60 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -650 -150 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -540 -410 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -650 -100 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} -540 -370 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -190 -370 2 0 {name=p9 sig_type=std_logic lab=Vdiv3}
C {devices/vsource.sym} -440 -120 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -440 -170 0 0 {name=p10 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} -440 -80 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {DIFFER_CLK_div_3.sym} -370 -380 0 0 {name=x1}
