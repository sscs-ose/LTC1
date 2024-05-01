v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -420 130 -400 {
lab=VDD}
N 130 -290 130 -270 {
lab=VSS}
N 50 -350 80 -350 {
lab=IN1}
N 240 -350 270 -350 {
lab=IN1B}
N 130 -220 130 -200 {
lab=VDD}
N 130 -90 130 -70 {
lab=VSS}
N 50 -150 80 -150 {
lab=IN2}
N 240 -150 270 -150 {
lab=IN2B}
N 130 -20 130 0 {
lab=VDD}
N 130 110 130 130 {
lab=VSS}
N 50 50 80 50 {
lab=IN3}
N 240 50 270 50 {
lab=IN3B}
N 770 -340 790 -340 {
lab=VDD}
N 770 -320 790 -320 {
lab=D0}
N 770 -360 790 -360 {
lab=VSS}
N 450 -360 470 -360 {
lab=IN3B}
N 450 -320 470 -320 {
lab=IN2B}
N 450 -340 470 -340 {
lab=IN1B}
N 770 -270 790 -270 {
lab=VDD}
N 770 -250 790 -250 {
lab=D1}
N 770 -290 790 -290 {
lab=VSS}
N 450 -290 470 -290 {
lab=IN3}
N 450 -250 470 -250 {
lab=IN1B}
N 450 -270 470 -270 {
lab=IN2B}
N 770 -200 790 -200 {
lab=VDD}
N 770 -180 790 -180 {
lab=D2}
N 770 -220 790 -220 {
lab=VSS}
N 450 -220 470 -220 {
lab=IN3B}
N 450 -180 470 -180 {
lab=IN2}
N 450 -200 470 -200 {
lab=IN1B}
N 780 -130 800 -130 {
lab=VDD}
N 780 -110 800 -110 {
lab=D3}
N 780 -150 800 -150 {
lab=VSS}
N 460 -150 480 -150 {
lab=IN3}
N 460 -110 480 -110 {
lab=IN2}
N 460 -130 480 -130 {
lab=IN1B}
N 1270 -350 1290 -350 {
lab=VDD}
N 1270 -330 1290 -330 {
lab=D4}
N 1270 -370 1290 -370 {
lab=VSS}
N 950 -370 970 -370 {
lab=IN3B}
N 950 -330 970 -330 {
lab=IN1}
N 950 -350 970 -350 {
lab=IN2B}
N 1270 -280 1290 -280 {
lab=VDD}
N 1270 -260 1290 -260 {
lab=D5}
N 1270 -300 1290 -300 {
lab=VSS}
N 950 -300 970 -300 {
lab=IN3}
N 950 -260 970 -260 {
lab=IN1}
N 950 -280 970 -280 {
lab=IN2B}
N 1270 -210 1290 -210 {
lab=VDD}
N 1270 -190 1290 -190 {
lab=D6}
N 1270 -230 1290 -230 {
lab=VSS}
N 950 -230 970 -230 {
lab=IN3B}
N 950 -190 970 -190 {
lab=IN2}
N 950 -210 970 -210 {
lab=IN1}
N 1270 -140 1290 -140 {
lab=VDD}
N 1270 -120 1290 -120 {
lab=D7}
N 1270 -160 1290 -160 {
lab=VSS}
N 950 -160 970 -160 {
lab=IN3}
N 950 -120 970 -120 {
lab=IN2}
N 950 -140 970 -140 {
lab=IN1}
C {devices/lab_pin.sym} 50 -350 0 0 {name=p1 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 130 -420 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 -270 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 -350 0 1 {name=p4 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 50 -150 0 0 {name=p5 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 130 -220 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 -70 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 -150 0 1 {name=p8 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 50 50 0 0 {name=p9 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 130 -20 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 130 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 270 50 0 1 {name=p12 sig_type=std_logic lab=IN3B}
C {devices/lab_pin.sym} 790 -340 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 -360 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 790 -320 0 1 {name=p15 sig_type=std_logic lab=D0}
C {devices/lab_pin.sym} 450 -340 0 0 {name=p16 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 450 -320 0 0 {name=p17 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 450 -360 0 0 {name=p18 sig_type=std_logic lab=IN3B
}
C {devices/lab_pin.sym} 790 -270 2 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 -290 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 790 -250 0 1 {name=p21 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} 790 -200 2 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 -220 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 790 -180 0 1 {name=p27 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} 800 -130 2 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 800 -150 2 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -110 0 1 {name=p33 sig_type=std_logic lab=D3}
C {devices/lab_pin.sym} 1290 -350 2 0 {name=p37 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1290 -370 2 0 {name=p38 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1290 -330 0 1 {name=p39 sig_type=std_logic lab=D4}
C {devices/lab_pin.sym} 1290 -280 2 0 {name=p43 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1290 -300 2 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1290 -260 0 1 {name=p45 sig_type=std_logic lab=D5}
C {devices/lab_pin.sym} 1290 -210 2 0 {name=p49 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1290 -230 2 0 {name=p50 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1290 -190 0 1 {name=p51 sig_type=std_logic lab=D6}
C {devices/lab_pin.sym} 1290 -140 2 0 {name=p55 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1290 -160 2 0 {name=p56 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1290 -120 0 1 {name=p57 sig_type=std_logic lab=D7}
C {devices/lab_pin.sym} 450 -250 0 0 {name=p22 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 450 -270 0 0 {name=p23 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 450 -290 0 0 {name=p24 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 450 -180 0 0 {name=p28 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 450 -200 0 0 {name=p29 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 450 -220 0 0 {name=p30 sig_type=std_logic lab=IN3B}
C {devices/lab_pin.sym} 460 -130 0 0 {name=p34 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 460 -110 0 0 {name=p35 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 460 -150 0 0 {name=p36 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 950 -330 0 0 {name=p40 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 950 -350 0 0 {name=p41 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 950 -370 0 0 {name=p42 sig_type=std_logic lab=IN3B
}
C {devices/lab_pin.sym} 950 -260 0 0 {name=p46 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 950 -280 0 0 {name=p47 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 950 -300 0 0 {name=p48 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 950 -190 0 0 {name=p52 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 950 -210 0 0 {name=p53 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 950 -230 0 0 {name=p54 sig_type=std_logic lab=IN3B}
C {devices/lab_pin.sym} 950 -140 0 0 {name=p58 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 950 -120 0 0 {name=p59 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 950 -160 0 0 {name=p60 sig_type=std_logic lab=IN3}
C {devices/ipin.sym} 380 -440 0 0 {name=p61 lab=IN2}
C {devices/ipin.sym} 450 -440 0 0 {name=p62 lab=IN1}
C {devices/iopin.sym} 480 -440 0 0 {name=p63 lab=VSS
}
C {devices/iopin.sym} 550 -440 0 0 {name=p64 lab=VDD}
C {devices/opin.sym} 620 -440 0 0 {name=p65 lab=D0}
C {devices/opin.sym} 680 -440 0 0 {name=p66 lab=D1}
C {devices/opin.sym} 750 -440 0 0 {name=p67 lab=D2}
C {devices/opin.sym} 820 -440 0 0 {name=p68 lab=D3}
C {devices/opin.sym} 890 -440 0 0 {name=p69 lab=D4}
C {devices/opin.sym} 950 -440 0 0 {name=p70 lab=D5}
C {devices/opin.sym} 1020 -440 0 0 {name=p71 lab=D6}
C {devices/opin.sym} 1090 -440 0 0 {name=p72 lab=D7}
C {devices/ipin.sym} 300 -440 0 0 {name=p73 lab=IN3}
C {and_3_ibr.sym} 620 -340 0 0 {name=x1}
C {and_3_ibr.sym} 620 -270 0 0 {name=x2}
C {and_3_ibr.sym} 620 -200 0 0 {name=x3}
C {and_3_ibr.sym} 630 -130 0 0 {name=x4}
C {and_3_ibr.sym} 1120 -140 0 0 {name=x5}
C {and_3_ibr.sym} 1120 -210 0 0 {name=x6}
C {and_3_ibr.sym} 1120 -280 0 0 {name=x7}
C {and_3_ibr.sym} 1120 -350 0 0 {name=x8}
C {inv_my_ibr.sym} -360 -220 0 0 {name=x9}
C {inv_my_ibr.sym} -360 -20 0 0 {name=x10}
C {inv_my_ibr.sym} -360 180 0 0 {name=x11}
