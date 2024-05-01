v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -570 -110 -550 -110 {
lab=#net1}
N -250 -70 -230 -70 {
lab=#net2}
N 70 -30 90 -30 {
lab=#net3}
N 90 -30 110 -30 {
lab=#net3}
N -890 -130 -880 -130 {
lab=B}
N -890 -150 -880 -150 {
lab=A}
N -880 -150 -870 -150 {
lab=A}
N -880 -130 -870 -130 {
lab=B}
N -570 -90 -550 -90 {
lab=C}
N -250 -50 -230 -50 {
lab=D}
N 290 -30 320 -30 {
lab=VOUT}
N 180 20 180 30 {
lab=VSS}
N -250 -150 -250 -110 {
lab=VSS}
N 70 -50 80 -50 {
lab=VDD}
N 80 -130 80 -50 {
lab=VDD}
N -250 -90 -240 -90 {
lab=VDD}
N -240 -130 -240 -90 {
lab=VDD}
N 180 -120 180 -110 {
lab=VDD}
N 180 -110 180 -80 {
lab=VDD}
N 110 30 180 30 {
lab=VSS}
N 100 30 110 30 {
lab=VSS}
N 100 -120 100 30 {
lab=VSS}
N -570 -150 100 -150 {
lab=VSS}
N 100 -150 100 -120 {
lab=VSS}
N 70 -150 70 -70 {
lab=VSS}
N -570 -130 180 -130 {
lab=VDD}
N 180 -130 180 -120 {
lab=VDD}
C {and_2.sym} -720 -130 0 0 {name=x1}
C {and_2.sym} -400 -90 0 0 {name=x2}
C {and_2.sym} -80 -50 0 0 {name=x3}
C {GF_INV.sym} 180 -30 0 0 {name=x5}
C {devices/ipin.sym} -220 -210 0 0 {name=p2 lab=B}
C {devices/iopin.sym} -10 -210 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 60 -210 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -290 -210 0 0 {name=p30 lab=A}
C {devices/opin.sym} 130 -210 0 0 {name=p18 lab=VOUT}
C {devices/ipin.sym} -90 -210 0 0 {name=p1 lab=D}
C {devices/ipin.sym} -160 -210 0 0 {name=p5 lab=C}
C {devices/lab_pin.sym} -890 -130 0 0 {name=p15 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -890 -150 0 0 {name=p12 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -570 -90 0 0 {name=p7 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} -250 -50 0 0 {name=p8 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 320 -30 2 0 {name=p10 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 100 -120 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -120 1 0 {name=p13 sig_type=std_logic lab=VDD}
