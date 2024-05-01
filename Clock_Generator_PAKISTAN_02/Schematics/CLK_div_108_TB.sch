v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -430 -150 370 250 {flags=graph
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
node=vdiv108
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -430 -550 370 -150 {flags=graph
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
B 2 -430 -550 370 -150 {flags=graph
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
N -890 -110 -890 -100 {
lab=VSS}
N -890 -190 -890 -170 {
lab=VDD}
N -810 -190 -810 -170 {
lab=VSS}
N -810 -110 -810 -90 {
lab=GND}
N -740 -110 -740 -100 {
lab=VSS}
N -740 -190 -740 -170 {
lab=CLK}
N -550 -230 -530 -230 {
lab=Vdiv108}
N -530 -230 -520 -230 {
lab=Vdiv108}
N -520 -230 -520 -180 {
lab=Vdiv108}
N -550 -270 -540 -270 {
lab=VSS}
N -550 -250 -540 -250 {
lab=VDD}
N -870 -270 -850 -270 {
lab=RST}
N -1070 -110 -1070 -100 {
lab=VSS}
N -1070 -190 -1070 -170 {
lab=RST}
N -520 -120 -520 -100 {
lab=VSS}
N -870 -250 -850 -250 {
lab=CLK}
C {devices/vsource.sym} -890 -140 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -810 -140 0 0 {name=V2 value=0}
C {devices/vsource.sym} -740 -140 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -810 -190 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -890 -100 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -890 -190 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -740 -190 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -740 -100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -810 -90 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -880 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -440 -30 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv108)+3.5 v(RST)+7
write CLK_div_108_TB.raw
.endc
"}
C {devices/capa.sym} -520 -150 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -520 -100 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -540 -270 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -540 -250 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -520 -230 2 0 {name=p13 sig_type=std_logic lab=Vdiv108}
C {devices/lab_wire.sym} -870 -250 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -1070 -100 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -1070 -190 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -870 -270 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -1070 -140 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_108.sym} -700 -250 0 0 {name=x1}
