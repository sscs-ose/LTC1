v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 100 -280 100 -180 {}
L 4 100 -180 100 -140 {}
L 4 140 -280 140 -140 {}
L 4 100 -280 140 -280 {}
L 4 100 -140 140 -140 {}
N 340 -250 370 -250 {
lab=VDD}
N 340 -220 370 -220 {
lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Junbeom Park"}
C {std_cells/dffqnq_1.sym} 700 -760 0 0 {name=x2 VDD=VDD VNW=VNW VPW=VPW VSS=VSS}
C {devices/lab_pin.sym} 610 -750 3 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 790 -730 0 0 {name=p7 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 840 -680 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 930 -730 0 1 {name=p9 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 930 -770 0 1 {name=p10 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 840 -820 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {designs/analog_cell/current_unit.sym} 860 -750 0 0 {name=x3 Mn=2 Wp=1.2u Wn=0.3u}
C {std_cells/dffqnq_1.sym} 250 -760 0 0 {name=x1 VDD=VDD VNW=VNW VPW=VPW VSS=VSS}
C {devices/lab_pin.sym} 160 -750 3 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 340 -730 0 0 {name=p2 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 390 -680 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 480 -730 0 1 {name=p4 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 480 -770 0 1 {name=p5 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 390 -820 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {designs/analog_cell/current_unit.sym} 410 -750 0 0 {name=x4 Mn=1 Wp=1.2u Wn=0.3u}
C {std_cells/dffqnq_1.sym} 700 -520 0 0 {name=x5 VDD=VDD VNW=VNW VPW=VPW VSS=VSS}
C {devices/lab_pin.sym} 610 -510 3 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 790 -490 0 0 {name=p16 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 840 -440 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 930 -490 0 1 {name=p18 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 930 -530 0 1 {name=p21 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 840 -580 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {designs/analog_cell/current_unit.sym} 860 -510 0 0 {name=x6 Mn=8 Wp=1.2u Wn=0.3u}
C {std_cells/dffqnq_1.sym} 250 -520 0 0 {name=x7 VDD=VDD VNW=VNW VPW=VPW VSS=VSS}
C {devices/lab_pin.sym} 160 -510 3 0 {name=p25 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 340 -490 0 0 {name=p26 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 390 -440 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 480 -490 0 1 {name=p28 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 480 -530 0 1 {name=p29 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 390 -580 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {designs/analog_cell/current_unit.sym} 410 -510 0 0 {name=x8 Mn=4 Wp=1.2u Wn=0.3u}
C {devices/lab_pin.sym} 610 -770 0 0 {name=p33 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 160 -770 0 0 {name=p34 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 160 -530 0 0 {name=p35 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 610 -530 0 0 {name=p36 sig_type=std_logic lab=Q3}
C {devices/ipin.sym} 100 -260 0 0 {name=p37 lab=Q0}
C {devices/opin.sym} 140 -260 0 0 {name=p38 lab=OUT+}
C {devices/ipin.sym} 100 -240 0 0 {name=p39 lab=Q1}
C {devices/ipin.sym} 100 -220 0 0 {name=p40 lab=Q2}
C {devices/ipin.sym} 100 -160 0 0 {name=p41 lab=CLK}
C {devices/ipin.sym} 100 -180 0 0 {name=p42 lab=REF}
C {devices/ipin.sym} 120 -140 3 0 {name=p43 lab=VSS}
C {devices/ipin.sym} 120 -280 1 0 {name=p44 lab=VDD}
C {devices/opin.sym} 140 -240 0 0 {name=p45 lab=OUT-}
C {devices/ipin.sym} 100 -200 0 0 {name=p46 lab=Q3}
C {devices/lab_pin.sym} 340 -250 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 370 -250 0 1 {name=p14 sig_type=std_logic lab=VNW}
C {devices/lab_pin.sym} 340 -220 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 370 -220 0 1 {name=p20 sig_type=std_logic lab=VPW}
