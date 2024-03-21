v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 260 -520 1060 -120 {flags=graph
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
node=q1}
B 2 260 -120 1060 280 {flags=graph
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
N -570 70 -570 80 {
lab=VSS}
N -570 -10 -570 10 {
lab=VDD}
N -490 -10 -490 10 {
lab=VSS}
N -490 70 -490 90 {
lab=GND}
N -420 70 -420 80 {
lab=VSS}
N -420 -10 -420 10 {
lab=CLK}
N 30 -80 50 -80 {
lab=Vdiv4}
N 50 -80 60 -80 {
lab=Vdiv4}
N 60 -80 60 10 {
lab=Vdiv4}
N 60 70 130 70 {
lab=VSS}
N 30 -120 40 -120 {
lab=VSS}
N 30 -100 40 -100 {
lab=VDD}
N -290 -120 -270 -120 {
lab=RST}
N -290 -100 -270 -100 {
lab=CLK}
N -750 70 -750 80 {
lab=VSS}
N -750 -10 -750 10 {
lab=RST}
C {devices/vsource.sym} -570 40 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -490 40 0 0 {name=V2 value=0}
C {devices/vsource.sym} -420 40 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -490 -10 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -570 80 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -570 -10 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -420 -10 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -420 80 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -490 90 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -800 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 240 -320 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv4)+3.5
write CLK_div_4_TB.raw
.endc
"}
C {devices/capa.sym} 60 40 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 100 70 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 40 -120 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 40 -100 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 60 -80 2 0 {name=p9 sig_type=std_logic lab=Vdiv4}
C {devices/lab_wire.sym} -290 -100 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -750 80 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -750 -10 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -290 -120 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -750 40 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_4.sym} -120 -100 0 0 {name=x1}
