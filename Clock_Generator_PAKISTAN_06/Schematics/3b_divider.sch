v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -260 300 -260 {
lab=P0}
N -10 -290 30 -290 {
lab=LD}
N -330 -290 -330 -250 {
lab=VDD}
N -310 -50 -310 -20 {
lab=VSS}
N -450 -170 -400 -170 {
lab=CLK}
N -450 -190 -400 -190 {
lab=D2_1}
N -450 -150 -400 -150 {
lab=D2_2}
N -450 -130 -400 -130 {
lab=D2_3}
N -230 -190 -190 -190 {
lab=LD}
N -230 -170 -190 -170 {
lab=Q2}
N -230 -150 -190 -150 {
lab=Q1}
N -230 -130 -190 -130 {
lab=Q3}
N -10 -310 30 -310 {
lab=CLK}
N 270 -280 300 -280 {
lab=CLK}
N 110 -370 110 -340 {
lab=VDD}
N 110 -150 110 -120 {
lab=VSS}
N 370 -370 370 -340 {
lab=VDD}
N 370 -190 370 -160 {
lab=VSS}
N 240 -260 240 -230 {
lab=P0}
N 440 -270 490 -270 {
lab=P1}
N 180 30 230 30 {
lab=Q1}
N 180 50 230 50 {
lab=D2_2}
N 400 30 430 30 {
lab=Q2}
N 410 50 430 50 {
lab=D2_3}
N 630 30 650 30 {
lab=Q3}
N 630 50 650 50 {
lab=D2_1}
N 540 50 570 50 {
lab=b}
N 280 -50 280 -20 {
lab=VDD}
N 280 110 280 140 {
lab=VSS}
N 480 -50 480 -20 {
lab=VDD}
N 480 110 480 140 {
lab=VSS}
N 700 -50 700 -20 {
lab=VDD}
N 700 110 700 140 {
lab=VSS}
N 760 50 790 50 {
lab=c}
N 340 50 360 50 {
lab=a}
N 470 220 500 220 {
lab=a}
N 470 240 500 240 {
lab=b}
N 470 260 500 260 {
lab=c}
N 550 140 550 170 {
lab=VDD}
N 550 310 550 340 {
lab=VSS}
N 610 250 640 250 {
lab=#net1}
N 880 240 920 240 {
lab=P2}
N 920 240 990 240 {
lab=P2}
N 840 -170 880 -170 {
lab=P0}
N 840 -150 880 -150 {
lab=P2}
N 930 -250 930 -220 {
lab=VDD}
N 930 -100 930 -70 {
lab=VSS}
N 990 -170 1040 -170 {
lab=#net2}
N 1100 -260 1100 -230 {
lab=VDD}
N 1100 -100 1100 -70 {
lab=VSS}
N 1180 -170 1220 -170 {
lab=OUT1}
N 640 250 680 250 {
lab=#net1}
N 680 210 680 250 {
lab=#net1}
N 680 210 730 210 {
lab=#net1}
N 810 120 810 160 {
lab=VDD}
N 810 350 810 390 {
lab=VSS}
N 700 190 730 190 {
lab=CLK}
C {3b_DC.sym} -250 -140 0 0 {name=x1}
C {DFF.sym} 180 -290 0 0 {name=x2}
C {ned_DFF.sym} 450 -260 0 0 {name=x3}
C {devices/iopin.sym} -310 -20 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} -330 -290 3 0 {name=p2 lab=VDD}
C {devices/ipin.sym} -450 -190 0 0 {name=p3 lab=D2_1}
C {devices/ipin.sym} -450 -170 0 0 {name=p4 lab=CLK}
C {devices/ipin.sym} -450 -150 0 0 {name=p5 lab=D2_2}
C {devices/ipin.sym} -450 -130 0 0 {name=p6 lab=D2_3}
C {devices/opin.sym} -190 -190 0 0 {name=p7 lab=LD}
C {devices/lab_wire.sym} 110 -350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 110 -130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 0 -310 0 0 {name=p10 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 280 -280 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 370 -360 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 370 -170 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 240 -230 1 0 {name=p14 lab=P0}
C {devices/opin.sym} 490 -270 0 0 {name=p15 lab=P1}
C {devices/lab_wire.sym} 0 -290 0 0 {name=p16 sig_type=std_logic lab=LD}
C {XNOR.sym} 580 50 0 0 {name=x4}
C {XNOR.sym} 380 50 0 0 {name=x5}
C {XNOR.sym} 800 50 0 0 {name=x6}
C {devices/lab_wire.sym} 280 -40 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 480 -30 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 700 -40 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 280 130 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 130 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 700 130 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -190 -170 0 0 {name=p23 lab=Q2}
C {devices/opin.sym} -190 -150 0 0 {name=p24 lab=Q1}
C {devices/opin.sym} -190 -130 0 0 {name=p25 lab=Q3}
C {devices/lab_wire.sym} 200 30 0 0 {name=p26 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 420 30 0 0 {name=p27 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 640 30 0 0 {name=p28 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 640 50 0 0 {name=p29 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 420 50 0 0 {name=p30 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 200 50 0 0 {name=p31 sig_type=std_logic lab=D2_2}
C {3_inp_AND.sym} 650 240 0 0 {name=x7}
C {devices/lab_wire.sym} 550 150 0 0 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 550 330 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 50 0 0 {name=p34 sig_type=std_logic lab=a}
C {devices/lab_wire.sym} 560 50 0 0 {name=p35 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} 780 50 0 0 {name=p36 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} 480 220 0 0 {name=p37 sig_type=std_logic lab=a}
C {devices/lab_wire.sym} 480 240 0 0 {name=p38 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} 480 260 0 0 {name=p39 sig_type=std_logic lab=c}
C {devices/opin.sym} 990 240 0 0 {name=p43 lab=P2}
C {OR.sym} 1030 -150 0 0 {name=x9}
C {devices/lab_wire.sym} 860 -170 0 0 {name=p44 sig_type=std_logic lab=P0}
C {devices/lab_wire.sym} 860 -150 0 0 {name=p45 sig_type=std_logic lab=P2}
C {devices/lab_wire.sym} 930 -230 0 0 {name=p46 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 930 -80 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {div_by_2.sym} 1190 -150 0 0 {name=x10}
C {devices/lab_wire.sym} 1100 -240 0 0 {name=p48 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1100 -80 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 1210 -170 0 0 {name=p50 lab=OUT1}
C {devices/lab_wire.sym} 810 150 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 810 370 0 0 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 710 190 0 0 {name=p42 sig_type=std_logic lab=CLK}
C {DFF.sym} 880 210 0 0 {name=x8}
