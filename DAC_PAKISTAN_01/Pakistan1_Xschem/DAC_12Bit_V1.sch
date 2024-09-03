v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -175 460 -175 {
lab=Iout+}
N 430 -155 460 -155 {
lab=Iout-}
N 750 -175 780 -175 {
lab=Iout-}
N 750 -155 780 -155 {
lab=Iout+}
N 660 -85 660 -45 {
lab=VSS}
N 540 -215 570 -215 {
lab=B7}
N 540 -195 570 -195 {
lab=B8}
N 540 -175 570 -175 {
lab=B9}
N 540 -155 570 -155 {
lab=B10}
N 540 -135 570 -135 {
lab=B11}
N 540 -115 570 -115 {
lab=B12}
N 640 -265 640 -245 {
lab=VDD}
N 680 -265 680 -245 {
lab=I2}
N 680 -295 680 -265 {
lab=I2}
N 100 -215 130 -215 {
lab=B1}
N 100 -195 130 -195 {
lab=B2}
N 100 -175 130 -175 {
lab=B3}
N 100 -155 130 -155 {
lab=B4}
N 100 -135 130 -135 {
lab=B5}
N 100 -115 130 -115 {
lab=B6}
N 100 -95 130 -95 {
lab=VDD}
N 250 -265 640 -265 {
lab=VDD}
N 250 -265 250 -245 {
lab=VDD}
N 290 -255 290 -245 {
lab=VSS}
N 290 -255 325 -255 {
lab=VSS}
N 100 -75 130 -75 {
lab=#net1}
C {MSB_6Bit.sym} 670 -165 0 0 {name=x1}
C {devices/lab_pin.sym} 410 -265 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 100 -95 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 -55 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 -215 0 0 {name=p4 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} 100 -195 0 0 {name=p5 sig_type=std_logic lab=B2}
C {devices/lab_pin.sym} 100 -175 0 0 {name=p6 sig_type=std_logic lab=B3}
C {devices/lab_pin.sym} 100 -155 0 0 {name=p7 sig_type=std_logic lab=B4}
C {devices/lab_pin.sym} 100 -135 0 0 {name=p8 sig_type=std_logic lab=B5}
C {devices/lab_pin.sym} 100 -115 0 0 {name=p9 sig_type=std_logic lab=B6}
C {devices/lab_pin.sym} 540 -215 0 0 {name=p10 sig_type=std_logic lab=B7}
C {devices/lab_pin.sym} 540 -195 0 0 {name=p11 sig_type=std_logic lab=B8}
C {devices/lab_pin.sym} 540 -175 0 0 {name=p12 sig_type=std_logic lab=B9}
C {devices/lab_pin.sym} 540 -155 0 0 {name=p13 sig_type=std_logic lab=B10}
C {devices/lab_pin.sym} 540 -135 0 0 {name=p14 sig_type=std_logic lab=B11}
C {devices/lab_pin.sym} 540 -115 0 0 {name=p15 sig_type=std_logic lab=B12}
C {devices/lab_pin.sym} 460 -175 0 0 {name=p16 sig_type=std_logic lab=Iout+}
C {devices/lab_pin.sym} 460 -155 0 0 {name=p17 sig_type=std_logic lab=Iout-}
C {devices/lab_pin.sym} 780 -175 0 0 {name=p18 sig_type=std_logic lab=Iout-}
C {devices/lab_pin.sym} 780 -155 0 0 {name=p19 sig_type=std_logic lab=Iout+}
C {devices/lab_pin.sym} 680 -295 0 0 {name=p21 sig_type=std_logic lab=I2}
C {devices/iopin.sym} 70 -355 0 0 {name=p24 lab=VDD}
C {devices/iopin.sym} 70 -325 0 0 {name=p25 lab=VSS}
C {devices/ipin.sym} 190 -355 0 0 {name=p22 lab=B1}
C {devices/ipin.sym} 190 -325 0 0 {name=p23 lab=B2}
C {devices/ipin.sym} 260 -355 0 0 {name=p26 lab=B3}
C {devices/ipin.sym} 260 -325 0 0 {name=p27 lab=B4}
C {devices/ipin.sym} 330 -355 0 0 {name=p28 lab=B5}
C {devices/ipin.sym} 330 -325 0 0 {name=p29 lab=B6}
C {devices/ipin.sym} 400 -355 0 0 {name=p30 lab=B7}
C {devices/ipin.sym} 400 -325 0 0 {name=p31 lab=B8}
C {devices/ipin.sym} 460 -355 0 0 {name=p32 lab=B9}
C {devices/ipin.sym} 460 -325 0 0 {name=p33 lab=B10}
C {devices/ipin.sym} 520 -355 0 0 {name=p34 lab=B11}
C {devices/ipin.sym} 520 -325 0 0 {name=p35 lab=B12}
C {devices/ipin.sym} 580 -355 0 0 {name=p36 lab=I1}
C {devices/ipin.sym} 580 -325 0 0 {name=p37 lab=I2}
C {devices/opin.sym} 610 -355 0 0 {name=p38 lab=Iout-}
C {devices/opin.sym} 610 -325 0 0 {name=p39 lab=Iout+}
C {LSB_V1.sym} 280 -145 0 0 {name=x2}
C {devices/lab_pin.sym} 315 -255 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 -75 0 0 {name=p40 sig_type=std_logic lab=I1}
