v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 10 -230 10 {
lab=#net1}
N 70 50 90 50 {
lab=#net2}
N 390 90 410 90 {
lab=#net3}
N 710 130 730 130 {
lab=#net4}
N -570 -10 -560 -10 {
lab=B}
N -570 -30 -560 -30 {
lab=A}
N -560 -30 -550 -30 {
lab=A}
N -560 -10 -550 -10 {
lab=B}
N -250 30 -230 30 {
lab=C}
N 70 70 90 70 {
lab=D}
N 390 110 410 110 {
lab=E}
N 910 130 940 130 {
lab=VOUT}
N -250 -30 720 -30 {
lab=VSS}
N 720 -30 720 190 {
lab=VSS}
N 720 190 800 190 {
lab=VSS}
N 800 180 800 190 {
lab=VSS}
N 710 90 720 90 {
lab=VSS}
N 390 -30 390 50 {
lab=VSS}
N 70 -30 70 10 {
lab=VSS}
N -250 -10 800 -10 {
lab=VDD}
N 800 -10 800 80 {
lab=VDD}
N 710 110 730 110 {
lab=VDD}
N 730 -10 730 110 {
lab=VDD}
N 390 70 400 70 {
lab=VDD}
N 400 -10 400 70 {
lab=VDD}
N 70 30 80 30 {
lab=VDD}
N 80 -10 80 30 {
lab=VDD}
N 700 -50 700 -40 {
lab=VDD}
N 700 -40 700 -10 {
lab=VDD}
N 720 -50 720 -30 {
lab=VSS}
C {GF_INV.sym} 800 130 0 0 {name=x5}
C {devices/ipin.sym} 100 -90 0 0 {name=p2 lab=B}
C {devices/iopin.sym} 310 -90 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 380 -90 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 30 -90 0 0 {name=p30 lab=A}
C {devices/opin.sym} 450 -90 0 0 {name=p18 lab=VOUT}
C {devices/ipin.sym} 230 -90 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 160 -90 0 0 {name=p5 lab=C}
C {devices/ipin.sym} 280 -90 0 0 {name=p6 lab=E}
C {devices/lab_pin.sym} -570 -10 0 0 {name=p15 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -570 -30 0 0 {name=p12 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -250 30 0 0 {name=p7 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} 70 70 0 0 {name=p8 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 390 110 0 0 {name=p9 sig_type=std_logic lab=E}
C {devices/lab_pin.sym} 940 130 2 0 {name=p10 sig_type=std_logic lab=VOUT}
C {or_2.sym} -400 -10 0 0 {name=x6}
C {or_2.sym} -80 30 0 0 {name=x1}
C {or_2.sym} 240 70 0 0 {name=x2}
C {or_2.sym} 560 110 0 0 {name=x3}
C {devices/lab_pin.sym} 720 -50 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 700 -50 1 0 {name=p13 sig_type=std_logic lab=VDD}
