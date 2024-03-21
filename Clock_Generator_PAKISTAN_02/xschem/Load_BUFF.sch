v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 10 260 10 {
lab=VDD}
N 240 -10 260 -10 {
lab=VSS}
N -70 -10 -60 -10 {
lab=IN}
N 560 50 580 50 {
lab=VDD}
N 560 30 580 30 {
lab=VSS}
N 560 70 580 70 {
lab=OUT}
N 240 30 260 30 {
lab=#net1}
C {devices/lab_pin.sym} 260 10 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -10 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -70 -10 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 580 50 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 580 30 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 580 70 2 0 {name=p6 sig_type=std_logic lab=OUT}
C {devices/iopin.sym} -10 -160 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 70 -160 0 0 {name=p8 lab=VSS}
C {devices/ipin.sym} 190 -160 0 0 {name=p9 lab=IN}
C {devices/opin.sym} 230 -160 0 0 {name=p11 lab=OUT}
C {INV_BUFF.sym} 90 10 0 0 {name=x3}
C {INV_BUFF.sym} 410 50 0 0 {name=x1}
