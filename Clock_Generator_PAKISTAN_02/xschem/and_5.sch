v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 30 430 30 {
lab=VOUT}
N -870 -110 -860 -110 {
lab=B}
N -870 -130 -860 -130 {
lab=A}
N -860 -130 -850 -130 {
lab=A}
N -860 -110 -850 -110 {
lab=B}
N -550 -70 -530 -70 {
lab=#net1}
N -230 -30 -210 -30 {
lab=#net2}
N 90 10 110 10 {
lab=#net3}
N -550 -130 420 -130 {
lab=VSS}
N 410 -10 420 -10 {
lab=VSS}
N 90 -130 90 -50 {
lab=VSS}
N -230 -130 -230 -90 {
lab=VSS}
N 410 10 430 10 {
lab=VDD}
N 430 -110 430 10 {
lab=VDD}
N 90 -30 100 -30 {
lab=VDD}
N 100 -110 100 -30 {
lab=VDD}
N -230 -70 -220 -70 {
lab=VDD}
N -220 -110 -220 -70 {
lab=VDD}
N 400 -150 400 -140 {
lab=VDD}
N 400 -140 400 -110 {
lab=VDD}
N 420 -150 420 -130 {
lab=VSS}
N -550 -110 430 -110 {
lab=VDD}
N 420 -130 420 -10 {
lab=VSS}
N -550 -90 -550 -70 {
lab=#net1}
N -540 -90 -530 -90 {
lab=C}
N -230 -50 -230 -30 {
lab=#net2}
N -220 -50 -210 -50 {
lab=D}
N 90 -10 90 10 {
lab=#net3}
N 100 -10 110 -10 {
lab=E}
C {and_2.sym} -700 -110 0 0 {name=x1}
C {and_2.sym} -380 -70 0 0 {name=x2}
C {and_2.sym} -60 -30 0 0 {name=x3}
C {and_2.sym} 260 10 0 0 {name=x4}
C {devices/ipin.sym} -200 -190 0 0 {name=p2 lab=B}
C {devices/iopin.sym} 10 -190 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 80 -190 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -270 -190 0 0 {name=p30 lab=A}
C {devices/opin.sym} 150 -190 0 0 {name=p18 lab=VOUT}
C {devices/ipin.sym} -70 -190 0 0 {name=p1 lab=D}
C {devices/ipin.sym} -140 -190 0 0 {name=p5 lab=C}
C {devices/ipin.sym} -20 -190 0 0 {name=p6 lab=E}
C {devices/lab_pin.sym} -870 -110 0 0 {name=p15 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -870 -130 0 0 {name=p12 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -540 -90 0 0 {name=p7 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} -220 -50 0 0 {name=p8 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 100 -10 0 0 {name=p9 sig_type=std_logic lab=E}
C {devices/lab_pin.sym} 430 30 2 0 {name=p10 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 420 -150 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 -150 1 0 {name=p13 sig_type=std_logic lab=VDD}
