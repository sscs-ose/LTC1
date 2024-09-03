v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 -210 380 -210 {
lab=#net1}
N 430 -280 430 -260 {
lab=VDD}
N 540 -210 560 -210 {
lab=OUT}
N 430 -150 430 -140 {
lab=VSS}
N 170 -200 190 -200 {
lab=IN2}
N 170 -220 190 -220 {
lab=IN1}
N 240 -160 240 -140 {
lab=VSS}
N 235 -290 235 -260 {
lab=VDD}
N 320 -210 330 -210 {
lab=#net1}
N 315 -210 325 -210 {
lab=#net1}
C {devices/ipin.sym} 270 -530 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} 340 -530 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} 370 -530 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 440 -530 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 510 -530 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} 170 -200 0 0 {name=p6 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 170 -220 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 235 -290 1 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 240 -140 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 430 -280 1 0 {name=p14 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 430 -140 3 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 560 -210 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {inv_my_ibr.sym} -60 -80 0 0 {name=x2}
C {NAND_ibr.sym} 270 -180 0 0 {name=x1}
