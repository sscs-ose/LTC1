v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -70 250 -70 {
lab=#net1}
N -260 -80 -170 -80 {
lab=SEL}
N -230 130 250 130 {
lab=SEL}
N -230 -80 -230 130 {
lab=SEL}
N 370 130 420 130 {
lab=#net2}
N 420 30 420 130 {
lab=#net2}
N 420 30 500 30 {
lab=#net2}
N 370 -70 410 -70 {
lab=#net3}
N 410 -70 410 10 {
lab=#net3}
N 410 10 500 10 {
lab=#net3}
N 310 -170 310 -130 {
lab=VDD}
N 310 200 310 240 {
lab=VSS}
N 550 -80 550 -40 {
lab=VDD}
N 550 80 550 120 {
lab=VSS}
N -110 -180 -110 -140 {
lab=VDD}
N -110 0 -110 50 {
lab=VSS}
N 200 -50 250 -50 {
lab=IN1}
N 200 150 250 150 {
lab=IN2}
N 310 -0 310 20 {
lab=VSS}
N 310 20 340 20 {
lab=VSS}
N 310 50 310 70 {
lab=VDD}
N 280 50 310 50 {
lab=VDD}
N 610 10 690 10 {
lab=OUT}
C {inverter.sym} -20 -60 0 0 {name=x1}
C {AND.sym} 400 -50 0 0 {name=x2}
C {AND.sym} 400 150 0 0 {name=x3}
C {OR.sym} 650 30 0 0 {name=x4}
C {devices/iopin.sym} -110 50 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} -110 -180 3 0 {name=p2 lab=VDD}
C {devices/ipin.sym} -260 -80 0 0 {name=p3 lab=SEL}
C {devices/ipin.sym} 200 -50 0 0 {name=p4 lab=IN1}
C {devices/ipin.sym} 200 150 0 0 {name=p5 lab=IN2}
C {devices/lab_wire.sym} 310 -150 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 550 -60 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 280 50 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 310 230 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 550 110 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 330 20 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 690 10 0 0 {name=p12 lab=OUT}
