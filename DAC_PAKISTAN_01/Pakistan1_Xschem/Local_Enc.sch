v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -520 500 -520 {
lab=VDD}
N 500 -520 1280 -520 {
lab=VDD}
N 500 -400 1280 -400 {
lab=VSS}
N 210 -400 500 -400 {
lab=VSS}
N 210 -350 210 -330 {
lab=VDD}
N 210 -350 240 -350 {
lab=VDD}
N 210 -210 210 -190 {
lab=VSS}
N 180 -190 210 -190 {
lab=VSS}
N 210 -170 210 -150 {
lab=VDD}
N 210 -170 240 -170 {
lab=VDD}
N 210 -30 210 -10 {
lab=VSS}
N 180 -10 210 -10 {
lab=VSS}
N 500 -250 500 -230 {
lab=VDD}
N 500 -250 530 -250 {
lab=VDD}
N 500 -110 500 -90 {
lab=VSS}
N 470 -90 500 -90 {
lab=VSS}
N 740 -370 780 -370 {
lab=VDD}
N 740 -250 740 -230 {
lab=VSS}
N 700 -230 740 -230 {
lab=VSS}
N 1000 -170 1280 -170 {
lab=VDD}
N 1000 -50 1280 -50 {
lab=VSS}
N 1120 -110 1160 -110 {
lab=#net1}
N 1160 -110 1160 -100 {
lab=#net1}
N 1160 -100 1230 -100 {
lab=#net1}
N 1230 -320 1230 -120 {
lab=Q}
N 1230 -320 1400 -320 {
lab=Q}
N 1400 -460 1400 -320 {
lab=Q}
N 1400 -460 1450 -460 {
lab=Q}
N 1400 -290 1400 -110 {
lab=QB}
N 1190 -290 1400 -290 {
lab=QB}
N 1190 -450 1190 -290 {
lab=QB}
N 1190 -450 1230 -450 {
lab=QB}
N 860 -470 1230 -470 {
lab=#net2}
N 860 -470 860 -310 {
lab=#net2}
N 860 -310 860 -130 {
lab=#net2}
N 860 -130 860 -120 {
lab=#net2}
N 860 -120 950 -120 {
lab=#net2}
N 950 -120 950 -100 {
lab=#net2}
N 620 -460 620 -320 {
lab=#net3}
N 620 -300 620 -170 {
lab=#net4}
N 450 -470 450 -450 {
lab=#net5}
N 330 -460 450 -460 {
lab=#net5}
N 160 -470 160 -450 {
lab=Ri-1}
N 160 -280 160 -260 {
lab=Ri}
N 160 -100 160 -80 {
lab=Ci}
N 330 -270 330 -180 {
lab=#net6}
N 330 -180 450 -180 {
lab=#net6}
N 330 -160 330 -90 {
lab=#net7}
N 330 -160 450 -160 {
lab=#net7}
N 130 -460 160 -460 {
lab=Ri-1}
N 130 -270 160 -270 {
lab=Ri}
N 130 -90 160 -90 {
lab=Ci}
N 1400 -110 1450 -110 {
lab=QB}
N 620 -300 650 -300 {
lab=#net4}
N 650 -320 650 -300 {
lab=#net4}
N 650 -320 690 -320 {
lab=#net4}
N 620 -320 640 -320 {
lab=#net3}
N 640 -320 640 -290 {
lab=#net3}
N 640 -290 690 -290 {
lab=#net3}
N 690 -300 690 -290 {
lab=#net3}
C {NAND.sym} 310 -450 0 0 {name=x1}
C {NAND.sym} 310 -260 0 0 {name=x2}
C {NAND.sym} 310 -80 0 0 {name=x3}
C {NAND.sym} 600 -450 0 0 {name=x4}
C {NAND.sym} 600 -160 0 0 {name=x5}
C {NAND.sym} 840 -300 0 0 {name=x6}
C {NAND.sym} 1100 -100 0 0 {name=x7}
C {NAND.sym} 1380 -100 0 0 {name=x8}
C {NAND.sym} 1380 -450 0 0 {name=x9}
C {devices/lab_pin.sym} 130 -460 0 0 {name=p1 sig_type=std_logic lab=Ri-1}
C {devices/lab_pin.sym} 130 -270 0 0 {name=p2 sig_type=std_logic lab=Ri}
C {devices/lab_pin.sym} 130 -90 0 0 {name=p3 sig_type=std_logic lab=Ci}
C {devices/lab_pin.sym} 210 -170 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -190 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -10 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -90 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 700 -230 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 -400 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1000 -50 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 -350 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 210 -520 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 740 -370 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1000 -170 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -250 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1450 -460 0 0 {name=p16 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 1450 -110 0 0 {name=p17 sig_type=std_logic lab=QB}
C {devices/iopin.sym} 1510 -430 0 0 {name=p18 lab=VDD}
C {devices/iopin.sym} 1510 -400 0 0 {name=p19 lab=VSS}
C {devices/ipin.sym} 1560 -370 0 0 {name=p20 lab=Ri-1}
C {devices/ipin.sym} 1560 -340 0 0 {name=p21 lab=Ri}
C {devices/ipin.sym} 1560 -310 0 0 {name=p22 lab=Ci}
C {devices/opin.sym} 1510 -280 0 0 {name=p23 lab=Q}
C {devices/opin.sym} 1510 -250 0 0 {name=p24 lab=QB}
