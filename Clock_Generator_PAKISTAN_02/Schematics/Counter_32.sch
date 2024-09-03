v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -80 390 -80 {
lab=Q1}
N 690 -40 720 -40 {
lab=Q2}
N 1020 0 1050 0 {
lab=Q3}
N 1350 40 1360 40 {
lab=Q4}
N -290 -120 -280 -120 {
lab=CLK}
N 710 40 1050 40 {
lab=CLK}
N 710 0 710 40 {
lab=CLK}
N 710 0 720 0 {
lab=CLK}
N -280 0 710 0 {
lab=CLK}
N 380 -40 390 -40 {
lab=CLK}
N 380 -40 380 0 {
lab=CLK}
N 50 -80 60 -80 {
lab=CLK}
N 50 -80 50 0 {
lab=CLK}
N 1040 20 1050 20 {
lab=VDD}
N 1040 20 1040 60 {
lab=VDD}
N 1040 60 1050 60 {
lab=VDD}
N 700 -20 720 -20 {
lab=VDD}
N 700 -20 700 20 {
lab=VDD}
N 700 20 720 20 {
lab=VDD}
N 370 -60 390 -60 {
lab=VDD}
N 370 -60 370 -20 {
lab=VDD}
N 370 -20 390 -20 {
lab=VDD}
N 30 -100 60 -100 {
lab=VDD}
N 30 -100 30 -60 {
lab=VDD}
N 30 -60 60 -60 {
lab=VDD}
N 20 -140 1360 -140 {
lab=VDD}
N 1360 -140 1360 20 {
lab=VDD}
N 1350 20 1360 20 {
lab=VDD}
N 1020 -20 1030 -20 {
lab=VDD}
N 1030 -140 1030 -20 {
lab=VDD}
N 690 -60 700 -60 {
lab=VDD}
N 700 -140 700 -60 {
lab=VDD}
N 360 -100 370 -100 {
lab=VDD}
N 370 -140 370 -100 {
lab=VDD}
N 20 -160 1370 -160 {
lab=VSS}
N 1370 -160 1370 0 {
lab=VSS}
N 1350 0 1370 0 {
lab=VSS}
N 1020 -160 1020 -40 {
lab=VSS}
N 690 -160 690 -80 {
lab=VSS}
N 360 -160 360 -120 {
lab=VSS}
N 20 -120 60 -120 {
lab=Q0}
N 370 -100 370 -60 {
lab=VDD}
N 700 -60 700 -20 {
lab=VDD}
N 1030 -20 1040 -20 {
lab=VDD}
N 1040 -20 1040 20 {
lab=VDD}
N -290 0 -280 0 {
lab=CLK}
N 1340 -175 1340 -165 {
lab=VSS}
N 1360 -175 1360 -165 {
lab=VDD}
N 1340 -165 1340 -160 {
lab=VSS}
N 1360 -165 1360 -140 {
lab=VDD}
N -290 -140 -280 -140 {
lab=VDD}
N -300 -160 -280 -160 {
lab=CLK}
N -295 -140 -290 -140 {
lab=VDD}
N -295 -140 -295 -100 {
lab=VDD}
N -295 -100 -280 -100 {
lab=VDD}
N -295 -100 -295 -80 {
lab=VDD}
N -295 -80 30 -80 {
lab=VDD}
N 30 -140 30 -100 {
lab=VDD}
N 40 -135 40 -120 {
lab=Q0}
N 380 -95 380 -80 {
lab=Q1}
N 710 -60 710 -40 {
lab=Q2}
N 1045 -20 1045 0 {
lab=Q3}
N 1360 40 1380 40 {
lab=Q4}
N -290 -120 -290 0 {
lab=CLK}
N -300 -120 -290 -120 {
lab=CLK}
C {JK_flipflop.sym} -130 -130 0 0 {name=x1}
C {JK_flipflop.sym} 210 -90 0 0 {name=x2}
C {JK_flipflop.sym} 540 -50 0 0 {name=x3}
C {JK_flipflop.sym} 870 -10 0 0 {name=x4}
C {JK_flipflop.sym} 1200 30 0 0 {name=x5}
C {devices/lab_wire.sym} 1340 -175 1 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1360 -175 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 285 -195 0 0 {name=p3 lab=CLK}
C {devices/iopin.sym} 315 -195 0 0 {name=p4 lab=VSS
}
C {devices/iopin.sym} 385 -195 0 0 {name=p5 lab=VDD}
C {devices/opin.sym} 455 -195 0 0 {name=p18 lab=Q0}
C {devices/lab_pin.sym} -300 -160 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/opin.sym} 550 -195 0 0 {name=p6 lab=Q1}
C {devices/opin.sym} 645 -195 0 0 {name=p9 lab=Q2}
C {devices/opin.sym} 740 -195 0 0 {name=p10 lab=Q3}
C {devices/opin.sym} 830 -195 0 0 {name=p11 lab=Q4}
C {devices/lab_pin.sym} 40 -135 1 0 {name=p12 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 380 -95 1 0 {name=p13 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 710 -60 1 0 {name=p14 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 1045 -20 1 0 {name=p16 sig_type=std_logic lab=Q3}
C {devices/lab_pin.sym} 1380 40 2 0 {name=p17 sig_type=std_logic lab=Q4}
C {devices/ipin.sym} 215 -195 0 0 {name=p1 lab=RST}
C {devices/lab_pin.sym} -300 -120 0 0 {name=p2 sig_type=std_logic lab=RST}
