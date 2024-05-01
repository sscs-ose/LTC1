v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 570 40 600 40 {
lab=Q1}
N 900 80 930 80 {
lab=Q2}
N 1230 120 1260 120 {
lab=#net1}
N 1560 160 1570 160 {
lab=#net2}
N 1570 160 1570 200 {
lab=#net2}
N 270 200 1570 200 {
lab=#net2}
N 250 200 270 200 {
lab=#net2}
N 250 0 250 180 {
lab=Q0}
N -80 0 -70 0 {
lab=#net3}
N -80 0 -80 190 {
lab=#net3}
N -70 190 120 190 {
lab=#net3}
N 920 160 1260 160 {
lab=#net3}
N 920 120 920 160 {
lab=#net3}
N 920 120 930 120 {
lab=#net3}
N -70 120 920 120 {
lab=#net3}
N 590 80 600 80 {
lab=#net3}
N 590 80 590 120 {
lab=#net3}
N 260 40 270 40 {
lab=#net3}
N 260 40 260 120 {
lab=#net3}
N 1250 140 1260 140 {
lab=VDD}
N 1250 140 1250 180 {
lab=VDD}
N 1250 180 1260 180 {
lab=VDD}
N 910 100 930 100 {
lab=VDD}
N 910 100 910 140 {
lab=VDD}
N 910 140 930 140 {
lab=VDD}
N 580 60 600 60 {
lab=VDD}
N 580 60 580 100 {
lab=VDD}
N 580 100 600 100 {
lab=VDD}
N 240 20 270 20 {
lab=VDD}
N 240 20 240 60 {
lab=VDD}
N 240 60 270 60 {
lab=VDD}
N 230 -20 1570 -20 {
lab=VDD}
N 1570 -20 1570 140 {
lab=VDD}
N 1560 140 1570 140 {
lab=VDD}
N 1230 100 1240 100 {
lab=VDD}
N 1240 -20 1240 100 {
lab=VDD}
N 900 60 910 60 {
lab=VDD}
N 910 -20 910 60 {
lab=VDD}
N 570 20 580 20 {
lab=VDD}
N 580 -20 580 20 {
lab=VDD}
N 230 -40 1580 -40 {
lab=VSS}
N 1580 -40 1580 120 {
lab=VSS}
N 1560 120 1580 120 {
lab=VSS}
N 1230 -40 1230 80 {
lab=VSS}
N 900 -40 900 40 {
lab=VSS}
N 570 -40 570 -0 {
lab=VSS}
N 230 0 270 0 {
lab=Q0}
N 580 20 580 60 {
lab=VDD}
N 910 60 910 100 {
lab=VDD}
N 1240 100 1250 100 {
lab=VDD}
N 1250 100 1250 140 {
lab=VDD}
N -80 120 -70 120 {
lab=#net3}
N -80 190 -70 190 {
lab=#net3}
N 200 100 200 140 {
lab=VSS}
N 205 240 205 270 {
lab=VDD}
N 1550 -55 1550 -45 {
lab=VSS}
N 1570 -55 1570 -45 {
lab=VDD}
N 1550 -45 1550 -40 {
lab=VSS}
N 1570 -45 1570 -20 {
lab=VDD}
N 200 90 200 100 {
lab=VSS}
N 205 270 205 280 {
lab=VDD}
N -80 -20 -70 -20 {
lab=VDD}
N -90 -40 -70 -40 {
lab=CLK}
N -85 -20 -80 -20 {
lab=VDD}
N -85 -20 -85 20 {
lab=VDD}
N -85 20 -70 20 {
lab=VDD}
N -85 20 -85 40 {
lab=VDD}
N -85 40 240 40 {
lab=VDD}
N 240 -20 240 20 {
lab=VDD}
N 120 190 125 190 {
lab=#net3}
N 250 -15 250 -0 {
lab=Q0}
N 590 25 590 40 {
lab=Q1}
N 920 60 920 80 {
lab=Q2}
N 1255 100 1255 120 {
lab=Q2}
N 1570 160 1590 160 {
lab=Q2}
C {JK_flipflop.sym} 80 -10 0 0 {name=x1}
C {JK_flipflop.sym} 420 30 0 0 {name=x2}
C {JK_flipflop.sym} 750 70 0 0 {name=x3}
C {JK_flipflop.sym} 1080 110 0 0 {name=x4}
C {JK_flipflop.sym} 1410 150 0 0 {name=x5}
C {NAND.sym} 170 160 2 0 {name=x6}
C {devices/lab_wire.sym} 1550 -55 1 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1570 -55 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 200 90 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 205 280 3 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 495 -75 0 0 {name=p3 lab=CLK}
C {devices/iopin.sym} 525 -75 0 0 {name=p4 lab=VSS
}
C {devices/iopin.sym} 595 -75 0 0 {name=p5 lab=VDD}
C {devices/opin.sym} 665 -75 0 0 {name=p18 lab=Q0}
C {devices/lab_pin.sym} -90 -40 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/opin.sym} 760 -75 0 0 {name=p6 lab=Q1}
C {devices/opin.sym} 855 -75 0 0 {name=p9 lab=Q2}
C {devices/opin.sym} 950 -75 0 0 {name=p10 lab=Q3}
C {devices/opin.sym} 1040 -75 0 0 {name=p11 lab=Q4}
C {devices/lab_pin.sym} 250 -15 1 0 {name=p12 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 590 25 1 0 {name=p13 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 920 60 1 0 {name=p14 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 1255 100 1 0 {name=p16 sig_type=std_logic lab=Q3}
C {devices/lab_pin.sym} 1590 160 2 0 {name=p17 sig_type=std_logic lab=Q4}
