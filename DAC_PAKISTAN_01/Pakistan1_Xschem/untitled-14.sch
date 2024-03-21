v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -380 -130 -350 {
lab=GND}
N -130 -470 -130 -440 {
lab=VSS}
N -70 -470 -70 -440 {
lab=#net1}
N -70 -380 -70 -350 {
lab=VSS}
N -70 -550 -70 -520 {
lab=#net1}
N -70 -490 -70 -470 {
lab=#net1}
N -70 -510 -70 -480 {
lab=#net1}
N -70 -520 -70 -510 {
lab=#net1}
N -205 -260 400 -260 {
lab=VSS}
N -205 -470 -205 -260 {
lab=VSS}
N -205 -470 -130 -470 {
lab=VSS}
N -70 -610 55 -610 {
lab=ITAIL}
N 55 -610 55 -290 {
lab=ITAIL}
N 55 -290 400 -290 {
lab=ITAIL}
N 400 -265 400 -260 {
lab=VSS}
N 700 -350 940 -350 {
lab=OUT6}
N 700 -250 740 -250 {
lab=OUT1}
N 700 -270 795 -270 {
lab=OUT2}
N 700 -290 830 -290 {
lab=OUT3}
N 700 -310 875 -310 {
lab=OUT4}
N 700 -330 935 -330 {
lab=OUT5}
N 940 -350 980 -350 {
lab=OUT6}
N 740 -190 980 -190 {
lab=#net1}
N 980 -290 980 -190 {
lab=#net1}
N 935 -270 935 -190 {
lab=#net1}
N 875 -250 875 -190 {
lab=#net1}
N 830 -230 830 -190 {
lab=#net1}
N 795 -210 795 -190 {
lab=#net1}
N 980 -290 1035 -290 {
lab=#net1}
N 1035 -400 1035 -290 {
lab=#net1}
N -15 -400 1035 -400 {
lab=#net1}
N -15 -460 -15 -400 {
lab=#net1}
N -70 -460 -15 -460 {
lab=#net1}
C {CM_LSB_V1.sym} 550 -280 0 0 {name=x1}
C {devices/vsource.sym} -130 -410 0 0 {name=V1 value=0}
C {devices/vsource.sym} -70 -410 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -130 -350 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -130 -460 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -70 -360 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 240 -500 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/isource.sym} -70 -580 2 0 {name=I0 value=2.5u}
C {devices/res.sym} 740 -220 0 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 795 -240 0 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 830 -260 0 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 875 -280 0 0 {name=R4
value=5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 935 -300 0 0 {name=R5
value=5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 980 -320 0 0 {name=R6
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 210 -290 0 0 {name=p2 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 795 -350 0 0 {name=p3 sig_type=std_logic lab=OUT6}
C {devices/lab_wire.sym} 765 -330 0 0 {name=p4 sig_type=std_logic lab=OUT5}
C {devices/lab_wire.sym} 775 -310 0 0 {name=p5 sig_type=std_logic lab=OUT4}
C {devices/lab_wire.sym} 770 -290 0 0 {name=p6 sig_type=std_logic lab=OUT3}
C {devices/lab_wire.sym} 770 -270 0 0 {name=p7 sig_type=std_logic lab=OUT2}
C {devices/lab_wire.sym} 725 -250 0 0 {name=p9 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} 1505 -415 0 1 {name=NGSPICE only_toplevel=true
value="
*.include "pex_CM_magic.spice"
.option savecurrents
.control
save all
op

tran 10n 3.2u
plot v(OUT1) 
*write LSB_TB.raw
.endc
"}
