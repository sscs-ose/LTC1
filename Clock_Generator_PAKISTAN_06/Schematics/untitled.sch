v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 -50 -410 -20 {
lab=GND}
N -410 -140 -410 -110 {
lab=VSS}
N -350 -140 -350 -110 {
lab=VDD}
N -350 -50 -350 -20 {
lab=VSS}
N -280 -140 -280 -110 {
lab=A}
N -280 -50 -280 -20 {
lab=VSS}
N -190 -240 -190 -210 {
lab=B}
N -190 -150 -190 -120 {
lab=VSS}
N -20 -40 20 -40 {
lab=A}
N -20 -20 20 -20 {
lab=B}
N 80 -120 80 -90 {
lab=VDD}
N 80 30 80 70 {
lab=VSS}
N 150 -30 190 -30 {
lab=VDD}
C {NAND.sym} 170 -20 0 0 {name=x1}
C {devices/vsource.sym} -410 -80 0 0 {name=V1 value=0}
C {devices/vsource.sym} -350 -80 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -410 -20 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -410 -130 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -350 -130 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -280 -80 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -280 -130 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} -350 -30 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -280 -30 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -190 -180 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -190 -230 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} -190 -130 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 60 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -100 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 0 -40 0 0 {name=p10 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 0 -20 0 0 {name=p11 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 190 -30 0 0 {name=p12 sig_type=std_logic lab=VOUT}
