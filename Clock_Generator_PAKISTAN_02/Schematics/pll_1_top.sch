v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 570 -560 570 -540 {
lab=VDD}
N 570 -410 570 -390 {
lab=VSS}
N 480 -500 500 -500 {
lab=Vref}
N 480 -450 500 -450 {
lab=Vdiv}
N 640 -450 660 -450 {
lab=PD}
N 400 -500 460 -500 {
lab=Vref}
N 460 -500 480 -500 {
lab=Vref}
N 660 -500 750 -500 {
lab=PU}
N 660 -450 750 -450 {
lab=PD}
N 480 -450 480 -320 {
lab=Vdiv}
N 480 -220 480 -190 {
lab=Vdiv}
N 490 -190 780 -190 {
lab=Vdiv}
N 480 -320 480 -220 {
lab=Vdiv}
N 480 -190 490 -190 {
lab=Vdiv}
N 640 -500 660 -500 {
lab=PU}
N 780 -190 950 -190 {
lab=Vdiv}
N 1280 -230 1930 -230 {
lab=VCO_op}
N 2090 -480 2090 -460 {
lab=VCO_op}
N 1250 -230 1270 -230 {
lab=VCO_op}
N 1270 -230 1280 -230 {
lab=VCO_op}
N 1030 -820 1030 -800 {
lab=VDD}
N 1030 -640 1030 -620 {
lab=VSS}
N 920 -730 940 -730 {
lab=PU}
N 920 -710 940 -710 {
lab=PD}
N 1000 -820 1000 -800 {
lab=IPD+}
N 1000 -640 1000 -620 {
lab=IPD_}
N 1570 -480 1610 -480 {
lab=VCNTL}
N 2090 -500 2090 -480 {
lab=VCO_op}
N 2070 -500 2090 -500 {
lab=VCO_op}
N 2070 -480 2070 -450 {
lab=VCO_op_bar}
N 950 -210 950 -190 {
lab=Vdiv}
N 940 -230 950 -230 {
lab=VDD}
N 930 -230 940 -230 {
lab=VDD}
N 930 -250 950 -250 {
lab=VSS}
N 1250 -250 1280 -250 {
lab=RST_DIV}
N 1740 -520 1770 -520 {
lab=VDD_VCO}
N 1610 -480 1770 -480 {
lab=VCNTL}
N 1390 -460 1390 -440 {
lab=VSS}
N 1400 -580 1400 -570 {
lab=VDD}
N 1400 -580 1420 -580 {
lab=VDD}
N 1200 -640 1220 -640 {
lab=S2}
N 1200 -660 1220 -660 {
lab=VDD}
N 1370 -670 1400 -670 {
lab=VSS}
N 1220 -660 1230 -660 {
lab=VDD}
N 1180 -720 1360 -720 {
lab=VCNTL}
N 1280 -610 1280 -580 {
lab=LF_ext}
N 1370 -580 1370 -570 {
lab=#net1}
N 1320 -580 1370 -580 {
lab=#net1}
N 1320 -610 1320 -580 {
lab=#net1}
N 1300 -720 1300 -710 {
lab=VCNTL}
N 1570 -710 1570 -480 {
lab=VCNTL}
N 1570 -720 1570 -710 {
lab=VCNTL}
N 1360 -720 1570 -720 {
lab=VCNTL}
N 1110 -720 1180 -720 {
lab=VCNTL}
N 750 -730 920 -730 {
lab=PU}
N 750 -730 750 -500 {
lab=PU}
N 750 -450 830 -450 {
lab=PD}
N 830 -710 830 -450 {
lab=PD}
N 830 -710 920 -710 {
lab=PD}
N 1730 -460 1770 -460 {
lab=VSS}
N 1730 -500 1770 -500 {
lab=EN}
N 2090 -460 2090 -230 {
lab=VCO_op}
N 1930 -230 2090 -230 {
lab=VCO_op}
C {devices/lab_pin.sym} 570 -560 2 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 570 -390 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -190 3 0 {name=p25 sig_type=std_logic lab=Vdiv
}
C {devices/lab_pin.sym} 2090 -480 2 0 {name=p26 sig_type=std_logic lab=VCO_op
}
C {devices/lab_pin.sym} 2070 -450 2 0 {name=p31 sig_type=std_logic lab=VCO_op_bar
}
C {devices/lab_pin.sym} 690 -500 1 0 {name=p37 sig_type=std_logic lab=PU}
C {devices/lab_pin.sym} 690 -450 1 0 {name=p40 sig_type=std_logic lab=PD}
C {devices/lab_wire.sym} 1030 -620 2 0 {name=p68 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1000 -810 0 0 {name=p70 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 1000 -620 0 0 {name=p71 sig_type=std_logic lab=IPD_}
C {devices/lab_pin.sym} 410 -500 0 0 {name=p76 sig_type=std_logic lab=Vref
}
C {devices/lab_wire.sym} 930 -250 0 0 {name=p78 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 930 -230 0 0 {name=p79 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1270 -250 2 0 {name=p80 sig_type=std_logic lab=RST_DIV}
C {devices/lab_pin.sym} 1030 -820 2 0 {name=p81 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1740 -520 0 0 {name=p89 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_wire.sym} 1390 -440 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1460 -720 2 0 {name=p20 sig_type=std_logic lab=VCNTL}
C {devices/lab_wire.sym} 1420 -580 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1400 -670 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1200 -660 2 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1200 -640 1 1 {name=p2 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} 1730 -460 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1730 -500 0 0 {name=p7 sig_type=std_logic lab=EN}
C {PFD.sym} 280 -290 0 0 {name=x3}
C {CP.sym} 450 -520 0 0 {name=x5}
C {a2x1mux.sym} 1460 -290 3 0 {name=x1}
C {LF.sym} 1530 -410 0 1 {name=x4}
C {devices/iopin.sym} 610 -1100 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 680 -1100 0 0 {name=p13 lab=VDD}
C {devices/opin.sym} 760 -1100 0 0 {name=p18 lab=Vco_op}
C {devices/ipin.sym} 450 -1100 0 0 {name=p8 lab=S2}
C {devices/ipin.sym} 320 -1100 0 0 {name=p11 lab=Vref}
C {devices/opin.sym} 870 -1100 0 0 {name=p14 lab=Vco_op_bar}
C {devices/iopin.sym} 840 -1010 0 0 {name=p15 lab=VDD_VCO}
C {devices/ipin.sym} 760 -1010 0 0 {name=p16 lab=RST_DIV}
C {devices/iopin.sym} 400 -990 0 0 {name=p9 lab=IPD+
}
C {devices/iopin.sym} 470 -990 0 0 {name=p10 lab=IPD_}
C {devices/ipin.sym} 540 -1100 0 0 {name=p17 lab=EN}
C {devices/lab_pin.sym} 1280 -580 3 0 {name=p3 sig_type=std_logic lab=LF_ext}
C {devices/iopin.sym} 280 -990 0 0 {name=p19 lab=LP_ext
}
C {CLK_div_110.sym} 1100 -230 0 1 {name=x6}
C {VCO.sym} 1920 -490 0 0 {name=x2}
