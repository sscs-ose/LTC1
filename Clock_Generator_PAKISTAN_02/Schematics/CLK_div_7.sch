v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -140 -220 -140 {
lab=#net1}
N -280 -160 -270 -160 {
lab=#net2}
N -270 -160 -270 -100 {
lab=#net2}
N -250 -100 -220 -100 {
lab=#net2}
N 80 -160 100 -160 {
lab=VSS}
N 80 -140 100 -140 {
lab=VDD}
N 80 -40 100 -40 {
lab=VSS}
N 80 -20 100 -20 {
lab=VDD}
N 80 90 100 90 {
lab=VSS}
N 80 110 100 110 {
lab=VDD}
N -230 -120 -220 -120 {
lab=RST}
N -230 -120 -230 130 {
lab=RST}
N -230 130 -220 130 {
lab=RST}
N -230 -0 -220 -0 {
lab=RST}
N -240 -160 -220 -160 {
lab=CLK}
N -240 -160 -240 -40 {
lab=CLK}
N -240 -40 -220 -40 {
lab=CLK}
N -240 -40 -240 90 {
lab=CLK}
N -240 90 -220 90 {
lab=CLK}
N -260 20 -220 20 {
lab=#net3}
N -280 -140 -260 -140 {
lab=#net1}
N -270 -100 -250 -100 {
lab=#net2}
N -280 20 -260 20 {
lab=#net3}
N 80 20 90 20 {
lab=#net4}
N 90 -60 90 20 {
lab=#net4}
N -590 -60 90 -60 {
lab=#net4}
N -590 -160 -590 -60 {
lab=#net4}
N -590 -160 -580 -160 {
lab=#net4}
N 80 150 90 150 {
lab=#net5}
N 90 70 90 150 {
lab=#net5}
N 90 40 90 70 {
lab=#net5}
N -600 40 90 40 {
lab=#net5}
N -600 -180 -600 40 {
lab=#net5}
N -600 -180 -580 -180 {
lab=#net5}
N 80 0 100 0 {
lab=Q1}
N 100 0 100 50 {
lab=Q1}
N -580 50 100 50 {
lab=Q1}
N -580 80 -580 100 {
lab=Q1}
N -250 150 -220 150 {
lab=Q1}
N -250 50 -250 150 {
lab=Q1}
N 80 -120 90 -120 {
lab=Q0}
N 90 -120 90 -80 {
lab=Q0}
N -580 -80 90 -80 {
lab=Q0}
N -580 -80 -580 -20 {
lab=Q0}
N 80 130 110 130 {
lab=Q2}
N 110 60 110 130 {
lab=Q2}
N -590 60 110 60 {
lab=Q2}
N -590 0 -590 60 {
lab=Q2}
N -590 0 -580 -0 {
lab=Q2}
N -610 -20 -580 -20 {
lab=Q0}
N -610 -20 -610 90 {
lab=Q0}
N -610 120 -580 120 {
lab=Q0}
N -280 140 -260 140 {
lab=#net6}
N -260 110 -260 140 {
lab=#net6}
N -260 110 -220 110 {
lab=#net6}
N -580 50 -580 80 {
lab=Q1}
N -610 90 -610 120 {
lab=Q0}
N -250 -20 -220 -20 {
lab=Q0}
N -250 -80 -250 -20 {
lab=Q0}
N -280 -20 -260 -20 {
lab=VSS}
N -280 0 -260 0 {
lab=VDD}
N -280 100 -270 100 {
lab=VSS}
N -280 120 -270 120 {
lab=VDD}
N -280 -180 -260 -180 {
lab=VSS}
N 360 -10 380 -10 {
lab=#net7}
N 80 -100 340 -100 {
lab=#net8}
N 340 -100 380 -100 {
lab=#net8}
N 380 -100 380 -30 {
lab=#net8}
N 250 -80 250 -60 {
lab=VDD}
N -240 -70 180 -70 {
lab=CLK}
N 180 -70 180 -10 {
lab=CLK}
N 250 40 250 60 {
lab=VSS}
N 380 10 380 130 {
lab=Q2}
N 110 130 380 130 {
lab=Q2}
N 680 10 720 10 {
lab=#net9}
N 100 50 150 50 {
lab=Q1}
N 150 50 150 80 {
lab=Q1}
N 150 80 720 80 {
lab=Q1}
N 720 30 720 80 {
lab=Q1}
N 680 -30 700 -30 {
lab=VSS}
N 680 -10 700 -10 {
lab=VDD}
N 1020 50 1050 50 {
lab=#net10}
N 380 130 1050 130 {
lab=Q2}
N 1050 70 1050 130 {
lab=Q2}
N 1020 10 1040 10 {
lab=VSS}
N 1020 30 1040 30 {
lab=VDD}
N 1350 50 1370 50 {
lab=VSS}
N 1350 70 1370 70 {
lab=VDD}
N 1350 90 1370 90 {
lab=Vdiv7}
C {devices/ipin.sym} -90 -320 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} -60 -320 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 10 -320 0 0 {name=p13 lab=VDD}
C {devices/opin.sym} 80 -320 0 0 {name=p14 lab=Q0}
C {devices/opin.sym} 150 -320 0 0 {name=p27 lab=Q1}
C {devices/ipin.sym} -290 -320 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 330 -320 0 0 {name=p18 lab=Vdiv7}
C {devices/opin.sym} 200 -320 0 0 {name=p16 lab=Q2}
C {JK_flipflop.sym} -70 -130 0 0 {name=x1}
C {or_2.sym} -430 -160 0 0 {name=x2}
C {devices/lab_pin.sym} 100 -160 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 -140 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {JK_flipflop.sym} -70 -10 0 0 {name=x3}
C {devices/lab_pin.sym} 100 -40 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 -20 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {JK_flipflop.sym} -70 120 0 0 {name=x4}
C {devices/lab_pin.sym} 100 90 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 110 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {or_2.sym} -430 0 0 0 {name=x5}
C {devices/lab_pin.sym} -260 -20 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -260 0 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -270 100 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -270 120 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -260 -180 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {GF_INV.sym} 250 -10 0 0 {name=x7}
C {nor_3.sym} 530 -10 0 0 {name=x8}
C {devices/lab_pin.sym} 700 -30 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 700 -10 2 0 {name=p20 sig_type=std_logic lab=VDD}
C {or_2.sym} 1200 70 0 0 {name=x10}
C {devices/lab_pin.sym} 1040 10 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1040 30 2 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1370 50 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1370 70 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1370 90 2 0 {name=p25 sig_type=std_logic lab=Vdiv7}
C {devices/lab_pin.sym} 90 -120 2 0 {name=p26 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 100 0 2 0 {name=p28 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 110 130 3 0 {name=p29 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 250 60 2 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -80 2 0 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -230 -120 0 0 {name=p33 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 180 -70 1 0 {name=p34 sig_type=std_logic lab=CLK}
C {and_2.sym} -430 120 0 0 {name=x6}
C {and_2.sym} 870 30 0 0 {name=x9}
C {devices/lab_pin.sym} -270 -160 2 0 {name=p17 sig_type=std_logic lab=VDD}
