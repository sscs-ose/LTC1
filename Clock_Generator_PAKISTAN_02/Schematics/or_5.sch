v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -480 -70 -460 -70 {
lab=#net1}
N -160 -30 -140 -30 {
lab=#net2}
N 160 10 180 10 {
lab=#net3}
N 480 50 500 50 {
lab=#net4}
N -800 -90 -790 -90 {
lab=B}
N -800 -110 -790 -110 {
lab=A}
N -790 -110 -780 -110 {
lab=A}
N -790 -90 -780 -90 {
lab=B}
N -480 -50 -460 -50 {
lab=C}
N -160 -10 -140 -10 {
lab=D}
N 160 30 180 30 {
lab=E}
N 500 50 530 50 {
lab=VOUT}
N -480 -110 490 -110 {
lab=VSS}
N 480 10 490 10 {
lab=VSS}
N 160 -110 160 -30 {
lab=VSS}
N -160 -110 -160 -70 {
lab=VSS}
N 480 30 500 30 {
lab=VDD}
N 500 -90 500 30 {
lab=VDD}
N 160 -10 170 -10 {
lab=VDD}
N 170 -90 170 -10 {
lab=VDD}
N -160 -50 -150 -50 {
lab=VDD}
N -150 -90 -150 -50 {
lab=VDD}
N 470 -130 470 -120 {
lab=VDD}
N 470 -120 470 -90 {
lab=VDD}
N 490 -130 490 -110 {
lab=VSS}
N -480 -90 500 -90 {}
N 490 -110 490 10 {}
C {devices/ipin.sym} -130 -170 0 0 {name=p2 lab=B}
C {devices/iopin.sym} 80 -170 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 150 -170 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -200 -170 0 0 {name=p30 lab=A}
C {devices/opin.sym} 220 -170 0 0 {name=p18 lab=VOUT}
C {devices/ipin.sym} 0 -170 0 0 {name=p1 lab=D}
C {devices/ipin.sym} -70 -170 0 0 {name=p5 lab=C}
C {devices/ipin.sym} 50 -170 0 0 {name=p6 lab=E}
C {devices/lab_pin.sym} -800 -90 0 0 {name=p15 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -800 -110 0 0 {name=p12 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -480 -50 0 0 {name=p7 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} -160 -10 0 0 {name=p8 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 160 30 0 0 {name=p9 sig_type=std_logic lab=E}
C {devices/lab_pin.sym} 530 50 2 0 {name=p10 sig_type=std_logic lab=VOUT}
C {or_2.sym} -630 -90 0 0 {name=x6}
C {or_2.sym} -310 -50 0 0 {name=x1}
C {or_2.sym} 10 -10 0 0 {name=x2}
C {or_2.sym} 330 30 0 0 {name=x3}
C {devices/lab_pin.sym} 490 -130 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -130 1 0 {name=p13 sig_type=std_logic lab=VDD}
