v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -20 370 -20 {
lab=Q0}
N 360 0 370 0 {
lab=VDD}
N 360 0 360 40 {
lab=VDD}
N 360 40 370 40 {
lab=VDD}
N -190 -40 -180 -40 {
lab=VDD}
N -190 -40 -190 0 {
lab=VDD}
N -190 0 -180 0 {
lab=VDD}
N 360 -40 360 0 {
lab=VDD}
N -190 30 -190 40 {
lab=VDD}
N -180 40 150 40 {
lab=VDD}
N -200 -20 -180 -20 {
lab=RST}
N 350 20 370 20 {
lab=RST}
N 670 -60 670 -20 {
lab=VSS}
N -190 -60 -180 -60 {
lab=CLK}
N -210 -20 -200 -20 {
lab=RST}
N -190 40 -180 40 {
lab=VDD}
N 120 -60 130 -60 {
lab=VSS}
N 120 -40 130 -40 {
lab=VDD}
N 120 -20 130 -20 {
lab=#net1}
N -200 20 140 20 {
lab=RST}
N -200 -20 -200 20 {
lab=RST}
N 340 -60 670 -60 {
lab=VSS}
N 340 -40 680 -40 {
lab=VDD}
N 680 -40 680 0 {
lab=VDD}
N 670 0 680 0 {
lab=VDD}
N 650 -80 650 -70 {
lab=VDD}
N 650 -70 650 -40 {
lab=VDD}
N 670 -80 670 -60 {
lab=VSS}
N 670 20 690 20 {
lab=#net2}
N -190 0 -190 30 {
lab=VDD}
N 1320 80 1340 80 {
lab=Q1}
N 690 20 690 60 {
lab=#net2}
N 690 60 810 60 {
lab=#net2}
N 880 0 880 10 {
lab=VDD}
N 790 110 880 110 {
lab=VSS}
N 790 -20 790 110 {
lab=VSS}
N 680 0 880 0 {
lab=VDD}
N 670 -20 790 -20 {
lab=VSS}
N 130 -20 160 -20 {
lab=#net1}
N 150 40 360 40 {
lab=VDD}
N 130 -40 140 -40 {
lab=VDD}
N 140 -70 140 -40 {
lab=VDD}
N 140 -70 230 -70 {
lab=VDD}
N 230 -70 330 -70 {
lab=VDD}
N 330 -70 330 -40 {
lab=VDD}
N 330 -40 340 -40 {
lab=VDD}
N 340 -80 340 -60 {
lab=VSS}
N 130 -80 340 -80 {
lab=VSS}
N 130 -80 130 -60 {
lab=VSS}
N 140 20 140 50 {
lab=RST}
N 140 50 350 50 {
lab=RST}
N 350 20 350 50 {
lab=RST}
N 150 30 230 30 {
lab=VSS}
N 150 -80 150 30 {
lab=VSS}
N 990 60 1020 60 {}
N 880 0 1330 0 {}
N 1330 0 1330 100 {}
N 1320 100 1330 100 {}
N 1320 -20 1320 60 {}
N 790 -20 1320 -20 {}
C {devices/lab_pin.sym} -190 -60 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -210 -20 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 350 -20 1 0 {name=p10 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 670 -80 1 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -80 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 10 -260 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 40 -260 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 110 -260 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 180 -260 0 0 {name=p18 lab=Q0}
C {devices/opin.sym} 280 -260 0 0 {name=p1 lab=Q1}
C {devices/ipin.sym} -60 -260 0 0 {name=p17 lab=RST}
C {devices/lab_pin.sym} 1340 80 2 0 {name=p11 sig_type=std_logic lab=Q1}
C {Diff_JK_flipflop.sym} -30 -30 0 0 {name=x1}
C {Diff_JK_flipflop.sym} 520 10 0 0 {name=x2}
C {GF_INV.sym} 230 -20 0 0 {name=x3}
C {GF_INV.sym} 880 60 0 0 {name=x4}
C {Load_BUFF.sym} 1170 80 0 0 {name=x5}
