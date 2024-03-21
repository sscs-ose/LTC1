v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -240 -230 -210 {
lab=GND}
N -230 -330 -230 -300 {
lab=VSS}
N -170 -330 -170 -300 {
lab=VDD}
N -170 -240 -170 -210 {
lab=VSS}
N -50 -50 -50 -20 {
lab=IN}
N -50 40 -50 70 {
lab=VSS}
N 110 -120 110 -80 {
lab=VDD}
N 110 -40 110 -0 {
lab=VSS}
N 170 -60 210 -60 {
lab=OUT}
N -180 -70 50 -70 {
lab=SEL}
N -50 -50 50 -50 {
lab=IN}
N 210 -60 240 -60 {
lab=OUT}
N 240 -60 260 -60 {
lab=OUT}
N -180 -10 -180 20 {
lab=VSS}
N 260 -60 280 -60 {
lab=OUT}
N 280 0 280 30 {
lab=VSS}
C {devices/vsource.sym} -230 -270 0 0 {name=V1 value=0}
C {devices/vsource.sym} -170 -270 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -230 -210 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -230 -320 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -170 -320 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -50 10 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 50u 100u)"}
C {devices/lab_wire.sym} -50 -40 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} -170 -220 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -50 60 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 0 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 850 -270 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_TG.spice"
.control
save all

tran 100n 200u 
plot v(OUT) 
*************plot v(SEL)
plot v(IN)
*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 110 -110 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 110 -10 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 220 -60 0 1 {name=p11 sig_type=std_logic lab=OUT}
C {devices/vsource.sym} -180 -40 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} -180 10 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 -70 0 0 {name=p3 sig_type=std_logic lab=SEL}
C {pex_TG.sym} 110 -60 0 0 {name=x1}
C {devices/res.sym} 280 -30 0 0 {name=R1
value=200
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 280 30 0 0 {name=p10 sig_type=std_logic lab=VSS}
