v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -50 -190 750 210 {flags=graph
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
node=vdiv90
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -50 -590 750 -190 {flags=graph
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
B 2 -50 -590 750 -190 {flags=graph
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
N -510 -150 -510 -140 {
lab=VSS}
N -510 -230 -510 -210 {
lab=VDD}
N -430 -230 -430 -210 {
lab=VSS}
N -430 -150 -430 -130 {
lab=GND}
N -360 -150 -360 -140 {
lab=VSS}
N -360 -230 -360 -210 {
lab=CLK}
N -170 -270 -150 -270 {
lab=Vdiv90}
N -150 -270 -140 -270 {
lab=Vdiv90}
N -140 -270 -140 -220 {
lab=Vdiv90}
N -170 -310 -160 -310 {
lab=VSS}
N -170 -290 -160 -290 {
lab=VDD}
N -490 -310 -470 -310 {
lab=RST}
N -690 -150 -690 -140 {
lab=VSS}
N -690 -230 -690 -210 {
lab=RST}
N -140 -160 -140 -140 {
lab=VSS}
N -490 -290 -470 -290 {
lab=CLK}
C {devices/vsource.sym} -510 -180 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -430 -180 0 0 {name=V2 value=0}
C {devices/vsource.sym} -360 -180 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -430 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -510 -140 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -510 -230 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -360 -230 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -360 -140 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -430 -130 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -500 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -60 -70 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 1u
plot v(CLK) v(Vdiv90)+3.5 v(RST)+7
write CLK_div_90_TB.raw
.endc
"}
C {devices/capa.sym} -140 -190 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -140 -140 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -160 -310 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -160 -290 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -140 -270 2 0 {name=p13 sig_type=std_logic lab=Vdiv90}
C {devices/lab_wire.sym} -490 -290 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -690 -140 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -690 -230 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -490 -310 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -690 -180 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_90.sym} -320 -290 0 0 {name=x1}
