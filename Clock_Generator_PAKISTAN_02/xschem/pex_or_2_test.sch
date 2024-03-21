v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 45 -55 45 -45 {
lab=VSS}
N 45 -135 45 -115 {
lab=VDD}
N 125 -135 125 -115 {
lab=VSS}
N 125 -55 125 -35 {
lab=GND}
N 195 -55 195 -45 {
lab=VSS}
N 195 -135 195 -115 {
lab=IN1}
N 265 -175 285 -175 {
lab=IN1}
N 265 -155 285 -155 {
lab=IN2}
N 585 -175 605 -175 {
lab=VSS}
N 585 -155 605 -155 {
lab=VDD}
N 585 -135 595 -135 {
lab=OUT}
N 45 -205 45 -195 {
lab=VSS}
N 45 -275 45 -265 {
lab=IN2}
C {devices/vsource.sym} 45 -85 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 125 -85 0 0 {name=V2 value=0}
C {devices/vsource.sym} 195 -85 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} 45 -235 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 125 -135 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 45 -45 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 45 -135 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 195 -135 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 195 -45 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 265 -175 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 265 -155 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 605 -175 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 605 -155 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 595 -135 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 45 -275 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 45 -195 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 125 -35 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 205 -375 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1180 -425 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_or_2_mag.spice"
.control
save all
tran 50p 1u 
plot v(IN1)
plot V(IN2) 
plot v(OUT)


*write test_nfet_03v3.raw
.endc
"}
C {pex_or_2.sym} 435 -155 0 0 {name=x1}
