v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1090 460 -1090 470 {
lab=VSS}
N -1090 380 -1090 400 {
lab=VDD}
N -1010 380 -1010 400 {
lab=VSS}
N -1010 460 -1010 480 {
lab=GND}
N -940 460 -940 470 {
lab=VSS}
N -940 380 -940 400 {
lab=IN1}
N -780 340 -760 340 {
lab=IN1}
N -780 360 -760 360 {
lab=IN2}
N -710 400 -710 420 {
lab=VSS}
N -715 280 -715 300 {
lab=VDD}
N -630 350 -620 350 {
lab=OUT}
N -1090 310 -1090 320 {
lab=VSS}
N -1090 240 -1090 250 {
lab=IN2}
N -635 350 -630 350 {}
C {devices/vsource.sym} -1090 430 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -1010 430 0 0 {name=V2 value=0}
C {devices/vsource.sym} -940 430 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} -1090 280 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -1010 380 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1090 470 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -1090 380 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -940 380 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -940 470 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -780 340 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -780 360 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -710 420 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -715 280 1 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -620 350 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -1090 240 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -1090 320 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -1010 480 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -930 140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 45 90 0 1 {name=NGSPICE1 only_toplevel=true
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
C {NAND.sym} -680 380 0 0 {name=x1}
