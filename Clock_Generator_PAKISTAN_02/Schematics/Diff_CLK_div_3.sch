v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -330 -60 -320 -60 {
lab=CLK}
N -330 -60 -330 80 {
lab=CLK}
N -330 80 -320 80 {
lab=CLK}
N -340 -20 -320 -20 {
lab=RST}
N -340 -20 -340 120 {
lab=RST}
N -340 120 -320 120 {
lab=RST}
N -350 0 -320 0 {
lab=VDD}
N -350 0 -350 140 {
lab=VDD}
N -350 140 -320 140 {
lab=VDD}
N -20 100 -10 100 {
lab=VDD}
N -10 60 -10 100 {
lab=VDD}
N -350 60 -10 60 {
lab=VDD}
N -360 -40 -320 -40 {
lab=#net1}
N -360 -40 -360 30 {
lab=#net1}
N -360 30 0 30 {
lab=#net1}
N 0 30 0 140 {
lab=#net1}
N -20 140 0 140 {
lab=#net1}
N -360 100 -320 100 {
lab=Q1}
N -360 50 -360 100 {
lab=Q1}
N -360 50 10 50 {
lab=Q1}
N 10 -20 10 50 {
lab=Q1}
N -20 -60 0 -60 {
lab=VSS}
N -20 -40 0 -40 {
lab=VDD}
N -20 80 10 80 {
lab=VSS}
N 325 0 345 0 {
lab=VSS}
N 325 20 345 20 {
lab=VDD}
N -20 120 270 120 {
lab=Q0}
N 770 20 780 20 {
lab=#net2}
N 1080 0 1100 0 {
lab=VSS}
N 1080 20 1100 20 {
lab=VDD}
N -10 100 10 100 {
lab=VDD}
N 1410 80 1430 80 {
lab=Vdiv3}
N 10 0 20 0 {
lab=Q1}
N -20 -20 10 -20 {
lab=Q1}
N 320 40 350 40 {
lab=#net2}
N 770 20 770 40 {
lab=#net2}
N 750 0 780 0 {
lab=Q0}
N 750 0 750 120 {
lab=Q0}
N 270 120 330 120 {
lab=Q0}
N 330 120 750 120 {
lab=Q0}
N 770 40 770 60 {
lab=#net2}
N 650 60 770 60 {
lab=#net2}
N 650 20 650 40 {
lab=VSS}
N 650 80 670 80 {
lab=VDD}
N 350 40 350 60 {
lab=#net2}
N 350 60 650 60 {
lab=#net2}
N 1270 130 1290 130 {
lab=VSS}
N 1270 30 1290 30 {
lab=VDD}
N 1080 40 1110 40 {
lab=#net3}
N 1110 40 1110 80 {
lab=#net3}
N 1110 80 1200 80 {
lab=#net3}
N 1380 80 1410 80 {
lab=Vdiv3}
N 320 20 325 20 {
lab=VDD}
N 320 0 325 0 {
lab=VSS}
N -5 20 20 20 {
lab=#net4}
N -5 -95 -5 20 {
lab=#net4}
N -120 -85 -25 -85 {
lab=VSS}
N -25 -85 -20 -85 {
lab=VSS}
N -20 -85 -20 -60 {
lab=VSS}
N -5 -135 -5 -95 {
lab=#net4}
N -10 -135 -5 -135 {
lab=#net4}
N -330 -135 -330 -60 {
lab=CLK}
N -330 -135 -190 -135 {
lab=CLK}
N -350 -180 -350 0 {
lab=VDD}
N -350 -190 -350 -180 {
lab=VDD}
N -350 -190 -120 -190 {
lab=VDD}
N -120 -190 -120 -185 {
lab=VDD}
C {devices/ipin.sym} -30 -180 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 0 -180 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 70 -180 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 140 -180 0 0 {name=p5 lab=Q0}
C {devices/opin.sym} 210 -180 0 0 {name=p27 lab=Q1}
C {devices/ipin.sym} 415 -180 0 0 {name=p30 lab=RST}
C {devices/lab_pin.sym} 0 -60 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -40 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 10 80 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 100 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1100 0 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1100 20 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 345 20 3 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 345 0 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -340 120 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -330 -60 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -10 -20 3 0 {name=p16 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 10 120 3 0 {name=p17 sig_type=std_logic lab=Q0}
C {devices/opin.sym} 280 -180 0 0 {name=p18 lab=Vdiv3}
C {devices/lab_pin.sym} 1430 80 2 0 {name=p20 sig_type=std_logic lab=Vdiv3}
C {devices/lab_pin.sym} 670 80 3 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 650 20 1 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1290 130 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1290 30 2 0 {name=p22 sig_type=std_logic lab=VDD}
C {Diff_JK_flipflop.sym} -170 -30 0 0 {name=x1}
C {Diff_JK_flipflop.sym} -170 110 0 0 {name=x2}
C {GF_INV.sym} 1270 80 0 0 {name=x5}
C {or_2.sym} 930 20 0 0 {name=x6}
C {and_2.sym} 170 20 0 0 {name=x7}
C {GF_INV.sym} -120 -135 0 0 {name=x3}
