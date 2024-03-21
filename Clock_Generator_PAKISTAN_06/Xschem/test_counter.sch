v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1860 -240 -1830 -240 {
lab=a}
N -2040 -270 -2010 -270 {
lab=D2_1}
N -2040 -250 -2010 -250 {
lab=a}
N -1930 -370 -1930 -340 {
lab=VDD}
N -1950 -170 -1950 -140 {
lab=VSS}
N -2040 -290 -2010 -290 {
lab=LD1}
N -1640 -290 -1620 -290 {
lab=LD3}
N -1540 -390 -1540 -340 {
lab=VDD}
N -1090 -250 -1050 -250 {
lab=c}
N -1470 -240 -1460 -240 {
lab=b}
N -1460 -240 -1460 -210 {
lab=b}
N -1260 -280 -1240 -280 {
lab=D2_3}
N -1640 -270 -1620 -270 {
lab=D2_2}
N -1410 -340 -1410 -290 {
lab=Q2}
N -1090 -290 -1050 -290 {
lab=Q3}
N -1670 -270 -1640 -270 {
lab=D2_2}
N -1160 -380 -1160 -350 {
lab=VDD}
N -1180 -180 -1180 -140 {
lab=VSS}
N -1650 -250 -1620 -250 {
lab=b}
N -1270 -260 -1240 -260 {
lab=c}
N -1260 -300 -1240 -300 {
lab=LD1}
N -1410 -290 -1410 -280 {
lab=Q2}
N -1560 -170 -1560 -130 {
lab=VSS}
N -1050 -320 -1050 -290 {
lab=Q3}
N -850 -270 -810 -270 {
lab=D2_4}
N -850 -250 -810 -250 {
lab=d}
N -730 -390 -730 -340 {
lab=VDD}
N -750 -170 -750 -130 {
lab=VSS}
N -480 -300 -430 -300 {
lab=#net1}
N -470 -280 -430 -280 {
lab=D2_5}
N -610 -340 -610 -280 {
lab=Q4}
N -610 -340 -590 -340 {
lab=Q4}
N -470 -260 -430 -260 {
lab=e}
N -280 -290 -240 -290 {
lab=Q5}
N -280 -250 -240 -250 {
lab=e}
N -350 -390 -350 -350 {
lab=VDD}
N -370 -180 -370 -150 {
lab=VSS}
N -1930 -170 -1930 -130 {
lab=G-CLK}
N -2060 -230 -2010 -230 {
lab=G-CLK}
N -1540 -170 -1540 -130 {
lab=G-CLK}
N -1860 -280 -1790 -280 {
lab=Q1}
N -1790 -280 -1790 -230 {
lab=Q1}
N -1790 -230 -1620 -230 {
lab=Q1}
N -1800 -330 -1800 -280 {
lab=Q1}
N -1470 -280 -1380 -280 {
lab=Q2}
N -1380 -280 -1380 -240 {
lab=Q2}
N -1380 -240 -1240 -240 {
lab=Q2}
N -850 -290 -810 -290 {
lab=LD3}
N -1160 -180 -1160 -140 {
lab=G-CLK}
N -660 -240 -620 -240 {
lab=d}
N -1050 -290 -990 -290 {
lab=Q3}
N -990 -290 -990 -230 {
lab=Q3}
N -990 -230 -810 -230 {
lab=Q3}
N -730 -170 -730 -130 {
lab=G-CLK}
N -660 -280 -580 -280 {
lab=Q4}
N -580 -280 -580 -240 {
lab=Q4}
N -580 -240 -430 -240 {
lab=Q4}
N -350 -180 -350 -140 {
lab=G-CLK}
N 180 -260 210 -260 {
lab=f}
N 0 -290 30 -290 {
lab=D2_6}
N 0 -270 30 -270 {
lab=f}
N 110 -390 110 -360 {
lab=VDD}
N 90 -190 90 -160 {
lab=VSS}
N 0 -310 30 -310 {
lab=LD1}
N 110 -190 110 -150 {
lab=G-CLK}
N -20 -250 30 -250 {
lab=Q5}
N 180 -300 250 -300 {
lab=Q6}
N 240 -350 240 -300 {
lab=Q6}
N -240 -290 -180 -290 {
lab=Q5}
N -180 -290 -180 -250 {
lab=Q5}
N -180 -250 -20 -250 {
lab=Q5}
N -220 -340 -220 -290 {
lab=Q5}
N 620 -270 650 -270 {
lab=g}
N 440 -300 470 -300 {
lab=D2_7}
N 440 -280 470 -280 {
lab=g}
N 550 -400 550 -370 {
lab=VDD}
N 530 -200 530 -170 {
lab=VSS}
N 440 -320 470 -320 {
lab=LD2}
N 550 -200 550 -160 {
lab=G-CLK}
N 420 -260 470 -260 {
lab=Q6}
N 620 -310 690 -310 {
lab=Q7}
N 690 -310 740 -310 {
lab=Q7}
N 250 -260 420 -260 {
lab=Q6}
N 250 -300 250 -260 {
lab=Q6}
C {devices/iopin.sym} -1930 -370 3 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -1950 -140 1 0 {name=p5 lab=VSS}
C {devices/lab_wire.sym} -1540 -370 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1560 -140 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -1050 -320 3 0 {name=p16 lab=Q3}
C {devices/opin.sym} -1800 -330 3 0 {name=p17 lab=Q1}
C {devices/ipin.sym} -2040 -270 0 0 {name=p18 lab=D2_1}
C {devices/ipin.sym} -1670 -270 0 0 {name=p19 lab=D2_2}
C {devices/lab_wire.sym} -1160 -360 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1180 -150 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -1260 -280 0 0 {name=p24 lab=D2_3}
C {devices/lab_wire.sym} -1840 -240 0 0 {name=p32 sig_type=std_logic lab=a}
C {devices/lab_wire.sym} -1640 -250 0 0 {name=p33 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} -1460 -220 0 0 {name=p34 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} -1070 -250 0 0 {name=p35 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} -1260 -260 0 0 {name=p36 sig_type=std_logic lab=c}
C {devices/ipin.sym} -2060 -230 0 0 {name=p37 lab=G-CLK}
C {devices/opin.sym} -1410 -340 3 0 {name=p39 lab=Q2}
C {devices/lab_wire.sym} -830 -250 0 0 {name=p20 sig_type=std_logic lab=d}
C {devices/ipin.sym} -850 -270 0 0 {name=p21 lab=D2_4}
C {devices/lab_wire.sym} -730 -370 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -750 -140 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -590 -340 0 0 {name=p43 lab=Q4}
C {devices/ipin.sym} -470 -280 0 0 {name=p51 lab=D2_5}
C {devices/opin.sym} -220 -340 3 0 {name=p52 lab=Q5}
C {devices/lab_wire.sym} -460 -260 0 0 {name=p53 sig_type=std_logic lab=e}
C {devices/lab_wire.sym} -260 -250 0 0 {name=p54 sig_type=std_logic lab=e}
C {devices/lab_wire.sym} -350 -360 0 0 {name=p56 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -370 -160 0 0 {name=p57 sig_type=std_logic lab=VSS}
C {MOD_DFF_latest.sym} -1860 -250 0 0 {name=x1}
C {devices/lab_wire.sym} -2020 -250 0 0 {name=p10 sig_type=std_logic lab=a}
C {devices/lab_wire.sym} -1930 -150 2 0 {name=p14 sig_type=std_logic lab=G-CLK}
C {MOD_DFF_latest.sym} -1470 -250 0 0 {name=x3}
C {devices/lab_wire.sym} -1540 -140 2 0 {name=p31 sig_type=std_logic lab=G-CLK}
C {MOD_DFF_latest.sym} -1090 -260 0 0 {name=x4}
C {MOD_DFF_latest.sym} -660 -250 0 0 {name=x2}
C {devices/lab_wire.sym} -1160 -160 2 0 {name=p62 sig_type=std_logic lab=G-CLK}
C {devices/lab_wire.sym} -630 -240 0 0 {name=p1 sig_type=std_logic lab=d}
C {MOD_DFF_latest.sym} -280 -260 0 0 {name=x10}
C {devices/lab_wire.sym} -730 -150 2 0 {name=p42 sig_type=std_logic lab=G-CLK}
C {devices/lab_wire.sym} -350 -160 2 0 {name=p63 sig_type=std_logic lab=G-CLK}
C {devices/opin.sym} 240 -350 3 0 {name=p49 lab=Q6}
C {devices/ipin.sym} 0 -290 0 0 {name=p50 lab=D2_6}
C {devices/lab_wire.sym} 200 -260 0 0 {name=p58 sig_type=std_logic lab=f}
C {MOD_DFF_latest.sym} 180 -270 0 0 {name=x11}
C {devices/lab_wire.sym} 20 -270 0 0 {name=p65 sig_type=std_logic lab=f}
C {devices/lab_wire.sym} 110 -170 2 0 {name=p66 sig_type=std_logic lab=G-CLK}
C {devices/opin.sym} 740 -310 0 0 {name=p69 lab=Q7}
C {devices/ipin.sym} 440 -300 0 0 {name=p70 lab=D2_7}
C {devices/lab_wire.sym} 640 -270 0 0 {name=p71 sig_type=std_logic lab=g}
C {MOD_DFF_latest.sym} 620 -280 0 0 {name=x12}
C {devices/lab_wire.sym} 460 -280 0 0 {name=p72 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} 550 -180 2 0 {name=p73 sig_type=std_logic lab=G-CLK}
C {devices/lab_wire.sym} 110 -380 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 90 -170 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 550 -380 0 0 {name=p67 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 530 -180 0 0 {name=p68 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 10 -310 0 0 {name=p3 sig_type=std_logic lab=LD1}
C {devices/lab_wire.sym} -1250 -300 0 0 {name=p7 sig_type=std_logic lab=LD1}
C {devices/lab_wire.sym} 450 -320 0 0 {name=p40 sig_type=std_logic lab=LD2}
C {devices/lab_wire.sym} -840 -290 0 0 {name=p99 sig_type=std_logic lab=LD3}
C {devices/ipin.sym} -2040 -290 0 0 {name=p2 lab=LD1}
C {devices/ipin.sym} -1640 -290 0 0 {name=p6 lab=LD3}
C {devices/ipin.sym} -480 -300 0 0 {name=p8 lab=LD2}
