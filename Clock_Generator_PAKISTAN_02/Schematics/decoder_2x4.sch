v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -890 450 -870 {
lab=VDD}
N 450 -760 450 -740 {
lab=VSS}
N 380 -820 400 -820 {
lab=IN1}
N 560 -820 580 -820 {
lab=IN1B}
N 450 -670 450 -650 {
lab=VDD}
N 450 -540 450 -520 {
lab=VSS}
N 380 -600 400 -600 {
lab=IN2}
N 560 -600 580 -600 {
lab=IN2B}
N 1090 -820 1110 -820 {
lab=VDD}
N 760 -820 790 -820 {
lab=IN2B}
N 1090 -850 1090 -840 {
lab=VSS}
N 1090 -860 1090 -850 {
lab=VSS}
N 1090 -800 1110 -800 {
lab=D0}
N 1090 -610 1110 -610 {
lab=VDD}
N 760 -630 790 -630 {
lab=IN1}
N 760 -610 790 -610 {
lab=IN2B}
N 1090 -640 1090 -630 {
lab=VSS}
N 1090 -650 1090 -640 {
lab=VSS}
N 1090 -590 1110 -590 {
lab=D1}
N 1090 -410 1110 -410 {
lab=VDD}
N 760 -430 790 -430 {
lab=IN1B}
N 760 -410 790 -410 {
lab=IN2}
N 1090 -440 1090 -430 {
lab=VSS}
N 1090 -450 1090 -440 {
lab=VSS}
N 1090 -390 1110 -390 {
lab=D2}
N 1100 -190 1120 -190 {
lab=VDD}
N 770 -210 800 -210 {
lab=IN1}
N 770 -190 800 -190 {
lab=IN2}
N 1100 -220 1100 -210 {
lab=VSS}
N 1100 -230 1100 -220 {
lab=VSS}
N 1100 -170 1120 -170 {
lab=D3}
N 770 -840 790 -840 {
lab=IN1B}
N 760 -840 770 -840 {
lab=IN1B}
C {devices/lab_pin.sym} 450 -890 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 -740 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 450 -670 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 -520 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1110 -820 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1090 -860 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1110 -610 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1090 -650 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1110 -410 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1090 -450 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1120 -190 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1100 -230 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -820 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 380 -600 0 0 {name=p14 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 570 -820 2 0 {name=p15 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 570 -600 2 0 {name=p16 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 760 -840 2 1 {name=p17 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 760 -820 2 1 {name=p18 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 770 -210 0 0 {name=p19 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 770 -190 0 0 {name=p20 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 760 -630 0 0 {name=p21 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 760 -610 2 1 {name=p22 sig_type=std_logic lab=IN2B}
C {devices/lab_pin.sym} 760 -430 2 1 {name=p23 sig_type=std_logic lab=IN1B}
C {devices/lab_pin.sym} 760 -410 0 0 {name=p24 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 1110 -800 2 0 {name=p25 sig_type=std_logic lab=D0}
C {devices/lab_pin.sym} 1110 -590 2 0 {name=p26 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} 1110 -390 2 0 {name=p27 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} 1120 -170 2 0 {name=p28 sig_type=std_logic lab=D3}
C {devices/ipin.sym} 530 -970 0 0 {name=p29 lab=IN2}
C {devices/ipin.sym} 600 -970 0 0 {name=p30 lab=IN1}
C {devices/iopin.sym} 630 -970 0 0 {name=p31 lab=VSS
}
C {devices/iopin.sym} 700 -970 0 0 {name=p32 lab=VDD}
C {devices/opin.sym} 770 -970 0 0 {name=p33 lab=D0}
C {devices/opin.sym} 830 -970 0 0 {name=p34 lab=D1}
C {devices/opin.sym} 900 -970 0 0 {name=p35 lab=D2}
C {devices/opin.sym} 970 -970 0 0 {name=p36 lab=D3}
C {inv_my_ibr.sym} -40 -690 0 0 {name=x1}
C {inv_my_ibr.sym} -40 -470 0 0 {name=x2}
C {and_2_ibr..sym} 940 -820 0 0 {name=x3}
C {and_2_ibr..sym} 940 -610 0 0 {name=x4}
C {and_2_ibr..sym} 940 -410 0 0 {name=x5}
C {and_2_ibr..sym} 950 -190 0 0 {name=x6}
