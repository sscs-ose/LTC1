v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -160 -360 -160 {
lab=Q0}
N -60 -120 -20 -120 {
lab=Q1}
N 280 -80 320 -80 {
lab=Q2}
N 620 -40 660 -40 {
lab=Q3}
N 650 -20 660 -20 {
lab=VDD}
N 650 -20 650 20 {
lab=VDD}
N 650 20 660 20 {
lab=VDD}
N 310 -60 320 -60 {
lab=VDD}
N 310 -60 310 -20 {
lab=VDD}
N 310 -20 320 -20 {
lab=VDD}
N -30 -100 -20 -100 {
lab=VDD}
N -30 -100 -30 -60 {
lab=VDD}
N -30 -60 -20 -60 {
lab=VDD}
N -370 -140 -360 -140 {
lab=VDD}
N -370 -140 -370 -100 {
lab=VDD}
N -370 -100 -360 -100 {
lab=VDD}
N -710 -180 -700 -180 {
lab=VDD}
N -710 -180 -710 -140 {
lab=VDD}
N -710 -140 -700 -140 {
lab=VDD}
N -390 -180 970 -180 {
lab=VDD}
N 970 -180 970 -20 {
lab=VDD}
N 960 -20 970 -20 {
lab=VDD}
N 650 -180 650 -20 {
lab=VDD}
N 310 -180 310 -60 {
lab=VDD}
N -30 -180 -30 -100 {
lab=VDD}
N -370 -180 -370 -140 {
lab=VDD}
N -710 -140 -710 -120 {
lab=VDD}
N -710 -120 -710 -110 {
lab=VDD}
N -710 -110 -710 -100 {
lab=VDD}
N -700 -100 -370 -100 {
lab=VDD}
N -720 -160 -700 -160 {
lab=RST}
N -720 -160 -720 0 {
lab=RST}
N -710 0 660 0 {
lab=RST}
N 300 -40 320 -40 {
lab=RST}
N 300 -40 300 0 {
lab=RST}
N -40 -80 -20 -80 {
lab=RST}
N -40 -80 -40 0 {
lab=RST}
N -380 -120 -360 -120 {
lab=RST}
N -380 -120 -380 0 {
lab=RST}
N -60 -140 -30 -140 {
lab=VDD}
N 280 -100 310 -100 {
lab=VDD}
N 620 -60 650 -60 {
lab=VDD}
N -390 -200 980 -200 {
lab=VSS}
N 980 -200 980 -40 {
lab=VSS}
N 960 -40 980 -40 {
lab=VSS}
N 620 -200 620 -80 {
lab=VSS}
N 280 -200 280 -120 {
lab=VSS}
N -60 -200 -60 -160 {
lab=VSS}
N -710 -200 -700 -200 {
lab=CLK}
N -730 -160 -720 -160 {
lab=RST}
N 960 -220 960 -210 {
lab=VDD}
N 960 -210 960 -180 {
lab=VDD}
N 980 -220 980 -200 {
lab=VSS}
N 960 0 990 0 {
lab=Q4}
N -720 0 -710 0 {
lab=RST}
N -710 -100 -700 -100 {
lab=VDD}
N -400 -200 -390 -200 {
lab=VSS}
N -400 -180 -390 -180 {
lab=VDD}
N -400 -160 -390 -160 {
lab=Q0}
N -390 40 -50 40 {
lab=Q1}
N -390 60 290 60 {
lab=Q2}
N -390 80 630 80 {
lab=Q3}
N -390 100 980 100 {
lab=Q4}
N -390 -160 -390 20 {
lab=Q0}
N -50 -120 -50 40 {
lab=Q1}
N 290 -80 290 60 {
lab=Q2}
N 630 -40 630 80 {
lab=Q3}
N 980 0 980 100 {
lab=Q4}
N -690 0 -690 60 {
lab=RST}
N -730 80 -720 80 {
lab=VDD}
N -720 80 -690 80 {
lab=VDD}
N -730 100 -710 100 {
lab=VSS}
N -710 100 -690 100 {
lab=VSS}
C {JK_flipflop.sym} -550 -170 0 0 {name=x1}
C {JK_flipflop.sym} -210 -130 0 0 {name=x2}
C {JK_flipflop.sym} 130 -90 0 0 {name=x3}
C {JK_flipflop.sym} 470 -50 0 0 {name=x4}
C {JK_flipflop.sym} 810 -10 0 0 {name=x5}
C {devices/ipin.sym} -100 -270 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} -70 -270 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 0 -270 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 70 -270 0 0 {name=p18 lab=Q0}
C {devices/lab_pin.sym} -710 -200 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -730 -160 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 980 -220 1 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 960 -220 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 170 -270 0 0 {name=p1 lab=Q1}
C {devices/opin.sym} 270 -270 0 0 {name=p5 lab=Q2}
C {devices/opin.sym} 370 -270 0 0 {name=p8 lab=Q3}
C {devices/opin.sym} 470 -270 0 0 {name=p9 lab=Q4}
C {devices/lab_pin.sym} -380 -160 1 0 {name=p10 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} -40 -120 1 0 {name=p11 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 300 -80 1 0 {name=p13 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 640 -40 1 0 {name=p14 sig_type=std_logic lab=Q3}
C {devices/lab_pin.sym} 990 0 2 0 {name=p16 sig_type=std_logic lab=Q4}
C {devices/lab_pin.sym} -730 100 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -730 80 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {nand_5.sym} -540 60 2 0 {name=x6}
