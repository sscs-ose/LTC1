v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -140 100 -140 {
lab=IN1}
N 90 110 130 110 {
lab=IN2}
N 280 -140 320 -140 {
lab=VOUT}
N 320 -140 320 30 {
lab=VOUT}
N 120 -220 120 -190 {
lab=VDD}
N 250 -220 250 -190 {
lab=VSS}
N 190 -120 190 -90 {
lab=SEL_B}
N 220 160 220 190 {
lab=SEL}
N -240 0 -240 30 {
lab=VSS}
N -240 -130 -240 -100 {
lab=VDD}
N -130 -50 -100 -50 {
lab=SEL_B}
N -340 -50 -310 -50 {
lab=SEL}
N 320 -60 350 -60 {
lab=VOUT}
N 150 30 150 60 {
lab=VDD}
N 280 30 280 60 {
lab=VSS}
N 220 130 220 160 {
lab=SEL}
N 310 110 320 110 {
lab=VOUT}
N 320 30 320 110 {
lab=VOUT}
N -310 -50 -290 -50 {
lab=SEL}
C {devices/iopin.sym} -240 -130 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} -240 30 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -340 -50 3 0 {name=p4 lab=SEL}
C {devices/lab_pin.sym} 120 -220 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 250 -220 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -90 3 0 {name=p6 sig_type=std_logic lab=SEL_B}
C {devices/lab_pin.sym} 220 190 0 0 {name=p9 sig_type=std_logic lab=SEL}
C {devices/lab_wire.sym} -100 -50 2 0 {name=p10 sig_type=std_logic lab=SEL_B}
C {devices/ipin.sym} 70 -140 0 0 {name=p11 lab=IN1}
C {devices/ipin.sym} 100 110 0 0 {name=p12 lab=IN2}
C {devices/opin.sym} 350 -60 0 0 {name=p13 lab=VOUT}
C {Transmission_Gate.sym} 580 -130 0 0 {name=x2}
C {devices/lab_pin.sym} 150 30 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 30 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {Transmission_Gate.sym} 610 120 0 0 {name=x3}
C {inv_my.sym} -730 80 0 0 {name=x1}
