v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1000 -600 1800 -200 {flags=graph
y1=-0.089
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.00059e-07
x2=2.00129e-07
divx=5
subdivx=1
node=out
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1000 -200 1800 200 {flags=graph
y1=2.7836
y2=6.3656
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.00059e-07
x2=2.00129e-07
divx=5
subdivx=1
node=out1
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 350 -130 350 -120 {
lab=GND}
N 350 -240 350 -190 {
lab=IN}
N 150 -120 150 -110 {
lab=GND}
N 830 -120 860 -120 {
lab=OUT}
N 150 -320 150 -180 {
lab=VDD}
N 720 -70 720 -50 {
lab=VSS}
N 240 -130 240 -110 {
lab=GND}
N 240 -220 240 -190 {
lab=VSS}
N 620 -120 650 -120 {
lab=IN}
N 720 -210 720 -170 {
lab=VDD}
N 560 30 590 30 {
lab=OUT1}
N 450 80 450 100 {
lab=VSS}
N 350 30 380 30 {
lab=IN}
N 450 -60 450 -20 {
lab=VDD}
N 550 30 560 30 {
lab=OUT1}
N 820 -120 830 -120 {
lab=OUT}
C {devices/gnd.sym} 350 -120 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 350 -160 0 0 {name=V4 value=" pulse( 3.3 0 0 100p 100p 100n 200n)"}
C {devices/lab_pin.sym} 350 -240 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/gnd.sym} 150 -110 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 860 -120 0 0 {name=p11 lab=OUT}
C {devices/gnd.sym} 240 -110 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 150 -320 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 240 -160 0 0 {name=VCNTL1 value=0


}
C {devices/lab_pin.sym} 240 -220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 720 -50 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 150 -150 0 0 {name=VCNTL2 value=3.3


}
C {devices/lab_pin.sym} 620 -120 0 0 {name=p9 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 720 -210 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 950 -530 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "GF_INV_STAGE_PEX.spice"
.control
set color0=white
set color1=black

save all
tran 10p 600n 
plot v(OUT) v(OUT) +4
write INV_TB.raw
.endc
"}
C {devices/code_shown.sym} 80 -530 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/opin.sym} 590 30 0 0 {name=p5 lab=OUT1}
C {devices/lab_pin.sym} 450 100 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 30 0 0 {name=p8 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 450 -60 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {GF_INV_STAGE.sym} 120 30 0 0 {name=x1}
C {GF_INV_STAGE_PEX.sym} 390 -120 0 0 {name=x2}
