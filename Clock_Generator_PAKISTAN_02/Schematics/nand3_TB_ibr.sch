v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1110 390 -1110 400 {
lab=VSS}
N -1110 310 -1110 330 {
lab=VDD}
N -1030 310 -1030 330 {
lab=VSS}
N -1030 390 -1030 410 {
lab=GND}
N -1380 200 -1380 210 {
lab=VSS}
N -1380 120 -1380 140 {
lab=IN1}
N -880 210 -860 210 {
lab=IN1}
N -880 250 -860 250 {
lab=IN2}
N -560 210 -540 210 {
lab=VSS}
N -560 230 -540 230 {
lab=VDD}
N -560 250 -550 250 {
lab=OUT}
N -1450 240 -1450 250 {
lab=VSS}
N -1450 170 -1450 180 {
lab=IN2}
N -1510 330 -1510 340 {
lab=VSS}
N -1510 250 -1510 270 {
lab=IN3}
N -880 230 -860 230 {
lab=IN3}
C {devices/vsource.sym} -1110 360 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -1030 360 0 0 {name=V2 value=0}
C {devices/vsource.sym} -1380 170 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} -1450 210 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -1030 310 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1110 400 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -1110 310 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1380 120 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -1380 210 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -880 210 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -880 250 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -540 210 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -540 230 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -550 250 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -1450 170 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -1450 250 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -1030 410 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -950 70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 25 20 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 1u 
plot v(IN1)
plot V(IN2) 
plot V(IN3) 
plot v(OUT)


*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -1510 300 0 0 {name=V5 value="pulse(0 3.3 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} -1510 340 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {nand3.sym} -710 230 0 0 {name=x1}
C {devices/lab_wire.sym} -1510 250 0 0 {name=p15 sig_type=std_logic lab=IN3}
C {devices/lab_wire.sym} -880 230 0 0 {name=p2 sig_type=std_logic lab=IN3}
C {nand3_PEX.sym} -510 700 0 0 {name=x2}
