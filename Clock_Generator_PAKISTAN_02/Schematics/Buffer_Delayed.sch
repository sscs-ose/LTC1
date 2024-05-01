v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -50 130 -50 {
lab=VDD}
N 110 -70 130 -70 {
lab=VSS}
N -200 -70 -190 -70 {
lab=IN}
N 430 -10 450 -10 {
lab=VDD}
N 430 -30 450 -30 {
lab=VSS}
N 430 10 450 10 {
lab=OUT}
N 110 -30 130 -30 {
lab=#net1}
C {devices/lab_pin.sym} 130 -50 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 -70 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -200 -70 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 450 -10 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 -30 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 450 10 2 0 {name=p6 sig_type=std_logic lab=OUT}
C {devices/iopin.sym} 10 -130 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 90 -130 0 0 {name=p8 lab=VSS}
C {devices/ipin.sym} 210 -130 0 0 {name=p9 lab=IN}
C {devices/opin.sym} 250 -130 0 0 {name=p11 lab=OUT}
C {Inverter_Delayed.sym} -40 -50 0 0 {name=x2}
C {Inverter_Delayed.sym} 280 -10 0 0 {name=x3}
