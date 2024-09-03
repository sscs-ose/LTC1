v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 80 -140 80 {
lab=#net1}
N -200 -120 -140 -120 {
lab=LD}
N -500 70 -420 70 {
lab=D2}
N -470 -100 -470 70 {
lab=D2}
N -470 -100 -140 -100 {
lab=D2}
N -280 -120 -200 -120 {
lab=LD}
N -360 -20 -360 10 {
lab=VDD}
N -80 -200 -80 -170 {
lab=VDD}
N -80 -50 -80 -30 {
lab=VSS}
N -80 -10 -80 10 {
lab=VDD}
N -80 -10 -60 -10 {
lab=VDD}
N -80 130 -80 150 {
lab=VSS}
N -360 150 -360 180 {
lab=VSS}
N -520 330 -470 330 {
lab=D1}
N -520 310 -470 310 {
lab=CLKB}
N -380 270 -380 300 {
lab=VDD}
N -360 350 -360 380 {
lab=VSS}
N -290 320 -200 320 {
lab=#net2}
N -70 330 20 330 {
lab=#net3}
N 200 320 270 320 {
lab=#net4}
N 400 330 460 330 {
lab=Q}
N 440 330 440 470 {
lab=Q}
N 460 330 500 330 {
lab=Q}
N 630 480 680 480 {
lab=Q-}
N -140 240 -140 270 {
lab=VDD}
N -140 390 -140 420 {
lab=VSS}
N 110 270 110 300 {
lab=VDD}
N 130 350 130 380 {
lab=VSS}
N 330 240 330 270 {
lab=VDD}
N 330 390 330 420 {
lab=VSS}
N 500 380 500 410 {
lab=VDD}
N 500 550 500 580 {
lab=VSS}
N 390 430 440 430 {
lab=Q}
N -10 70 -10 740 {
lab=#net5}
N -10 740 400 740 {
lab=#net5}
N 400 740 480 740 {
lab=#net5}
N 480 610 480 740 {
lab=#net5}
N 420 610 480 610 {
lab=#net5}
N 390 430 390 490 {
lab=Q}
N 390 490 440 490 {
lab=Q}
N 440 490 440 590 {
lab=Q}
N 420 590 440 590 {
lab=Q}
N -10 -110 200 -110 {
lab=#net6}
N 200 -110 210 -110 {
lab=#net6}
N 210 -110 210 340 {
lab=#net6}
N 210 340 270 340 {
lab=#net6}
N 240 600 290 600 {
lab=#net7}
N 40 610 60 610 {
lab=#net4}
N 40 480 40 610 {
lab=#net4}
N 40 480 240 480 {
lab=#net4}
N 240 320 240 480 {
lab=#net4}
N 210 340 210 420 {
lab=#net6}
N -50 420 210 420 {
lab=#net6}
N -50 420 -50 600 {
lab=#net6}
N -120 600 -50 600 {
lab=#net6}
N -50 330 -50 380 {
lab=#net3}
N -80 380 -50 380 {
lab=#net3}
N -80 380 -80 580 {
lab=#net3}
N -120 580 -80 580 {
lab=#net3}
N -320 590 -250 590 {
lab=#net8}
N -530 600 -500 600 {
lab=#net2}
N -530 480 -530 600 {
lab=#net2}
N -530 480 -260 480 {
lab=#net2}
N -260 320 -260 480 {
lab=#net2}
N -230 490 -10 490 {
lab=#net5}
N -230 340 -230 490 {
lab=#net5}
N -230 340 -200 340 {
lab=#net5}
N -430 540 -430 570 {
lab=VSS}
N -410 620 -410 650 {
lab=VDD}
N -180 510 -180 530 {
lab=VSS}
N -180 650 -180 680 {
lab=VDD}
N 130 540 130 580 {
lab=VSS}
N 150 630 150 670 {
lab=VDD}
N 360 500 360 540 {
lab=VSS}
N 360 660 360 690 {
lab=VDD}
N -1060 190 -1010 190 {
lab=CLK}
N -820 200 -770 200 {
lab=CLKB}
N -950 90 -950 130 {
lab=VDD}
N -950 270 -950 310 {
lab=VSS}
N -320 610 -280 610 {
lab=CLK}
N -30 310 20 310 {
lab=CLK}
N 240 620 280 620 {
lab=CLKB}
N -200 60 -140 60 {
lab=LD}
N -200 -120 -200 60 {
lab=LD}
C {NAND.sym} 10 -100 0 0 {name=x1}
C {NAND.sym} 10 80 0 0 {name=x2}
C {devices/ipin.sym} -280 -120 0 0 {name=p1 lab=LD}
C {devices/ipin.sym} -500 70 0 0 {name=p2 lab=D2}
C {devices/iopin.sym} -80 -200 3 0 {name=p3 lab=VDD}
C {devices/iopin.sym} -80 150 1 0 {name=p4 lab=VSS}
C {devices/lab_wire.sym} -360 -10 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -360 170 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 0 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -80 -40 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {tg.sym} -320 330 0 0 {name=x4}
C {devices/ipin.sym} -520 330 0 0 {name=p9 lab=D1}
C {devices/lab_wire.sym} -380 280 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -360 380 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {NAND.sym} -50 340 0 0 {name=x5}
C {tg.sym} 170 330 0 0 {name=x6}
C {NAND.sym} 420 340 0 0 {name=x7}
C {inverter.sym} 590 490 0 0 {name=x9}
C {devices/opin.sym} 500 330 0 0 {name=p12 lab=Q}
C {devices/opin.sym} 680 480 0 0 {name=p13 lab=Q-}
C {NAND.sym} 270 590 2 0 {name=x10}
C {tg.sym} 90 600 2 0 {name=x11}
C {NAND.sym} -270 580 2 0 {name=x12}
C {tg.sym} -470 590 2 0 {name=x13}
C {devices/lab_wire.sym} -140 250 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 110 280 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 330 260 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 500 400 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -410 640 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -180 670 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 150 660 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 360 680 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -140 410 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 130 370 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 330 410 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 570 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 530 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 130 570 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -180 520 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -430 560 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {inverter.sym} -270 90 0 0 {name=x14}
C {inverter.sym} -860 210 0 0 {name=x15}
C {devices/lab_wire.sym} -950 300 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -950 110 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -1060 190 0 0 {name=p32 lab=CLK}
C {devices/lab_wire.sym} -780 200 0 0 {name=p33 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} -780 200 0 0 {name=p34 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} -490 310 0 0 {name=p35 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} 270 620 0 0 {name=p36 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} 0 310 0 0 {name=p37 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -290 610 0 0 {name=p38 sig_type=std_logic lab=CLK}
