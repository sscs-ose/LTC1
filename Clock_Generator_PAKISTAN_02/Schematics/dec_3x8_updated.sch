v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -420 240 -400 {
lab=VDD}
N 240 -290 240 -270 {
lab=VSS}
N 160 -350 190 -350 {
lab=IN1}
N 350 -350 380 -350 {
lab=IN1B}
N 240 -220 240 -200 {
lab=VDD}
N 240 -90 240 -70 {
lab=VSS}
N 160 -150 190 -150 {
lab=IN2}
N 350 -150 380 -150 {
lab=IN2B}
N 240 -20 240 0 {
lab=VDD}
N 240 110 240 130 {
lab=VSS}
N 160 50 190 50 {
lab=IN3}
N 350 50 380 50 {
lab=IN3B}
N 720 -550 720 -530 {
lab=VDD}
N 800 -460 820 -460 {
lab=D0}
N 730 -400 730 -380 {
lab=VSS}
N 660 -480 680 -480 {
lab=IN1B}
N 660 -460 680 -460 {
lab=IN2B}
N 660 -440 680 -440 {
lab=IN3B}
N 720 -350 720 -330 {
lab=VDD}
N 800 -260 820 -260 {
lab=D1}
N 730 -200 730 -180 {
lab=VSS}
N 660 -280 680 -280 {
lab=IN1B}
N 660 -260 680 -260 {
lab=IN2B}
N 660 -240 680 -240 {
lab=IN3}
N 720 -120 720 -100 {
lab=VDD}
N 800 -30 820 -30 {
lab=D2}
N 730 30 730 50 {
lab=VSS}
N 660 -50 680 -50 {
lab=IN1B}
N 660 -30 680 -30 {
lab=IN2}
N 660 -10 680 -10 {
lab=IN3B}
N 720 140 720 160 {
lab=VDD}
N 800 230 820 230 {
lab=D3}
N 730 290 730 310 {
lab=VSS}
N 660 210 680 210 {
lab=IN1B}
N 660 230 680 230 {
lab=IN2}
N 660 250 680 250 {
lab=IN3}
N 1130 -520 1130 -500 {
lab=VDD}
N 1210 -430 1230 -430 {
lab=D4}
N 1140 -370 1140 -350 {
lab=VSS}
N 1070 -450 1090 -450 {
lab=IN1}
N 1070 -430 1090 -430 {
lab=IN2B}
N 1070 -410 1090 -410 {
lab=IN3B}
N 1130 -320 1130 -300 {
lab=VDD}
N 1210 -230 1230 -230 {
lab=D5}
N 1140 -170 1140 -150 {
lab=VSS}
N 1070 -250 1090 -250 {
lab=IN1}
N 1070 -230 1090 -230 {
lab=IN2B}
N 1070 -210 1090 -210 {
lab=IN3}
N 1130 -90 1130 -70 {
lab=VDD}
N 1210 0 1230 0 {
lab=D6}
N 1140 60 1140 80 {
lab=VSS}
N 1070 -20 1090 -20 {
lab=IN1}
N 1070 0 1090 0 {
lab=IN2}
N 1070 20 1090 20 {
lab=IN3B}
N 1130 170 1130 190 {
lab=VDD}
N 1210 260 1230 260 {
lab=D7}
N 1140 320 1140 340 {
lab=VSS}
N 1070 240 1090 240 {
lab=IN1}
N 1070 260 1090 260 {
lab=IN2}
N 1070 280 1090 280 {
lab=IN3}
C {inv_my.sym} -250 -220 0 0 {name=x1}
C {devices/lab_pin.sym} 160 -350 0 0 {name=p1 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 240 -420 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -270 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -350 0 1 {name=p4 sig_type=std_logic lab=IN1B}
C {inv_my.sym} -250 -20 0 0 {name=x2}
C {devices/lab_pin.sym} 160 -150 0 0 {name=p5 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 240 -220 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -70 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -150 0 1 {name=p8 sig_type=std_logic lab=IN2B}
C {inv_my.sym} -250 180 0 0 {name=x3}
C {devices/lab_pin.sym} 160 50 0 0 {name=p9 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 240 -20 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 130 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 50 0 1 {name=p12 sig_type=std_logic lab=IN3B}
C {and_3.sym} 620 -340 0 0 {name=x4}
C {devices/lab_pin.sym} 720 -550 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 -380 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -460 0 1 {name=p15 sig_type=std_logic lab=D0}
C {devices/lab_pin.sym} 660 -480 0 0 {name=p16 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 660 -460 0 0 {name=p17 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 660 -440 0 0 {name=p18 sig_type=std_logic lab=IN3B
}
C {and_3.sym} 620 -140 0 0 {name=x5}
C {devices/lab_pin.sym} 720 -350 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 -180 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -260 0 1 {name=p21 sig_type=std_logic lab=D1}
C {and_3.sym} 620 90 0 0 {name=x6}
C {devices/lab_pin.sym} 720 -120 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 50 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -30 0 1 {name=p27 sig_type=std_logic lab=D2}
C {and_3.sym} 620 350 0 0 {name=x7}
C {devices/lab_pin.sym} 720 140 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 310 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 230 0 1 {name=p33 sig_type=std_logic lab=D3}
C {and_3.sym} 1030 -310 0 0 {name=x8}
C {devices/lab_pin.sym} 1130 -520 0 0 {name=p37 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1140 -350 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1230 -430 0 1 {name=p39 sig_type=std_logic lab=D4}
C {and_3.sym} 1030 -110 0 0 {name=x9}
C {devices/lab_pin.sym} 1130 -320 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1140 -150 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1230 -230 0 1 {name=p45 sig_type=std_logic lab=D5}
C {and_3.sym} 1030 120 0 0 {name=x10}
C {devices/lab_pin.sym} 1130 -90 0 0 {name=p49 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1140 80 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1230 0 0 1 {name=p51 sig_type=std_logic lab=D6}
C {and_3.sym} 1030 380 0 0 {name=x11}
C {devices/lab_pin.sym} 1130 170 0 0 {name=p55 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1140 340 0 0 {name=p56 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1230 260 0 1 {name=p57 sig_type=std_logic lab=D7}
C {devices/lab_pin.sym} 660 -280 0 0 {name=p22 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 660 -260 0 0 {name=p23 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 660 -240 0 0 {name=p24 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 660 -30 0 0 {name=p28 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 660 -50 0 0 {name=p29 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 660 -10 0 0 {name=p30 sig_type=std_logic lab=IN3B}
C {devices/lab_pin.sym} 660 210 0 0 {name=p34 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 660 230 0 0 {name=p35 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 660 250 0 0 {name=p36 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 1070 -450 0 0 {name=p40 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 1070 -430 0 0 {name=p41 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 1070 -410 0 0 {name=p42 sig_type=std_logic lab=IN3B
}
C {devices/lab_pin.sym} 1070 -250 0 0 {name=p46 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 1070 -230 0 0 {name=p47 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 1070 -210 0 0 {name=p48 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 1070 0 0 0 {name=p52 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 1070 -20 0 0 {name=p53 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 1070 20 0 0 {name=p54 sig_type=std_logic lab=IN3B}
C {devices/lab_pin.sym} 1070 240 0 0 {name=p58 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 1070 260 0 0 {name=p59 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 1070 280 0 0 {name=p60 sig_type=std_logic lab=IN3}
C {devices/ipin.sym} 360 -610 0 0 {name=p61 lab=IN2}
C {devices/ipin.sym} 430 -610 0 0 {name=p62 lab=IN1}
C {devices/iopin.sym} 460 -610 0 0 {name=p63 lab=VSS
}
C {devices/iopin.sym} 530 -610 0 0 {name=p64 lab=VDD}
C {devices/opin.sym} 600 -610 0 0 {name=p65 lab=D0}
C {devices/opin.sym} 660 -610 0 0 {name=p66 lab=D1}
C {devices/opin.sym} 730 -610 0 0 {name=p67 lab=D2}
C {devices/opin.sym} 800 -610 0 0 {name=p68 lab=D3}
C {devices/opin.sym} 870 -610 0 0 {name=p69 lab=D4}
C {devices/opin.sym} 930 -610 0 0 {name=p70 lab=D5}
C {devices/opin.sym} 1000 -610 0 0 {name=p71 lab=D6}
C {devices/opin.sym} 1070 -610 0 0 {name=p72 lab=D7}
C {devices/ipin.sym} 280 -610 0 0 {name=p73 lab=IN3}
