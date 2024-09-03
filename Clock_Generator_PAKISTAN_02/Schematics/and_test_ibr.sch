v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 130 -10 140 {
lab=VSS}
N -10 50 -10 70 {
lab=VDD}
N 70 50 70 70 {
lab=VSS}
N 70 130 70 150 {
lab=GND}
N 140 130 140 140 {
lab=VSS}
N 140 50 140 70 {
lab=IN1}
N 210 10 230 10 {
lab=IN1}
N 210 30 230 30 {
lab=IN2}
N 530 10 550 10 {
lab=VSS}
N 530 30 550 30 {
lab=VDD}
N 530 50 540 50 {
lab=OUT}
N -10 -20 -10 -10 {
lab=VSS}
N -10 -90 -10 -80 {
lab=IN2}
C {devices/vsource.sym} -10 100 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 70 100 0 0 {name=V2 value=0}
C {devices/vsource.sym} 140 100 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} -10 -50 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 70 50 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 140 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -10 50 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 50 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 140 140 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 10 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 210 30 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 550 10 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 550 30 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 540 50 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -10 -90 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -10 -10 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 70 150 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 150 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1125 -240 0 1 {name=NGSPICE1 only_toplevel=true
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
C {and_2.sym} 380 30 0 0 {name=x5}
