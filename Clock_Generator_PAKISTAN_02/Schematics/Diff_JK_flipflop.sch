v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -110 90 -110 {
lab=#net1}
N 90 -90 100 -90 {
lab=CLK}
N 90 -90 90 40 {
lab=CLK}
N 60 100 100 100 {
lab=#net2}
N 400 100 410 100 {
lab=Qb}
N 410 40 410 100 {
lab=Qb}
N 250 40 410 40 {
lab=Qb}
N 250 -80 250 0 {
lab=Qb}
N 260 -80 270 -80 {
lab=Qb}
N 400 -90 410 -90 {
lab=Q}
N 410 -90 410 -30 {
lab=Q}
N 240 -20 400 -20 {
lab=Q}
N 240 10 240 110 {
lab=Q}
N 240 110 270 110 {
lab=Q}
N 230 90 270 90 {
lab=#net3}
N 230 -100 270 -100 {
lab=#net4}
N -280 -120 -240 -120 {
lab=#net5}
N -280 60 -240 60 {
lab=#net6}
N -100 -110 -100 -40 {
lab=#net1}
N -250 0 -100 0 {
lab=#net1}
N -250 0 -250 80 {
lab=#net1}
N -250 80 -240 80 {
lab=#net1}
N -250 -100 -240 -100 {
lab=#net2}
N -250 -100 -250 -50 {
lab=#net2}
N -250 -10 70 -10 {
lab=#net2}
N 70 -10 70 100 {
lab=#net2}
N -590 -120 -580 -120 {
lab=CLK_b}
N -590 20 -580 20 {
lab=CLK_b}
N -600 40 -580 40 {
lab=Q}
N 90 40 90 80 {
lab=CLK}
N 250 0 250 40 {
lab=Qb}
N -100 -40 -100 0 {
lab=#net1}
N -250 -50 -250 -10 {
lab=#net2}
N -600 -20 -600 40 {
lab=Q}
N -600 -20 230 -20 {
lab=Q}
N 230 -20 240 -20 {
lab=Q}
N 240 -20 240 10 {
lab=Q}
N 410 -30 410 -20 {
lab=Q}
N -600 -140 -580 -140 {
lab=Qb}
N -590 -120 -590 20 {
lab=CLK_b}
N -600 -140 -600 -30 {
lab=Qb}
N -600 -30 250 -30 {
lab=Qb}
N -600 -160 -580 -160 {
lab=J}
N -600 60 -580 60 {
lab=K}
N -280 -160 -260 -160 {
lab=VSS}
N -280 -140 -260 -140 {
lab=VDD}
N -280 20 -260 20 {
lab=VSS}
N -280 40 -260 40 {
lab=VDD}
N -195 -180 -195 -160 {
lab=VDD}
N -190 -60 -190 -40 {
lab=VSS}
N 90 80 100 80 {
lab=CLK}
N -260 100 -240 100 {
lab=RST}
N 60 60 80 60 {
lab=VSS}
N 60 80 80 80 {
lab=VDD}
N 145 -170 145 -150 {
lab=VDD}
N 150 -50 150 -10 {
lab=VSS}
N 145 20 145 40 {
lab=VDD}
N 150 140 150 160 {
lab=VSS}
N 315 -160 315 -140 {
lab=VDD}
N 320 -40 320 -10 {
lab=VSS}
N 315 20 315 50 {
lab=VDD}
N 320 150 320 170 {
lab=VSS}
N 400 -20 410 -20 {
lab=Q}
N 250 -80 270 -80 {
lab=Qb}
N 90 -110 100 -110 {
lab=#net1}
N 50 -260 70 -260 {
lab=CLK}
N 250 -260 270 -260 {
lab=CLK_b}
N 140 -330 140 -310 {
lab=VDD}
N 140 -210 140 -190 {
lab=VSS}
N 390 100 400 100 {
lab=Qb}
N 390 -90 400 -90 {
lab=Q}
N 220 -100 230 -100 {
lab=#net4}
N 220 90 230 90 {
lab=#net3}
N -120 -110 -110 -110 {
lab=#net1}
N 80 20 80 60 {
lab=VSS}
N 80 80 80 140 {
lab=VDD}
C {nand_3.sym} -430 -140 0 0 {name=x1}
C {nand_3.sym} -430 40 0 0 {name=x2}
C {devices/ipin.sym} -380 -250 0 0 {name=p1 lab=K}
C {devices/ipin.sym} -310 -250 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} -280 -250 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} -210 -250 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} -140 -250 0 0 {name=p5 lab=Q}
C {devices/ipin.sym} -460 -250 0 0 {name=p19 lab=J}
C {devices/lab_pin.sym} -600 -160 0 0 {name=p6 sig_type=std_logic lab=J}
C {devices/lab_pin.sym} -600 60 0 0 {name=p7 sig_type=std_logic lab=K}
C {devices/lab_pin.sym} -260 100 0 0 {name=p8 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -590 -60 0 0 {name=p9 sig_type=std_logic lab=CLK_b}
C {devices/lab_pin.sym} -260 -160 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -260 -140 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -195 -180 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -190 -40 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -260 20 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 -10 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 20 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 170 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 -10 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 160 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -260 40 2 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 80 140 2 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 145 -170 2 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 315 -160 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 315 20 2 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 145 20 2 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/opin.sym} -70 -250 0 0 {name=p27 lab=Qb}
C {devices/lab_pin.sym} 410 -90 2 0 {name=p28 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 410 100 2 0 {name=p29 sig_type=std_logic lab=Qb}
C {devices/ipin.sym} -510 -250 0 0 {name=p30 lab=RST}
C {GF_INV.sym} 140 -260 0 0 {name=x9}
C {devices/lab_pin.sym} 50 -260 0 0 {name=p31 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 270 -260 2 0 {name=p32 sig_type=std_logic lab=CLK_b}
C {devices/lab_pin.sym} 140 -330 2 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 -190 2 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 -90 0 0 {name=p35 sig_type=std_logic lab=CLK}
C {NAND.sym} -160 -80 0 0 {name=x3}
C {NAND.sym} 180 120 0 0 {name=x5}
C {NAND.sym} 180 -70 0 0 {name=x6}
C {NAND.sym} 350 -60 0 0 {name=x7}
C {NAND.sym} 350 130 0 0 {name=x8}
C {nand_3.sym} -90 80 0 0 {name=x4}
