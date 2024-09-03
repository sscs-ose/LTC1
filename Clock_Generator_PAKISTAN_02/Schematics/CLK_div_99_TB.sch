v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 50 -490 850 -90 {flags=graph
y1=-0.016
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


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdiv99}
B 2 50 -90 850 310 {flags=graph
y1=-0.016
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
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -390 200 -390 210 {
lab=VSS}
N -390 120 -390 140 {
lab=VDD}
N -310 120 -310 140 {
lab=VSS}
N -310 200 -310 220 {
lab=GND}
N -240 200 -240 210 {
lab=VSS}
N -240 120 -240 140 {
lab=CLK}
N -370 -300 -350 -300 {
lab=Vdiv99}
N -350 -300 -340 -300 {
lab=Vdiv99}
N -370 -340 -360 -340 {
lab=VSS}
N -370 -320 -360 -320 {
lab=VDD}
N -340 -190 -340 -170 {
lab=VSS}
N -690 -320 -670 -320 {
lab=CLK}
N -340 -290 -340 -250 {
lab=Vdiv99}
N -600 190 -600 200 {
lab=VSS}
N -600 110 -600 130 {
lab=RST}
N -700 -340 -670 -340 {
lab=RST}
N -340 -300 -340 -290 {
lab=Vdiv99}
C {devices/vsource.sym} -390 170 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -310 170 0 0 {name=V2 value=0}
C {devices/vsource.sym} -240 170 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -310 120 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 210 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -390 120 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -240 120 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -240 210 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -310 220 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -470 -450 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -40 -60 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv99)+3.5 
write CLK_div_99_TB.raw
.endc
"}
C {devices/capa.sym} -340 -220 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -340 -170 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -360 -340 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -360 -320 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -340 -300 2 0 {name=p13 sig_type=std_logic lab=Vdiv99}
C {devices/lab_wire.sym} -690 -320 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -600 200 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -600 110 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -600 160 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} -700 -340 0 0 {name=p14 sig_type=std_logic lab=RST}
C {CLK_div_99.sym} -520 -320 0 0 {name=x1}
