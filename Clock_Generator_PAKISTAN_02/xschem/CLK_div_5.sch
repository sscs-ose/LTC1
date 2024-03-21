v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -140 -50 -140 {
lab=CLK}
N -60 -140 -60 -20 {
lab=CLK}
N -60 -20 -50 -20 {
lab=CLK}
N -60 -20 -60 100 {
lab=CLK}
N -60 100 -50 100 {
lab=CLK}
N -70 140 -50 140 {
lab=RST}
N -70 20 -70 140 {
lab=RST}
N -70 20 -50 20 {
lab=RST}
N -70 -100 -50 -100 {
lab=RST}
N -70 -100 -70 20 {
lab=RST}
N -80 -0 -50 0 {
lab=Q0}
N -80 -0 -80 40 {
lab=Q0}
N -80 40 -50 40 {
lab=Q0}
N -100 120 -50 120 {
lab=#net1}
N 250 -100 260 -100 {
lab=Q0}
N 260 -100 260 -60 {
lab=Q0}
N -410 -60 260 -60 {
lab=Q0}
N -410 -60 -410 100 {
lab=Q0}
N -410 100 -400 100 {
lab=Q0}
N 250 20 260 20 {
lab=Q1}
N 260 20 260 60 {
lab=Q1}
N -400 60 260 60 {
lab=Q1}
N -400 60 -400 80 {
lab=Q1}
N 250 160 270 160 {
lab=#net2}
N 270 -50 270 160 {
lab=#net2}
N -80 -50 270 -50 {
lab=#net2}
N -80 -120 -80 -50 {
lab=#net2}
N -80 -120 -50 -120 {
lab=#net2}
N -90 -80 -50 -80 {
lab=VDD}
N -90 -80 -90 100 {
lab=VDD}
N -100 100 -90 100 {
lab=VDD}
N -90 160 -50 160 {
lab=VDD}
N -90 100 -90 160 {
lab=VDD}
N -100 80 -80 80 {
lab=VSS}
N 1280 100 1320 100 {
lab=#net3}
N 1500 100 1530 100 {
lab=Vdiv5}
N 1390 30 1390 50 {
lab=VDD}
N 1390 150 1390 170 {
lab=VSS}
N 610 60 640 60 {
lab=#net4}
N 980 10 980 60 {
lab=#net5}
N 980 -10 980 10 {
lab=#net5}
N 940 80 980 80 {
lab=#net6}
N 250 140 780 140 {
lab=Q2}
N 260 20 310 20 {
lab=Q1}
N 310 40 310 70 {
lab=CLK}
N -60 70 310 70 {
lab=CLK}
N 260 -70 310 -70 {
lab=Q0}
N 310 -50 310 20 {
lab=Q1}
N 250 -140 270 -140 {
lab=VSS}
N 250 -120 270 -120 {
lab=VDD}
N 610 -70 630 -70 {
lab=VSS}
N 610 -50 630 -50 {
lab=VDD}
N 610 20 630 20 {
lab=VSS}
N 610 40 630 40 {
lab=VDD}
N 250 -20 260 -20 {
lab=VSS}
N 250 0 260 0 {
lab=VDD}
N 250 100 260 100 {
lab=VSS}
N 250 120 260 120 {
lab=VDD}
N 1280 60 1300 60 {
lab=VSS}
N 1280 80 1300 80 {
lab=VDD}
N 980 -30 980 -10 {
lab=#net5}
N 680 -30 980 -30 {
lab=#net5}
N 980 100 980 140 {
lab=Q2}
N 940 60 960 60 {
lab=VSS}
N 940 100 960 100 {
lab=VDD}
N 610 -30 680 -30 {
lab=#net5}
N 780 140 980 140 {
lab=Q2}
N -100 -0 -80 -0 {
lab=Q0}
N -100 -60 -100 -0 {
lab=Q0}
C {JK_flipflop.sym} 100 10 0 0 {name=x1}
C {JK_flipflop.sym} 100 130 0 0 {name=x2}
C {JK_flipflop.sym} 100 -110 0 0 {name=x3}
C {nor_3.sym} 1130 80 0 0 {name=x17}
C {GF_INV.sym} 1390 100 0 0 {name=x18}
C {devices/ipin.sym} 260 -220 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} 290 -220 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 360 -220 0 0 {name=p13 lab=VDD}
C {devices/opin.sym} 430 -220 0 0 {name=p14 lab=Q0}
C {devices/opin.sym} 500 -220 0 0 {name=p27 lab=Q1}
C {devices/ipin.sym} 180 -220 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 680 -220 0 0 {name=p18 lab=Vdiv5}
C {devices/opin.sym} 550 -220 0 0 {name=p16 lab=Q2}
C {devices/lab_pin.sym} 270 -140 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 -120 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 630 -70 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -50 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 630 20 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 40 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -20 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 0 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 100 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 120 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1300 60 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1300 80 2 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1390 30 2 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1390 170 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1530 100 2 0 {name=p24 sig_type=std_logic lab=Vdiv5}
C {devices/lab_pin.sym} -80 80 2 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -90 160 3 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -70 140 3 0 {name=p28 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -60 -140 0 0 {name=p29 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 260 -100 2 0 {name=p31 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 260 60 2 0 {name=p32 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 300 140 3 0 {name=p33 sig_type=std_logic lab=Q2}
C {and_2.sym} -250 100 0 0 {name=x7}
C {and_2.sym} 460 -50 0 0 {name=x4}
C {and_2.sym} 460 40 0 0 {name=x5}
C {Buffer_Delayed.sym} 790 80 0 0 {name=x6}
C {devices/lab_pin.sym} 960 60 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 960 100 2 0 {name=p34 sig_type=std_logic lab=VDD}
