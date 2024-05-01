v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -80 -20 -80 {
lab=#net1}
N 130 -50 190 -50 {
lab=#net2}
N 500 -80 600 -80 {
lab=#net3}
N 790 -70 910 -70 {
lab=#net4}
N 1060 -40 1210 -40 {
lab=1}
N 1360 -10 1400 -10 {
lab=#net5}
N 1400 -380 1400 -10 {
lab=#net5}
N 1000 -380 1400 -380 {
lab=#net5}
N 300 -70 370 -70 {
lab=#net6}
N -330 -390 810 -390 {
lab=#net7}
N -330 -390 -330 -110 {
lab=#net7}
N -330 -110 -240 -110 {
lab=#net7}
N 340 -90 370 -90 {
lab=#net7}
N 340 -390 340 -90 {
lab=#net7}
N 150 -50 150 170 {
lab=#net2}
N -350 -70 -350 170 {
lab=#net8}
N -350 -70 -240 -70 {
lab=#net8}
N -190 -190 -190 -160 {
lab=VDD}
N -190 -20 -190 10 {
lab=VSS}
N 140 -70 190 -70 {
lab=1}
N 390 360 450 360 {
lab=1}
N 640 370 680 370 {
lab=1b}
N -290 -90 -240 -90 {
lab=1b}
N -70 -100 -20 -100 {
lab=CLK}
N 60 -180 60 -130 {
lab=VDD}
N 60 60 60 90 {
lab=VSS}
N 240 -160 240 -120 {
lab=VDD}
N 240 0 240 40 {
lab=VSS}
N 430 -180 430 -140 {
lab=VDD}
N 430 -20 430 30 {
lab=VSS}
N 660 -190 660 -140 {
lab=VDD}
N 660 0 660 40 {
lab=VSS}
N 990 -170 990 -120 {
lab=VDD}
N 990 70 990 110 {
lab=VSS}
N 1290 -130 1290 -90 {
lab=VDD}
N 1290 100 1290 130 {
lab=VSS}
N 940 -320 940 -270 {
lab=VDD}
N 510 250 510 300 {
lab=VDD}
N 510 440 510 480 {
lab=VSS}
N 940 -510 940 -460 {
lab=VSS}
N 860 -90 910 -90 {
lab=CLK}
N 1160 -60 1210 -60 {
lab=CLK}
N -20 210 150 210 {
lab=#net2}
N 150 170 150 210 {
lab=#net2}
N -350 200 -210 200 {
lab=#net8}
N -350 170 -350 200 {
lab=#net8}
N -80 70 -80 130 {
lab=VSS}
N -80 270 -80 330 {
lab=VDD}
N 1400 -10 1520 -10 {
lab=#net5}
C {DFF.sym} 130 -80 0 0 {name=x1}
C {3_inp_AND.sym} -90 -90 0 0 {name=x2}
C {OR.sym} 340 -50 0 0 {name=x3}
C {NAND.sym} 520 -70 0 0 {name=x4}
C {inverter.sym} 750 -60 0 0 {name=x5}
C {DFF.sym} 1060 -70 0 0 {name=x6}
C {DFF.sym} 1360 -40 0 0 {name=x7}
C {inverter.sym} 850 -400 2 0 {name=x8}
C {devices/iopin.sym} -190 10 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} -190 -190 3 0 {name=p2 lab=VDD}
C {devices/lab_wire.sym} 170 -70 0 0 {name=p3 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 170 -70 0 0 {name=p4 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 1120 -40 0 0 {name=p5 sig_type=std_logic lab=1}
C {inverter.sym} 600 380 0 0 {name=x9}
C {devices/lab_wire.sym} 420 360 0 0 {name=p6 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 670 370 0 0 {name=p7 sig_type=std_logic lab=1b}
C {devices/lab_wire.sym} -280 -90 0 0 {name=p8 sig_type=std_logic lab=1b}
C {devices/ipin.sym} -70 -100 0 0 {name=p9 lab=CLK}
C {devices/lab_wire.sym} 240 -130 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 430 -160 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 660 -160 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 990 -150 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1290 -110 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 940 -290 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 510 270 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 60 -160 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 60 80 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 20 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 430 10 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 660 30 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 990 90 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1290 120 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 510 470 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 940 -480 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 890 -90 0 0 {name=p26 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1190 -60 0 0 {name=p27 sig_type=std_logic lab=CLK}
C {inverter.sym} -170 190 2 0 {name=x10}
C {devices/lab_wire.sym} -80 100 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 310 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 1520 -10 0 0 {name=p30 lab=OUT}
