v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -340 50 -310 {
lab=VDD}
N 50 -250 50 -220 {
lab=ITAIL}
N 50 -180 120 -180 {
lab=ITAIL}
N 50 -220 50 -180 {
lab=ITAIL}
N 430 -90 430 -60 {
lab=GND}
N 430 -180 430 -150 {
lab=VSS}
N 490 -180 490 -150 {
lab=VDD}
N 490 -90 490 -60 {
lab=GND}
N 220 -320 220 -270 {
lab=VSS}
N 220 -320 260 -320 {
lab=VSS}
N 330 -180 360 -180 {
lab=OUT}
N 360 -210 360 -180 {
lab=OUT}
N 360 -310 360 -270 {
lab=VDD}
N 430 -60 490 -60 {
lab=GND}
C {devices/code_shown.sym} 130 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 970 -590 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_CM_magic.spice"
.option savecurrents
.control
save all
op

tran 10n 3.2u
plot v(OUT) 
*write LSB_TB.raw
.endc
"}
C {devices/isource.sym} 50 -280 0 0 {name=I0 value=50u}
C {devices/vsource.sym} 430 -120 0 0 {name=V1 value=0}
C {devices/vsource.sym} 490 -120 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 430 -60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -170 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 50 -330 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 430 -170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -320 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/res.sym} 360 -240 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 360 -300 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -190 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {pex_CM_magic.sym} 270 -170 0 0 {name=x1}
C {devices/lab_pin.sym} 50 -190 0 0 {name=p7 sig_type=std_logic lab=ITAIL}
