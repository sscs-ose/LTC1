v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1310 -160 1390 -160 {
lab=#net1}
N 990 -200 1010 -200 {
lab=IN1}
N 990 -180 1010 -180 {
lab=IN3}
N 990 -160 1010 -160 {
lab=IN2}
N 1310 -200 1330 -200 {
lab=VSS}
N 1310 -180 1330 -180 {
lab=VDD}
N 1440 -220 1440 -210 {
lab=VDD}
N 1440 -100 1440 -90 {
lab=VSS}
N 1550 -160 1560 -160 {
lab=OUT}
C {devices/ipin.sym} 1150 -360 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} 1220 -360 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} 1250 -360 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 1320 -360 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 1390 -360 0 0 {name=p5 lab=OUT}
C {devices/ipin.sym} 1070 -360 0 0 {name=p19 lab=IN3}
C {devices/lab_pin.sym} 990 -180 0 0 {name=p20 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 990 -160 0 0 {name=p21 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 990 -200 0 0 {name=p22 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 1330 -200 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1330 -180 2 0 {name=p24 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1440 -220 1 0 {name=p25 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1440 -90 3 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1560 -160 0 1 {name=p27 sig_type=std_logic lab=OUT}
C {nand3_ibr.sym} 1160 -180 0 0 {name=x1}
C {inv_my_ibr.sym} 950 -30 0 0 {name=x2}
