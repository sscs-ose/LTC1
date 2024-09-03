v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -480 210 -480 {
lab=I0}
N 190 -460 210 -460 {
lab=I1}
N 190 -440 210 -440 {
lab=I2}
N 190 -420 210 -420 {
lab=I3}
N 350 -440 370 -440 {
lab=OUT}
N 280 -340 280 -320 {
lab=VSS}
N 260 -560 260 -540 {
lab=S1}
N 280 -560 280 -540 {
lab=S0}
N 310 -550 310 -530 {
lab=VDD}
N 180 -790 200 -790 {
lab=I0B}
N 180 -770 200 -770 {
lab=I1B}
N 180 -750 200 -750 {
lab=I2B}
N 180 -730 200 -730 {
lab=I3B}
N 340 -750 360 -750 {
lab=OUTB}
N 270 -650 270 -630 {
lab=VSS}
N 250 -870 250 -850 {
lab=S1}
N 270 -870 270 -850 {
lab=S0}
N 300 -860 300 -840 {
lab=VDD}
C {4x1_mux.sym} -70 -330 0 0 {name=x1}
C {devices/lab_pin.sym} 310 -550 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 -560 1 0 {name=p2 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 260 -560 1 0 {name=p3 sig_type=std_logic lab=S1}
C {devices/lab_pin.sym} 190 -480 0 0 {name=p4 sig_type=std_logic lab=I0
}
C {devices/lab_pin.sym} 190 -460 0 0 {name=p5 sig_type=std_logic lab=I1}
C {devices/lab_pin.sym} 190 -440 0 0 {name=p6 sig_type=std_logic lab=I2}
C {devices/lab_pin.sym} 190 -420 0 0 {name=p7 sig_type=std_logic lab=I3}
C {devices/lab_pin.sym} 280 -320 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 370 -440 2 0 {name=p9 sig_type=std_logic lab=OUT}
C {4x1_mux.sym} -80 -640 0 0 {name=x2}
C {devices/lab_pin.sym} 300 -860 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 270 -870 1 0 {name=p11 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 250 -870 1 0 {name=p12 sig_type=std_logic lab=S1}
C {devices/lab_pin.sym} 180 -790 0 0 {name=p13 sig_type=std_logic lab=I0B
}
C {devices/lab_pin.sym} 180 -770 0 0 {name=p14 sig_type=std_logic lab=I1B}
C {devices/lab_pin.sym} 180 -750 0 0 {name=p15 sig_type=std_logic lab=I2B}
C {devices/lab_pin.sym} 180 -730 0 0 {name=p16 sig_type=std_logic lab=I3B}
C {devices/lab_pin.sym} 270 -630 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -750 2 0 {name=p18 sig_type=std_logic lab=OUTB}
C {devices/iopin.sym} 160 -1010 0 0 {name=p20 lab=VDD}
C {devices/iopin.sym} 260 -1010 0 0 {name=p21 lab=VSS
}
C {devices/ipin.sym} 400 -1010 0 0 {name=p22 lab=S1}
C {devices/opin.sym} 710 -1000 0 0 {name=p23 lab=OUT}
C {devices/ipin.sym} 620 -1010 0 0 {name=p24 lab=I2}
C {devices/ipin.sym} 670 -1010 0 0 {name=p19 lab=I3}
C {devices/ipin.sym} 450 -1010 0 0 {name=p25 lab=S0}
C {devices/ipin.sym} 510 -1010 0 0 {name=p26 lab=I0}
C {devices/ipin.sym} 560 -1010 0 0 {name=p27 lab=I1}
C {devices/opin.sym} 710 -950 0 0 {name=p28 lab=OUTB}
C {devices/ipin.sym} 620 -960 0 0 {name=p29 lab=I2B}
C {devices/ipin.sym} 670 -960 0 0 {name=p30 lab=I3B}
C {devices/ipin.sym} 510 -960 0 0 {name=p31 lab=I0B}
C {devices/ipin.sym} 560 -960 0 0 {name=p32 lab=I1B}
