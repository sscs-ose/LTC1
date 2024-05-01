v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -20 40 -10 {
lab=VSS}
N 40 -100 40 -80 {
lab=VDD}
N 120 -100 120 -80 {
lab=VSS}
N 120 -20 120 -0 {
lab=GND}
N 190 -20 190 -10 {
lab=VSS}
N 190 -100 190 -80 {
lab=IN1}
N 260 -140 280 -140 {
lab=IN1}
N 260 -120 280 -120 {
lab=IN2}
N 330 -80 330 -60 {
lab=VSS}
N 325 -200 325 -180 {
lab=VDD}
N 405 -130 415 -130 {
lab=OUT}
N 40 -170 40 -160 {
lab=VSS}
N 40 -240 40 -230 {
lab=IN2}
C {NAND.sym} 360 -100 0 0 {name=x1}
C {devices/vsource.sym} 40 -50 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 120 -50 0 0 {name=V2 value=0}
C {devices/vsource.sym} 190 -50 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} 40 -200 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 120 -100 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 40 -10 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 40 -100 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 190 -100 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 190 -10 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -140 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 260 -120 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 330 -60 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 325 -200 1 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 415 -130 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 40 -240 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 40 -160 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 120 0 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 200 -340 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 850 -250 0 1 {name=NGSPICE1 only_toplevel=true
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
