v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -70 20 -70 {
lab=Q0}
N 320 -30 360 -30 {
lab=Q1}
N 660 10 700 10 {
lab=Q2}
N 1000 50 1040 50 {
lab=Q3}
N 1030 70 1040 70 {
lab=VDD}
N 1030 70 1030 110 {
lab=VDD}
N 1030 110 1040 110 {
lab=VDD}
N 690 30 700 30 {
lab=VDD}
N 690 30 690 70 {
lab=VDD}
N 690 70 700 70 {
lab=VDD}
N 350 -10 360 -10 {
lab=VDD}
N 350 -10 350 30 {
lab=VDD}
N 350 30 360 30 {
lab=VDD}
N 10 -50 20 -50 {
lab=VDD}
N 10 -50 10 -10 {
lab=VDD}
N 10 -10 20 -10 {
lab=VDD}
N -330 -90 -320 -90 {
lab=VDD}
N -330 -90 -330 -50 {
lab=VDD}
N -330 -50 -320 -50 {
lab=VDD}
N -10 -90 1350 -90 {
lab=VDD}
N 1350 -90 1350 70 {
lab=VDD}
N 1340 70 1350 70 {
lab=VDD}
N 1030 -90 1030 70 {
lab=VDD}
N 690 -90 690 30 {
lab=VDD}
N 350 -90 350 -10 {
lab=VDD}
N 10 -90 10 -50 {
lab=VDD}
N -330 -50 -330 -30 {
lab=VDD}
N -330 -30 -330 -20 {
lab=VDD}
N -330 -20 -330 -10 {
lab=VDD}
N -320 -10 10 -10 {
lab=VDD}
N -340 -70 -320 -70 {
lab=RST}
N -340 -70 -340 90 {
lab=RST}
N -330 90 1040 90 {
lab=RST}
N 680 50 700 50 {
lab=RST}
N 680 50 680 90 {
lab=RST}
N 340 10 360 10 {
lab=RST}
N 340 10 340 90 {
lab=RST}
N 0 -30 20 -30 {
lab=RST}
N 0 -30 0 90 {
lab=RST}
N 320 -50 350 -50 {
lab=VDD}
N 660 -10 690 -10 {
lab=VDD}
N 1000 30 1030 30 {
lab=VDD}
N -10 -110 1360 -110 {
lab=VSS}
N 1360 -110 1360 50 {
lab=VSS}
N 1340 50 1360 50 {
lab=VSS}
N 1000 -110 1000 10 {
lab=VSS}
N 660 -110 660 -30 {
lab=VSS}
N 320 -110 320 -70 {
lab=VSS}
N -330 -110 -320 -110 {
lab=CLK}
N -350 -70 -340 -70 {
lab=RST}
N 1340 -130 1340 -120 {
lab=VDD}
N 1340 -120 1340 -90 {
lab=VDD}
N 1360 -130 1360 -110 {
lab=VSS}
N 1340 90 1370 90 {
lab=Q4}
N -330 -10 -320 -10 {
lab=VDD}
N -20 -110 -10 -110 {
lab=VSS}
N -20 -90 -10 -90 {
lab=VDD}
N -20 -70 -10 -70 {
lab=Q0}
N -340 90 -330 90 {
lab=RST}
C {JK_flipflop.sym} -170 -80 0 0 {name=x1}
C {JK_flipflop.sym} 170 -40 0 0 {name=x2}
C {JK_flipflop.sym} 510 0 0 0 {name=x3}
C {JK_flipflop.sym} 850 40 0 0 {name=x4}
C {JK_flipflop.sym} 1190 80 0 0 {name=x5}
C {devices/ipin.sym} 280 -180 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 310 -180 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 380 -180 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 450 -180 0 0 {name=p18 lab=Q0}
C {devices/lab_pin.sym} -330 -110 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -350 -70 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 1360 -130 1 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1340 -130 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 550 -180 0 0 {name=p1 lab=Q1}
C {devices/opin.sym} 650 -180 0 0 {name=p5 lab=Q2}
C {devices/opin.sym} 750 -180 0 0 {name=p8 lab=Q3}
C {devices/opin.sym} 850 -180 0 0 {name=p9 lab=Q4}
C {devices/lab_pin.sym} 0 -70 1 0 {name=p10 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 340 -30 1 0 {name=p11 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 680 10 1 0 {name=p13 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 1020 50 1 0 {name=p14 sig_type=std_logic lab=Q3}
C {devices/lab_pin.sym} 1370 90 2 0 {name=p16 sig_type=std_logic lab=Q4}
C {devices/ipin.sym} 210 -180 0 0 {name=p17 lab=RST}
