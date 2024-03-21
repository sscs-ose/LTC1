v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 150 -240 160 {
lab=VSS}
N -240 70 -240 90 {
lab=VDD}
N -160 70 -160 90 {
lab=VSS}
N -160 150 -160 170 {
lab=GND}
N -90 150 -90 160 {
lab=VSS}
N -90 70 -90 90 {
lab=IN1}
N -20 30 0 30 {
lab=IN1}
N -20 50 0 50 {
lab=IN3}
N 300 30 320 30 {
lab=VSS}
N 300 50 320 50 {
lab=VDD}
N 300 70 310 70 {
lab=OUT}
N -240 0 -240 10 {
lab=VSS}
N -240 -70 -240 -60 {
lab=IN2}
N -385 -115 -385 -105 {
lab=VSS}
N -385 -185 -385 -175 {
lab=IN3}
N -20 70 0 70 {
lab=IN2}
N 370 130 370 150 {
lab=VSS}
N 310 70 370 70 {}
C {devices/vsource.sym} -240 120 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -160 120 0 0 {name=V2 value=0}
C {devices/vsource.sym} -90 120 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} -240 -30 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -160 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -240 160 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -240 70 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -90 70 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -90 160 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 30 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -20 50 0 0 {name=p8 sig_type=std_logic lab=IN3}
C {devices/lab_wire.sym} 320 30 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 320 50 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 310 70 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -240 -70 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -240 10 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -160 170 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -80 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 690 -170 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_nand3_mag.spice"
.control
save all
tran 50p 1u 
plot v(IN1)
plot V(IN2) 
plot v(OUT)


*write test_nfet_03v3.raw
.endc
"}
C {pex_nand3_mag.sym} 150 50 0 0 {name=x1}
C {devices/vsource.sym} -385 -145 0 0 {name=V5 value="pulse(0 3.3 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} -385 -185 0 0 {name=p2 sig_type=std_logic lab=IN3}
C {devices/lab_wire.sym} -385 -105 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 70 0 0 {name=p15 sig_type=std_logic lab=IN2}
C {devices/capa.sym} 370 100 0 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 370 150 3 0 {name=p16 sig_type=std_logic lab=VSS}
