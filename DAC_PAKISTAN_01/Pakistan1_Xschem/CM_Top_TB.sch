v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1430 -865 2230 -465 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 395 -175 395 -170 {
lab=ITAIL_ext}
N 395 -170 440 -170 {
lab=ITAIL_ext}
N 395 -320 450 -320 {
lab=VDD}
N 395 -320 395 -235 {
lab=VDD}
N 450 -320 530 -320 {
lab=VDD}
N 530 -320 530 -230 {
lab=VDD}
N 975 -320 975 -290 {
lab=VDD}
N 530 -320 975 -320 {
lab=VDD}
N 1170 -310 1240 -310 {
lab=ITAIL_ext}
N 1540 -310 1630 -310 {
lab=VDD}
N 1540 -250 1625 -250 {
lab=#net1}
N 1685 -250 1685 -185 {
lab=#net1}
N 1625 -250 1685 -250 {
lab=#net1}
N 1630 -310 1865 -310 {
lab=VDD}
N 1685 -120 1685 -60 {
lab=VDD}
C {devices/vsource.sym} 450 -290 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 450 -260 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 1230 -575 0 1 {name=NGSPICE only_toplevel=true
value="
.include "Current_Mirror_Top_s.spice"
.options savecurrents

.control
save all
tran 10n 1u 


*write test_nfet_03v3.raw
.endc
"}
C {devices/gnd.sym} 1540 -190 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 395 -205 0 0 {name=I0 value=100u}
C {devices/lab_pin.sym} 660 -320 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 -170 0 0 {name=p2 sig_type=std_logic lab=ITAIL_ext}
C {Current_Mirror_Top_s.sym} 1390 -250 0 0 {name=x1}
C {devices/lab_pin.sym} 1180 -310 0 0 {name=p8 sig_type=std_logic lab=ITAIL_ext}
C {devices/lab_pin.sym} 1615 -310 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/res.sym} 1685 -150 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/code_shown.sym} 320 -495 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/lab_pin.sym} 1685 -85 0 0 {name=p4 sig_type=std_logic lab=VDD}
