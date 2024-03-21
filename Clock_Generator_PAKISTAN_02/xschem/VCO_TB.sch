v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 440 -40 1240 360 {flags=graph
y1=-0.035
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.63109e-07
x2=1.81442e-07
divx=5
subdivx=1
node=outb
color=4
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3.0}
B 2 440 -440 1240 -40 {flags=graph
y1=-0.106508
y2=3.46018
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.63109e-07
x2=1.81442e-07
divx=5
subdivx=1
node=out
color=4
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3.0}
N -240 100 -240 120 {
lab=GND}
N -520 -20 -520 -10 {
lab=GND}
N 260 -10 290 -10 {
lab=OUT}
N 260 10 290 10 {
lab=OUTB}
N -80 130 -80 150 {
lab=GND}
N -440 110 -440 120 {
lab=GND}
N -440 0 -440 50 {
lab=EN}
N -80 30 -80 70 {
lab=VSS}
N -240 10 -240 40 {
lab=VCONT}
N -80 -30 -40 -30 {
lab=VDD}
N -80 -10 -40 -10 {
lab=EN}
N -80 10 -40 10 {
lab=VCONT}
N -80 30 -40 30 {
lab=VSS}
N -240 10 -80 10 {
lab=VCONT}
N -440 -10 -80 -10 {
lab=EN}
N -440 -10 -440 0 {
lab=EN}
N -320 -30 -80 -30 {
lab=VDD}
N -320 -80 -320 -30 {
lab=VDD}
N -520 -80 -320 -80 {
lab=VDD}
C {devices/vsource.sym} -240 70 0 0 {name=VCNTL value=1.075}
C {devices/gnd.sym} -240 120 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -520 -10 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -520 -50 0 0 {name=V2 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 330 -390 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "VCO_PEX.spice"
.control
set color0=white
set color1=black

save all
tran 10p 200n 
plot v(OUT) v(OUTB)+4
write VCO_TB.raw
.endc
"}
C {devices/code_shown.sym} -430 -280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/opin.sym} 290 -10 0 0 {name=p11 lab=OUT}
C {devices/opin.sym} 290 10 0 0 {name=p12 lab=OUTB}
C {devices/vsource.sym} -80 100 0 0 {name=VCNTL1 value=0


}
C {devices/gnd.sym} -80 150 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -440 120 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -440 80 0 0 {name=V1 value=3.3}
C {devices/lab_pin.sym} -320 -80 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -440 -10 0 0 {name=p2 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} -240 10 0 0 {name=p3 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} -80 30 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {VCO_PEX.sym} 110 0 0 0 {name=x1}
