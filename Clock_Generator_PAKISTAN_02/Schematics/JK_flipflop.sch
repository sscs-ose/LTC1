v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 580 160 620 160 {
lab=#net1}
N 920 160 930 160 {
lab=Qb}
N 930 100 930 160 {
lab=Qb}
N 770 100 930 100 {
lab=Qb}
N 920 -30 930 -30 {
lab=Q}
N 930 -30 930 30 {
lab=Q}
N 760 40 920 40 {
lab=Q}
N 420 -50 420 20 {
lab=#net2}
N 270 60 420 60 {
lab=#net2}
N 270 50 590 50 {
lab=#net1}
N 590 50 590 160 {
lab=#net1}
N -70 -60 -60 -60 {
lab=CLK}
N 610 100 610 140 {
lab=CLK_b}
N 770 60 770 100 {
lab=Qb}
N 420 20 420 60 {
lab=#net2}
N 270 10 270 50 {
lab=#net1}
N 750 40 760 40 {
lab=Q}
N 760 40 760 70 {
lab=Q}
N 930 30 930 40 {
lab=Q}
N -70 -60 -70 80 {
lab=CLK}
N -80 30 770 30 {
lab=Qb}
N -80 -80 -60 -80 {
lab=J}
N -80 100 -60 100 {
lab=K}
N 240 -100 260 -100 {
lab=VSS}
N 240 -80 260 -80 {
lab=VDD}
N 240 80 260 80 {
lab=VSS}
N 240 100 260 100 {
lab=VDD}
N 325 -120 325 -100 {
lab=VDD}
N 330 0 330 20 {
lab=VSS}
N 610 140 620 140 {
lab=CLK_b}
N 260 160 280 160 {
lab=RST}
N 580 120 600 120 {
lab=VSS}
N 580 140 600 140 {
lab=VDD}
N 665 -110 665 -90 {
lab=VDD}
N 670 10 670 50 {
lab=VSS}
N 665 80 665 100 {
lab=VDD}
N 670 200 670 220 {
lab=VSS}
N 835 -100 835 -80 {
lab=VDD}
N 840 20 840 50 {
lab=VSS}
N 835 80 835 110 {
lab=VDD}
N 840 210 840 230 {
lab=VSS}
N 920 40 930 40 {
lab=Q}
N 610 -50 620 -50 {
lab=CLK_b}
N 570 -200 590 -200 {
lab=CLK}
N 770 -200 790 -200 {
lab=CLK_b}
N 660 -270 660 -250 {
lab=VDD}
N 660 -150 660 -130 {
lab=VSS}
N 910 160 920 160 {
lab=Qb}
N 910 -30 920 -30 {
lab=Q}
N 740 -40 750 -40 {
lab=#net3}
N 740 150 750 150 {
lab=#net4}
N 400 -50 410 -50 {
lab=#net2}
N 750 150 750 170 {
lab=#net4}
N 750 170 790 170 {
lab=#net4}
N 760 70 760 150 {
lab=Q}
N 760 150 790 150 {
lab=Q}
N 770 -40 770 60 {
lab=Qb}
N 770 -40 790 -40 {
lab=Qb}
N 750 -40 750 -20 {
lab=#net3}
N 750 -20 790 -20 {
lab=#net3}
N 610 -50 610 100 {
lab=CLK_b}
N 410 -50 480 -50 {
lab=#net2}
N 480 -50 480 -30 {
lab=#net2}
N 480 -30 620 -30 {
lab=#net2}
N 270 60 270 120 {
lab=#net2}
N 270 120 280 120 {
lab=#net2}
N 240 120 240 140 {
lab=#net5}
N 240 140 280 140 {
lab=#net5}
N -90 30 -80 30 {
lab=Qb}
N -90 -100 -90 30 {
lab=Qb}
N -90 -100 -60 -100 {
lab=Qb}
N -70 80 -70 120 {
lab=CLK}
N -70 120 -60 120 {
lab=CLK}
N -60 40 -60 80 {
lab=Q}
N -60 40 750 40 {
lab=Q}
N 240 -60 240 -40 {
lab=#net6}
N 240 -40 280 -40 {
lab=#net6}
N 270 -60 270 10 {
lab=#net1}
N 270 -60 280 -60 {
lab=#net1}
C {nand_3.sym} 90 -80 0 0 {name=x1}
C {nand_3.sym} 90 100 0 0 {name=x2}
C {nand_3.sym} 430 140 0 0 {name=x4}
C {devices/ipin.sym} 140 -190 0 0 {name=p1 lab=K}
C {devices/ipin.sym} 210 -190 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 240 -190 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 310 -190 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 380 -190 0 0 {name=p5 lab=Q}
C {devices/ipin.sym} 60 -190 0 0 {name=p19 lab=J}
C {devices/lab_pin.sym} -80 -80 0 0 {name=p6 sig_type=std_logic lab=J}
C {devices/lab_pin.sym} -80 100 0 0 {name=p7 sig_type=std_logic lab=K}
C {devices/lab_pin.sym} 260 160 0 0 {name=p8 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -70 0 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 260 -100 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 -80 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 325 -120 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 330 20 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 80 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 670 50 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 120 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 230 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 50 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 670 220 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 100 2 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 600 140 2 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 665 -110 2 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 835 -100 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 835 80 2 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 665 80 2 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 450 -190 0 0 {name=p27 lab=Qb}
C {devices/lab_pin.sym} 930 -30 2 0 {name=p28 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 930 160 2 0 {name=p29 sig_type=std_logic lab=Qb}
C {devices/ipin.sym} 10 -190 0 0 {name=p30 lab=RST}
C {GF_INV.sym} 660 -200 0 0 {name=x9}
C {devices/lab_pin.sym} 570 -200 0 0 {name=p31 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 790 -200 2 0 {name=p32 sig_type=std_logic lab=CLK_b}
C {devices/lab_pin.sym} 660 -270 2 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 -130 2 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 610 10 0 0 {name=p35 sig_type=std_logic lab=CLK_b}
C {NAND.sym} 360 -20 0 0 {name=x3}
C {NAND.sym} 700 180 0 0 {name=x5}
C {NAND.sym} 700 -10 0 0 {name=x6}
C {NAND.sym} 870 0 0 0 {name=x7}
C {NAND.sym} 870 190 0 0 {name=x8}
