v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1680 -390 -1620 -390 {
lab=#net1}
N -1680 -610 -1680 -390 {
lab=#net1}
N -1680 -650 -1680 -610 {
lab=#net1}
N -1680 -370 -1620 -370 {
lab=#net2}
N -1610 -590 -1480 -590 {
lab=VDD}
N -1480 -590 -1480 -480 {
lab=VDD}
N -1550 -260 -1480 -260 {
lab=VCONT}
N -320 -290 -320 -270 {
lab=VSS}
N -740 -410 -740 -400 {
lab=VSS}
N -740 -240 -740 -230 {
lab=VSS}
N -1480 -260 -1480 -160 {
lab=VCONT}
N -340 -290 -340 -160 {
lab=VCONT}
N -740 -540 -740 -510 {
lab=VDD}
N -740 -370 -740 -340 {
lab=VDD}
N -340 -550 -340 -490 {
lab=VDD}
N 300 -470 360 -470 {
lab=#net1}
N 300 -310 360 -310 {
lab=#net2}
N 540 -470 610 -470 {
lab=#net3}
N 540 -310 610 -310 {
lab=#net4}
N 790 -470 850 -470 {
lab=#net5}
N 790 -310 850 -310 {
lab=#net6}
N 680 -420 680 -410 {
lab=VSS}
N 430 -420 430 -410 {
lab=VSS}
N 680 -560 680 -520 {
lab=VDD}
N 430 -560 430 -520 {
lab=VDD}
N 430 -380 430 -360 {
lab=VDD}
N 680 -380 680 -360 {
lab=VDD}
N 1030 -470 1130 -470 {
lab=OUT}
N 1030 -310 1130 -310 {
lab=OUTB}
N 920 -560 920 -520 {
lab=VDD}
N 920 -420 920 -410 {
lab=VSS}
N 920 -380 920 -360 {
lab=VDD}
N -630 -290 -610 -290 {
lab=#net7}
N -550 -400 -480 -400 {
lab=#net8}
N -840 -290 -810 -290 {
lab=#net9}
N -1680 -650 290 -650 {
lab=#net1}
N -1680 -110 290 -110 {
lab=#net2}
N -1680 -370 -1680 -110 {
lab=#net2}
N 200 -400 290 -400 {
lab=#net1}
N 290 -650 290 -400 {
lab=#net1}
N 200 -380 290 -380 {
lab=#net2}
N 290 -380 290 -110 {
lab=#net2}
N 290 -310 300 -310 {
lab=#net2}
N 290 -470 300 -470 {
lab=#net1}
N -180 -400 -100 -400 {
lab=#net10}
N -180 -380 -100 -380 {
lab=#net11}
N -630 -460 -550 -460 {
lab=#net8}
N -550 -460 -550 -400 {
lab=#net8}
N -610 -290 -550 -290 {
lab=#net7}
N -550 -380 -550 -290 {
lab=#net7}
N -550 -380 -480 -380 {
lab=#net7}
N -880 -460 -810 -460 {
lab=#net12}
N -880 -460 -880 -390 {
lab=#net12}
N -940 -390 -880 -390 {
lab=#net12}
N -940 -370 -880 -370 {
lab=#net9}
N -880 -370 -880 -290 {
lab=#net9}
N -880 -290 -840 -290 {
lab=#net9}
N -1320 -390 -1240 -390 {
lab=#net13}
N -1320 -370 -1240 -370 {
lab=#net14}
N -1480 -160 -340 -160 {
lab=VCONT}
N -1100 -280 -1100 -160 {
lab=VCONT}
N -640 -460 -630 -460 {
lab=#net8}
N -640 -290 -630 -290 {
lab=#net7}
N 920 -260 920 -240 {
lab=VSS}
N 680 -260 680 -240 {
lab=VSS}
N 430 -260 430 -240 {
lab=VSS}
N -1460 -530 -1460 -480 {
lab=EN}
N -320 -540 -320 -490 {
lab=EN}
N -1100 -530 -1100 -480 {
lab=#net16}
N -1080 -240 -1080 -220 {
lab=VSS}
N -1080 -220 -1080 -200 {
lab=VSS}
N -1080 -280 -1080 -240 {
lab=VSS}
N -1480 -280 -1480 -260 {
lab=VCONT}
N -1460 -280 -1460 -260 {
lab=VSS}
N 60 -290 60 -270 {
lab=VSS}
N -340 -160 40 -160 {
lab=VCONT}
N 40 -290 40 -160 {
lab=VCONT}
N 40 -550 40 -490 {
lab=VDD}
N 60 -540 60 -490 {
lab=EN}
N -1100 -580 -1100 -530 {}
N -1480 -580 -1100 -580 {}
N -1460 -510 -1080 -510 {}
N -1080 -510 -1080 -480 {}
C {devices/lab_pin.sym} -740 -540 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -740 -370 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -340 -550 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {GF_INV_1.sym} 430 -470 0 0 {name=x5}
C {GF_INV_1.sym} 430 -310 0 0 {name=x6}
C {GF_INV_4.sym} 680 -470 0 0 {name=x7}
C {GF_INV_4.sym} 680 -310 0 0 {name=x8}
C {GF_INV_16.sym} 920 -470 0 0 {name=x9}
C {GF_INV_16.sym} 920 -310 0 0 {name=x10}
C {devices/lab_pin.sym} 430 -560 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 680 -560 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 680 -380 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 430 -380 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 1130 -470 0 0 {name=p11 lab=OUT}
C {devices/opin.sym} 1130 -310 0 0 {name=p12 lab=OUTB}
C {devices/lab_pin.sym} 920 -560 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 920 -380 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -1610 -590 0 0 {name=p13 lab=VDD}
C {devices/ipin.sym} -1550 -260 0 0 {name=p14 lab=VCONT}
C {GF_INV_STAGE.sym} -1070 -460 0 0 {name=x3}
C {GF_INV_STAGE.sym} -1070 -290 0 0 {name=x4}
C {devices/ipin.sym} -1460 -530 2 0 {name=p1 lab=EN}
C {devices/lab_pin.sym} -320 -540 2 0 {name=p19 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} -320 -270 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -740 -230 2 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -740 -400 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 430 -240 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 -240 2 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 -240 2 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 -410 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 -410 2 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 430 -410 2 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -1080 -200 2 0 {name=p15 lab=VSS}
C {Delay_Cell.sym} -1090 -380 0 0 {name=x1}
C {Delay_Cell.sym} -330 -390 0 0 {name=x2}
C {Delay_Cell.sym} -1470 -380 0 0 {name=x11}
C {Delay_Cell.sym} 50 -390 0 0 {name=x12}
C {devices/lab_pin.sym} -1460 -260 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 -270 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 40 -550 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 60 -540 2 0 {name=p20 sig_type=std_logic lab=EN}
