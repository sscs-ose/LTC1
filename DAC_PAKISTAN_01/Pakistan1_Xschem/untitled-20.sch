v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -230 20 -220 {
lab=VDD}
N 20 -160 20 -90 {
lab=ITAIL}
N 20 -90 110 -90 {
lab=ITAIL}
N 20 -310 100 -310 {
lab=VDD}
N 20 -310 20 -230 {
lab=VDD}
N 260 -310 260 -180 {
lab=VDD}
N 100 -310 500 -310 {
lab=VDD}
N 410 -120 470 -120 {
lab=OUT_1}
N 410 -140 490 -140 {
lab=OUT_2}
N 470 -120 550 -120 {
lab=OUT_1}
N 550 -310 550 -140 {
lab=VDD}
N 500 -310 550 -310 {
lab=VDD}
N 610 -310 610 -120 {
lab=VDD}
N 550 -310 610 -310 {
lab=VDD}
C {devices/vsource.sym} 100 -280 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 100 -250 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 280 -470 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1030 -310 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_CM_LSB.spice"
.options savecurrents

.control
save all
tran 10n 1u 

plot v(ITAIL)
*write test_nfet_03v3.raw
.endc
"}
C {devices/isource.sym} 20 -190 0 0 {name=I0 value=2.5u}
C {devices/gnd.sym} 410 -80 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 70 -90 0 0 {name=p1 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 470 -120 0 0 {name=p2 sig_type=std_logic lab=OUT_1}
C {devices/lab_wire.sym} 310 -310 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 460 -140 0 0 {name=p4 sig_type=std_logic lab=OUT_2}
C {devices/res.sym} 520 -140 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 580 -120 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {pex_CM_LSB .sym} 250 -90 0 0 {name=x1}
