v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -2130 -930 -2080 -930 {
lab=Q1}
N -2130 -910 -2080 -910 {
lab=D2_2}
N -1910 -930 -1880 -930 {
lab=Q2}
N -1900 -910 -1880 -910 {
lab=D2_3}
N -1680 -930 -1660 -930 {
lab=Q3}
N -1680 -910 -1660 -910 {
lab=D2_4}
N -1770 -910 -1740 -910 {
lab=b}
N -2030 -1010 -2030 -980 {
lab=VDD}
N -2030 -850 -2030 -820 {
lab=VSS}
N -1830 -1010 -1830 -980 {
lab=VDD}
N -1830 -850 -1830 -820 {
lab=VSS}
N -1610 -1010 -1610 -980 {
lab=VDD}
N -1610 -850 -1610 -820 {
lab=VSS}
N -1550 -910 -1520 -910 {
lab=c}
N -1970 -910 -1950 -910 {
lab=a}
N -1630 -670 -1600 -670 {
lab=a}
N -1630 -650 -1600 -650 {
lab=b}
N -1630 -630 -1600 -630 {
lab=c}
N -1550 -750 -1550 -720 {
lab=VDD}
N -970 -420 -900 -420 {
lab=P2}
N -1420 -930 -1370 -930 {
lab=Q4}
N -1420 -910 -1370 -910 {
lab=D2_5}
N -1320 -1010 -1320 -980 {
lab=VDD}
N -1320 -850 -1320 -820 {
lab=VSS}
N -1260 -910 -1240 -910 {
lab=d}
N -1160 -930 -1110 -930 {
lab=Q5}
N -1160 -910 -1110 -910 {
lab=D2_6}
N -1060 -1010 -1060 -980 {
lab=VDD}
N -1060 -850 -1060 -820 {
lab=VSS}
N -1000 -910 -980 -910 {
lab=e}
N -850 -920 -800 -920 {
lab=Q6}
N -850 -900 -800 -900 {
lab=D2_7}
N -750 -1000 -750 -970 {
lab=VDD}
N -750 -840 -750 -810 {
lab=VSS}
N -690 -900 -670 -900 {
lab=f}
N -560 -920 -510 -920 {
lab=Q7}
N -560 -900 -510 -900 {
lab=D2_1}
N -460 -1000 -460 -970 {
lab=VDD}
N -460 -840 -460 -810 {
lab=VSS}
N -400 -900 -380 -900 {
lab=g}
N -1550 -580 -1550 -550 {
lab=VSS}
N -1740 -400 -1710 -400 {
lab=d}
N -1740 -380 -1710 -380 {
lab=e}
N -1650 -490 -1650 -460 {
lab=VDD}
N -1650 -330 -1650 -300 {
lab=VSS}
N -1490 -200 -1490 -160 {
lab=VDD}
N -1490 -30 -1490 20 {
lab=VSS}
N -1600 -100 -1550 -100 {
lab=g}
N -1600 -80 -1550 -80 {
lab=f}
N -1350 -480 -1320 -480 {
lab=#net1}
N -1350 -460 -1320 -460 {
lab=#net2}
N -1270 -560 -1270 -530 {
lab=VDD}
N -1270 -390 -1270 -360 {
lab=VSS}
N -1490 -640 -1430 -640 {
lab=#net1}
N -1430 -640 -1430 -480 {
lab=#net1}
N -1430 -480 -1350 -480 {
lab=#net1}
N -1500 -400 -1430 -400 {
lab=#net2}
N -1430 -460 -1430 -400 {
lab=#net2}
N -1430 -460 -1350 -460 {
lab=#net2}
N -1330 -440 -1320 -440 {
lab=#net3}
N -1210 -450 -1150 -450 {
lab=#net4}
N -1330 -440 -1330 -100 {
lab=#net3}
N -1590 -400 -1500 -400 {
lab=#net2}
N -1430 -100 -1330 -100 {
lab=#net3}
N -1040 -540 -1040 -500 {
lab=VDD}
N -1040 -310 -1040 -270 {
lab=VSS}
N -1160 -470 -1120 -470 {
lab=CLK}
N -1150 -450 -1120 -450 {
lab=#net4}
C {XNOR.sym} -1730 -910 0 0 {name=x4}
C {XNOR.sym} -1930 -910 0 0 {name=x5}
C {XNOR.sym} -1510 -910 0 0 {name=x6}
C {devices/lab_wire.sym} -1830 -990 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1610 -1000 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1830 -830 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1550 -560 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -2110 -930 0 0 {name=p27 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} -1890 -930 0 0 {name=p28 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} -1670 -930 0 0 {name=p29 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} -1670 -910 0 0 {name=p30 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} -1890 -910 0 0 {name=p31 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} -2110 -910 0 0 {name=p32 sig_type=std_logic lab=D2_2}
C {3_inp_AND.sym} -1450 -650 0 0 {name=x7}
C {devices/lab_wire.sym} -1550 -740 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1950 -910 0 0 {name=p35 sig_type=std_logic lab=a}
C {devices/lab_wire.sym} -1750 -910 0 0 {name=p36 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} -1530 -910 0 0 {name=p37 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} -1620 -670 0 0 {name=p38 sig_type=std_logic lab=a}
C {devices/opin.sym} -900 -420 0 0 {name=p43 lab=P2}
C {XNOR.sym} -1220 -910 0 0 {name=x2}
C {devices/lab_wire.sym} -1320 -1000 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1320 -830 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1400 -930 0 0 {name=p47 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} -1400 -910 0 0 {name=p48 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} -1240 -910 0 0 {name=p49 sig_type=std_logic lab=d}
C {XNOR.sym} -960 -910 0 0 {name=x3}
C {devices/lab_wire.sym} -1060 -1000 0 0 {name=p50 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1060 -830 0 0 {name=p51 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1140 -930 0 0 {name=p52 sig_type=std_logic lab=Q5}
C {devices/lab_wire.sym} -1140 -910 0 0 {name=p53 sig_type=std_logic lab=D2_6}
C {devices/lab_wire.sym} -980 -910 0 0 {name=p54 sig_type=std_logic lab=e}
C {XNOR.sym} -650 -900 0 0 {name=x9}
C {devices/lab_wire.sym} -750 -990 0 0 {name=p55 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -750 -820 0 0 {name=p56 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -830 -920 0 0 {name=p57 sig_type=std_logic lab=Q6}
C {devices/lab_wire.sym} -830 -900 0 0 {name=p58 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} -670 -900 0 0 {name=p59 sig_type=std_logic lab=f}
C {XNOR.sym} -360 -900 0 0 {name=x10}
C {devices/lab_wire.sym} -460 -990 0 0 {name=p60 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -460 -820 0 0 {name=p61 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -540 -920 0 0 {name=p62 sig_type=std_logic lab=Q7}
C {devices/lab_wire.sym} -380 -900 0 0 {name=p64 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} -1650 -310 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1650 -480 0 0 {name=p70 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1730 -400 0 0 {name=p71 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} -1730 -380 0 0 {name=p72 sig_type=std_logic lab=e}
C {devices/lab_wire.sym} -1580 -80 0 0 {name=p75 sig_type=std_logic lab=f}
C {devices/lab_wire.sym} -1490 -170 0 0 {name=p76 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1490 0 0 0 {name=p77 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1270 -370 0 0 {name=p80 sig_type=std_logic lab=VSS}
C {3_inp_AND.sym} -1170 -460 0 0 {name=x15}
C {devices/lab_wire.sym} -1270 -550 0 0 {name=p81 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1620 -650 0 0 {name=p94 sig_type=std_logic lab=b}
C {devices/lab_wire.sym} -1620 -630 0 0 {name=p95 sig_type=std_logic lab=c}
C {devices/lab_wire.sym} -1580 -100 0 0 {name=p39 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} -540 -900 0 0 {name=p11 sig_type=std_logic lab=D2_1}
C {AND.sym} -1560 -380 0 0 {name=x11}
C {AND.sym} -1400 -80 0 0 {name=x12}
C {devices/lab_wire.sym} -1040 -530 0 0 {name=p66 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1040 -280 0 0 {name=p67 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1150 -470 0 0 {name=p65 sig_type=std_logic lab=CLK}
C {DFF.sym} -970 -450 0 0 {name=x13}
C {devices/lab_wire.sym} -1610 -830 0 0 {name=p83 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -2030 -1010 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -2030 -820 1 0 {name=p2 lab=VSS}
