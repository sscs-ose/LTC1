v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -410 470 -380 {
lab=VDD}
N 470 -320 470 -290 {
lab=ITAIL}
N 470 -250 540 -250 {
lab=ITAIL}
N 470 -290 470 -250 {
lab=ITAIL}
N 1350 -360 1350 -330 {
lab=GND}
N 1350 -450 1350 -420 {
lab=VSS}
N 1410 -450 1410 -420 {
lab=VDD}
N 1410 -360 1410 -330 {
lab=GND}
N 500 -225 500 -175 {
lab=VSS}
N 500 -225 540 -225 {
lab=VSS}
N 890 -210 920 -210 {
lab=OUT1}
N 920 -210 920 -180 {
lab=OUT1}
N 920 -120 920 -80 {
lab=VDD}
N 1350 -330 1410 -330 {
lab=GND}
N 840 -210 890 -210 {
lab=OUT1}
C {devices/code_shown.sym} 400 -480 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1240 -650 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_CM_magic.spice"
.option savecurrents
.control
save all
op

tran 10n 3.2u
plot v(OUT) 
write LSB_TB.raw
.endc
"}
C {devices/isource.sym} 470 -350 0 0 {name=I0 value=2.5u}
C {devices/vsource.sym} 1350 -390 0 0 {name=V1 value=0}
C {devices/vsource.sym} 1410 -390 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 1350 -330 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1410 -440 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -400 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1350 -440 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -225 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/res.sym} 920 -150 2 1 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 920 -90 2 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 920 -200 2 0 {name=p6 sig_type=std_logic lab=OUT1}
C {devices/lab_pin.sym} 470 -260 0 0 {name=p7 sig_type=std_logic lab=ITAIL}
C {pex_CM_LSB.sym} 690 -240 0 0 {name=x1}
