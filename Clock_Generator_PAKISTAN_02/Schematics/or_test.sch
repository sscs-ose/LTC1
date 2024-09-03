v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -375 265 -375 275 {
lab=VSS}
N -375 185 -375 205 {
lab=VDD}
N -295 185 -295 205 {
lab=VSS}
N -295 265 -295 285 {
lab=GND}
N -225 265 -225 275 {
lab=VSS}
N -225 185 -225 205 {
lab=IN1}
N -155 145 -135 145 {
lab=IN1}
N -155 165 -135 165 {
lab=IN2}
N 165 145 185 145 {
lab=VSS}
N 165 165 185 165 {
lab=VDD}
N 165 185 175 185 {
lab=OUT}
N -375 115 -375 125 {
lab=VSS}
N -375 45 -375 55 {
lab=IN2}
C {devices/vsource.sym} -375 235 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -295 235 0 0 {name=V2 value=0}
C {devices/vsource.sym} -225 235 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} -375 85 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -295 185 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -375 275 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -375 185 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -225 185 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -225 275 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -155 145 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -155 165 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 185 145 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 185 165 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 175 185 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -375 45 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -375 125 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -295 285 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -215 -55 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 760 -105 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 1u 
plot v(IN1)
plot V(IN2) 
plot v(OUT)


*write test_nfet_03v3.raw
.endc
"}
C {or_2.sym} 15 165 0 0 {name=x1}
