v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -790 -140 -750 -140 {
lab=#net1}
N -450 -100 -420 -100 {
lab=#net2}
N -120 -60 -90 -60 {
lab=#net3}
N 210 -20 250 -20 {
lab=#net4}
N -790 -160 560 -160 {
lab=VDD}
N 560 -160 560 -20 {
lab=VDD}
N 550 -20 560 -20 {
lab=VDD}
N 210 -40 220 -40 {
lab=VDD}
N 220 -160 220 -40 {
lab=VDD}
N -120 -80 -110 -80 {
lab=VDD}
N -110 -160 -110 -80 {
lab=VDD}
N -450 -120 -440 -120 {
lab=VDD}
N -440 -160 -440 -120 {
lab=VDD}
N -1100 -160 -1090 -160 {
lab=VDD}
N -1100 -160 -1100 -120 {
lab=VDD}
N -1100 -120 -1090 -120 {
lab=VDD}
N -760 -120 -750 -120 {
lab=VDD}
N -760 -120 -760 -80 {
lab=VDD}
N -760 -80 -750 -80 {
lab=VDD}
N -430 -80 -420 -80 {
lab=VDD}
N -440 -80 -440 -40 {
lab=VDD}
N -430 -40 -420 -40 {
lab=VDD}
N -100 -40 -90 -40 {
lab=VDD}
N -110 -40 -110 0 {
lab=VDD}
N -100 0 -90 0 {
lab=VDD}
N -110 -80 -110 -40 {
lab=VDD}
N -110 -0 -100 -0 {
lab=VDD}
N -110 -40 -100 -40 {
lab=VDD}
N -440 -80 -430 -80 {
lab=VDD}
N -440 -40 -430 -40 {
lab=VDD}
N -440 -120 -440 -80 {
lab=VDD}
N -760 -160 -760 -120 {
lab=VDD}
N -1110 -100 -750 -100 {
lab=RST}
N -1110 -140 -1110 -100 {
lab=RST}
N -1110 -140 -1090 -140 {
lab=RST}
N -770 -60 -420 -60 {
lab=RST}
N -770 -100 -770 -60 {
lab=RST}
N -450 -20 -90 -20 {
lab=RST}
N -450 -60 -450 -20 {
lab=RST}
N 240 -40 250 -40 {
lab=RST}
N 240 -40 240 20 {
lab=RST}
N -120 20 240 20 {
lab=RST}
N -120 -20 -120 20 {
lab=RST}
N -1140 -180 -1090 -180 {
lab=#net5}
N -1140 -200 -760 -200 {
lab=VDD}
N -760 -200 -760 -160 {
lab=VDD}
N -1450 -200 -1440 -200 {
lab=VDD}
N -1450 -200 -1450 -160 {
lab=VDD}
N -1450 -160 -1430 -160 {
lab=VDD}
N -1450 -160 -1450 -150 {
lab=VDD}
N -1450 -150 -1450 -130 {
lab=VDD}
N -1450 -130 -1100 -130 {
lab=VDD}
N -1100 -200 -1100 -160 {
lab=VDD}
N -1460 -140 -1110 -140 {
lab=RST}
N -1460 -180 -1460 -140 {
lab=RST}
N -1460 -180 -1440 -180 {
lab=RST}
N -1460 -220 -1440 -220 {
lab=CLK}
N 550 -40 570 -40 {
lab=VSS}
N 560 -20 570 -20 {
lab=VDD}
N 210 -60 230 -60 {
lab=VSS}
N -120 -100 -100 -100 {
lab=VSS}
N -450 -140 -430 -140 {
lab=VSS}
N -790 -180 -770 -180 {
lab=VSS}
N -1140 -220 -1120 -220 {
lab=VSS}
N 580 40 600 40 {
lab=Vdiv96}
N 550 40 590 40 {
lab=#net6}
C {JK_flipflop.sym} 60 -30 0 0 {name=x1}
C {CLK_div_3.sym} 400 0 0 0 {name=x2}
C {JK_flipflop.sym} -270 -70 0 0 {name=x3}
C {JK_flipflop.sym} -600 -110 0 0 {name=x4}
C {JK_flipflop.sym} -940 -150 0 0 {name=x5}
C {JK_flipflop.sym} -1290 -190 0 0 {name=x6}
C {devices/ipin.sym} -420 -280 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} -390 -280 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} -320 -280 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -490 -280 0 0 {name=p30 lab=RST}
C {devices/opin.sym} -250 -280 0 0 {name=p18 lab=Vdiv96}
C {devices/lab_pin.sym} -1460 -220 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 570 -40 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 570 -20 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 -60 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -100 -100 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -430 -140 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -770 -180 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1120 -220 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -1460 -180 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 600 40 2 0 {name=p9 sig_type=std_logic lab=Vdiv96}
