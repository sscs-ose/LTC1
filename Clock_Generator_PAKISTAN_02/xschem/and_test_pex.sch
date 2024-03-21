v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 100 -240 110 {
lab=VSS}
N -240 20 -240 40 {
lab=VDD}
N -160 20 -160 40 {
lab=VSS}
N -160 100 -160 120 {
lab=GND}
N -90 100 -90 110 {
lab=VSS}
N -90 20 -90 40 {
lab=IN1}
N -20 -20 0 -20 {
lab=IN1}
N 300 -20 320 -20 {
lab=VSS}
N 300 0 320 0 {
lab=VDD}
N 300 20 310 20 {
lab=OUT}
N -240 -50 -240 -40 {
lab=VSS}
N -240 -120 -240 -110 {
lab=IN2}
N -20 0 0 0 {
lab=IN2}
N 370 80 370 100 {
lab=VSS}
N 310 20 370 20 {
lab=OUT}
C {devices/vsource.sym} -240 70 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -160 70 0 0 {name=V2 value=0}
C {devices/vsource.sym} -90 70 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} -240 -80 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -160 20 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -240 110 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -240 20 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -90 20 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -90 110 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 -20 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 320 -20 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 320 0 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 310 20 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -240 -120 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -240 -40 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -160 120 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -80 -220 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 690 -220 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_and2_mag.spice"
.control
save all
tran 50p 1u 
plot v(IN1)
plot V(IN2) 
plot v(OUT)


*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} -20 0 0 0 {name=p15 sig_type=std_logic lab=IN2}
C {devices/capa.sym} 370 50 0 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 370 100 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {pex_and2_mag.sym} 150 0 0 0 {name=x1}
