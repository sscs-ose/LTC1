v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -60 -80 -60 {
lab=VDD}
N -100 -80 -80 -80 {
lab=VSS}
N -410 -80 -400 -80 {
lab=IN}
N 220 -20 240 -20 {
lab=VDD}
N 220 -40 240 -40 {
lab=VSS}
N 220 0 240 0 {
lab=#net1}
N -100 -40 -80 -40 {
lab=#net2}
N 550 20 570 20 {
lab=VDD}
N 550 0 570 0 {
lab=VSS}
N 240 0 250 0 {
lab=#net1}
N 870 60 890 60 {
lab=VDD}
N 870 40 890 40 {
lab=VSS}
N 870 80 890 80 {
lab=#net3}
N 550 40 570 40 {
lab=#net4}
N 1200 100 1220 100 {
lab=VDD}
N 1200 80 1220 80 {
lab=VSS}
N 890 80 900 80 {
lab=#net3}
N 1520 140 1540 140 {
lab=VDD}
N 1520 120 1540 120 {
lab=VSS}
N 1520 160 1540 160 {
lab=#net5}
N 1200 120 1220 120 {
lab=#net6}
N 1850 180 1870 180 {
lab=VDD}
N 1850 160 1870 160 {
lab=VSS}
N 1540 160 1550 160 {
lab=#net5}
N 2170 220 2190 220 {
lab=VDD}
N 2170 200 2190 200 {
lab=VSS}
N 2170 240 2190 240 {
lab=#net7}
N 1850 200 1870 200 {
lab=#net8}
N 2500 260 2520 260 {
lab=VDD}
N 2500 240 2520 240 {
lab=VSS}
N 2190 240 2200 240 {
lab=#net7}
N 2820 300 2840 300 {
lab=VDD}
N 2820 280 2840 280 {
lab=VSS}
N 2820 320 2840 320 {
lab=#net9}
N 2500 280 2520 280 {
lab=#net10}
N 3150 340 3170 340 {
lab=VDD}
N 3150 320 3170 320 {
lab=VSS}
N 2840 320 2850 320 {
lab=#net9}
N 3470 380 3490 380 {
lab=VDD}
N 3470 360 3490 360 {
lab=VSS}
N 3470 400 3490 400 {
lab=#net11}
N 3150 360 3170 360 {
lab=#net12}
N 3490 400 3500 400 {
lab=#net11}
N 3820 420 3840 420 {
lab=VDD}
N 3820 400 3840 400 {
lab=VSS}
N 3820 440 3840 440 {
lab=#net13}
N 3500 400 3520 400 {
lab=#net11}
N 4150 460 4170 460 {
lab=VDD}
N 4150 440 4170 440 {
lab=VSS}
N 3840 440 3850 440 {
lab=#net13}
N 4470 500 4490 500 {
lab=VDD}
N 4470 480 4490 480 {
lab=VSS}
N 4470 520 4490 520 {
lab=#net14}
N 4150 480 4170 480 {
lab=#net15}
N 4490 520 4500 520 {
lab=#net14}
N 4830 540 4850 540 {
lab=VDD}
N 4830 520 4850 520 {
lab=VSS}
N 4830 560 4850 560 {
lab=OUT}
N 4850 560 4860 560 {
lab=OUT}
N 4500 520 4530 520 {
lab=#net14}
N 4860 560 4890 560 {
lab=OUT}
C {devices/lab_pin.sym} -80 -60 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -80 -80 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -410 -80 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 240 -20 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -40 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -200 -140 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} -120 -140 0 0 {name=p8 lab=VSS}
C {devices/ipin.sym} 0 -140 0 0 {name=p9 lab=IN}
C {devices/opin.sym} 40 -140 0 0 {name=p11 lab=OUT}
C {Inverter_Delayed.sym} -250 -60 0 0 {name=x2}
C {Inverter_Delayed.sym} 70 -20 0 0 {name=x3}
C {devices/lab_pin.sym} 570 20 1 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 570 0 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 890 60 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 890 40 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {Inverter_Delayed.sym} 400 20 0 0 {name=x1}
C {Inverter_Delayed.sym} 720 60 0 0 {name=x4}
C {devices/lab_pin.sym} 1220 100 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1220 80 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1540 140 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1540 120 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {Inverter_Delayed.sym} 1050 100 0 0 {name=x5}
C {Inverter_Delayed.sym} 1370 140 0 0 {name=x6}
C {devices/lab_pin.sym} 1870 180 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1870 160 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2190 220 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2190 200 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {Inverter_Delayed.sym} 1700 180 0 0 {name=x7}
C {Inverter_Delayed.sym} 2020 220 0 0 {name=x8}
C {devices/lab_pin.sym} 2520 260 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2520 240 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2840 300 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2840 280 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {Inverter_Delayed.sym} 2350 260 0 0 {name=x9}
C {Inverter_Delayed.sym} 2670 300 0 0 {name=x10}
C {devices/lab_pin.sym} 3170 340 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 3170 320 3 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 3490 380 1 0 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 3490 360 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {Inverter_Delayed.sym} 3000 340 0 0 {name=x11}
C {Inverter_Delayed.sym} 3320 380 0 0 {name=x12}
C {devices/lab_pin.sym} 3840 420 1 0 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 3840 400 3 0 {name=p33 sig_type=std_logic lab=VSS}
C {Inverter_Delayed.sym} 3670 420 0 0 {name=x13}
C {devices/lab_pin.sym} 4170 460 1 0 {name=p34 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 4170 440 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 4490 500 1 0 {name=p36 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 4490 480 3 0 {name=p37 sig_type=std_logic lab=VSS}
C {Inverter_Delayed.sym} 4000 460 0 0 {name=x14}
C {Inverter_Delayed.sym} 4320 500 0 0 {name=x15}
C {devices/lab_pin.sym} 4850 540 1 0 {name=p38 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 4850 520 3 0 {name=p39 sig_type=std_logic lab=VSS}
C {Inverter_Delayed.sym} 4680 540 0 0 {name=x16}
C {devices/lab_pin.sym} 4890 560 2 0 {name=p23 sig_type=std_logic lab=OUT}
