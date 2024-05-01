v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -710 70 -650 70 {
lab=#net1}
N -660 -310 -650 -310 {
lab=CLK}
N -660 -190 -660 -70 {
lab=CLK}
N -660 -70 -660 50 {
lab=CLK}
N -660 50 -650 50 {
lab=CLK}
N -670 -270 -650 -270 {
lab=RST}
N -670 -270 -670 -150 {
lab=RST}
N -670 -150 -650 -150 {
lab=RST}
N -670 -150 -670 -30 {
lab=RST}
N -670 -30 -650 -30 {
lab=RST}
N -670 -30 -670 90 {
lab=RST}
N -670 90 -650 90 {
lab=RST}
N -680 -290 -650 -290 {
lab=VDD}
N -680 -290 -680 -250 {
lab=VDD}
N -680 -250 -650 -250 {
lab=VDD}
N -680 -50 -650 -50 {
lab=VDD}
N -680 -50 -680 -10 {
lab=VDD}
N -680 -10 -650 -10 {
lab=VDD}
N -680 -130 -650 -130 {
lab=VDD}
N -680 -250 -680 -130 {
lab=VDD}
N -680 -130 -680 -50 {
lab=VDD}
N -680 110 -650 110 {
lab=VDD}
N -680 -10 -680 110 {
lab=VDD}
N -710 50 -680 50 {
lab=VDD}
N -710 30 -690 30 {
lab=VSS}
N -350 110 -340 110 {
lab=#net2}
N -340 -80 -340 110 {
lab=#net2}
N -340 -90 -340 -80 {
lab=#net2}
N -690 -90 -340 -90 {
lab=#net2}
N -690 -170 -690 -90 {
lab=#net2}
N -690 -170 -650 -170 {
lab=#net2}
N -350 -30 -330 -30 {
lab=Q2}
N -330 -30 -330 10 {
lab=Q2}
N -1020 10 -330 10 {
lab=Q2}
N -1020 10 -1020 30 {
lab=Q2}
N -1020 30 -1010 30 {
lab=Q2}
N -350 -270 -340 -270 {
lab=Q0}
N -340 -270 -340 -230 {
lab=Q0}
N -650 -200 -650 -190 {
lab=Q0}
N -650 -230 -650 -200 {
lab=Q0}
N -650 -230 -340 -230 {
lab=Q0}
N -350 -150 -340 -150 {
lab=Q1}
N -340 -150 -340 -110 {
lab=Q1}
N -650 -110 -340 -110 {
lab=Q1}
N -650 -110 -650 -70 {
lab=Q1}
N -1030 -110 -650 -110 {
lab=Q1}
N -1030 -110 -1030 50 {
lab=Q1}
N -1030 50 -1010 50 {
lab=Q1}
N -350 -310 -330 -310 {
lab=VSS}
N -350 -290 -330 -290 {
lab=VDD}
N -350 -190 -330 -190 {
lab=VSS}
N -350 -170 -330 -170 {
lab=VDD}
N -350 -70 -330 -70 {
lab=VSS}
N -350 -50 -330 -50 {
lab=VDD}
N -350 50 -330 50 {
lab=VSS}
N -350 70 -330 70 {
lab=VDD}
N -350 90 -320 90 {
lab=Q3}
N -660 -190 -650 -190 {}
N -350 -250 -330 -250 {}
N -350 -130 -330 -130 {}
N -350 -10 -320 -10 {}
C {JK_flipflop.sym} -500 -280 0 0 {name=x1}
C {JK_flipflop.sym} -500 -160 0 0 {name=x2}
C {JK_flipflop.sym} -500 -40 0 0 {name=x3}
C {JK_flipflop.sym} -500 80 0 0 {name=x4}
C {devices/lab_pin.sym} -330 -310 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 -290 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -330 -190 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 -170 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -330 -70 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 -50 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -330 50 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -330 70 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -680 110 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -690 30 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -540 -390 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} -510 -390 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} -440 -390 0 0 {name=p13 lab=VDD}
C {devices/opin.sym} -370 -390 0 0 {name=p14 lab=Q0}
C {devices/opin.sym} -300 -390 0 0 {name=p27 lab=Q1}
C {devices/ipin.sym} -740 -390 0 0 {name=p30 lab=RST}
C {devices/lab_pin.sym} -670 -270 0 0 {name=p15 sig_type=std_logic lab=RST}
C {devices/opin.sym} -250 -390 0 0 {name=p16 lab=Q2}
C {devices/opin.sym} -180 -390 0 0 {name=p17 lab=Q3}
C {devices/lab_pin.sym} -340 -270 2 0 {name=p19 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} -340 -150 2 0 {name=p20 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} -330 -30 2 0 {name=p21 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} -320 90 2 0 {name=p22 sig_type=std_logic lab=Q3}
C {devices/lab_pin.sym} -660 -310 0 0 {name=p32 sig_type=std_logic lab=CLK}
C {and_2.sym} -860 50 0 0 {name=x5}
C {devices/noconn.sym} -330 -250 2 0 {name=l1}
C {devices/noconn.sym} -330 -130 2 0 {name=l2}
C {devices/noconn.sym} -320 -10 2 0 {name=l3}
