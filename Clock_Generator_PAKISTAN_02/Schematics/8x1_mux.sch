v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -180 240 -180 {
lab=I4}
N 220 -160 240 -160 {
lab=I5}
N 220 -140 240 -140 {
lab=I6}
N 220 -120 240 -120 {
lab=I7}
N 310 -40 310 -20 {
lab=VSS}
N 290 -260 290 -240 {
lab=S1}
N 310 -260 310 -240 {
lab=S0}
N 340 -250 340 -230 {
lab=VDD}
N 380 -140 410 -140 {
lab=#net1}
N 220 -480 240 -480 {
lab=I0}
N 220 -460 240 -460 {
lab=I1}
N 220 -440 240 -440 {
lab=I2}
N 220 -420 240 -420 {
lab=I3}
N 310 -340 310 -320 {
lab=VSS}
N 290 -560 290 -540 {
lab=S1}
N 310 -560 310 -540 {
lab=S0}
N 340 -550 340 -530 {
lab=VDD}
N 380 -440 410 -440 {
lab=#net2}
N 410 -440 440 -440 {
lab=#net2}
N 440 -440 440 -320 {
lab=#net2}
N 440 -320 540 -320 {
lab=#net2}
N 440 -300 540 -300 {
lab=#net1}
N 440 -300 440 -140 {
lab=#net1}
N 410 -140 440 -140 {
lab=#net1}
N 570 -390 570 -370 {
lab=S2}
N 590 -390 590 -360 {
lab=VDD}
N 590 -260 590 -240 {
lab=VSS}
N 620 -310 640 -310 {
lab=OUT}
C {4x1_mux.sym} -40 -30 0 0 {name=x1}
C {devices/lab_pin.sym} 340 -250 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 -20 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {4x1_mux.sym} -40 -330 0 0 {name=x2}
C {devices/lab_pin.sym} 340 -550 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 -320 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {2x1_mux.sym} 340 -190 0 0 {name=x3}
C {devices/lab_pin.sym} 590 -240 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -390 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 -480 0 0 {name=p7 sig_type=std_logic lab=I0}
C {devices/lab_pin.sym} 220 -460 0 0 {name=p8 sig_type=std_logic lab=I1}
C {devices/lab_pin.sym} 220 -440 0 0 {name=p9 sig_type=std_logic lab=I2}
C {devices/lab_pin.sym} 220 -420 0 0 {name=p10 sig_type=std_logic lab=I3}
C {devices/lab_pin.sym} 220 -180 0 0 {name=p11 sig_type=std_logic lab=I4}
C {devices/lab_pin.sym} 220 -160 0 0 {name=p12 sig_type=std_logic lab=I5}
C {devices/lab_pin.sym} 220 -140 0 0 {name=p13 sig_type=std_logic lab=I6}
C {devices/lab_pin.sym} 220 -120 0 0 {name=p14 sig_type=std_logic lab=I7}
C {devices/iopin.sym} 30 -670 0 0 {name=p20 lab=VDD}
C {devices/iopin.sym} 130 -670 0 0 {name=p21 lab=VSS
}
C {devices/ipin.sym} 360 -660 0 0 {name=p22 lab=S1}
C {devices/opin.sym} 580 -660 0 0 {name=p23 lab=OUT}
C {devices/ipin.sym} 450 -660 0 0 {name=p16 lab=S0}
C {devices/ipin.sym} 420 -620 0 0 {name=p19 lab=I6}
C {devices/ipin.sym} 470 -620 0 0 {name=p25 lab=I7}
C {devices/ipin.sym} 310 -620 0 0 {name=p26 lab=I4}
C {devices/ipin.sym} 360 -620 0 0 {name=p27 lab=I5}
C {devices/ipin.sym} 180 -620 0 0 {name=p28 lab=I2}
C {devices/ipin.sym} 230 -620 0 0 {name=p29 lab=I3}
C {devices/ipin.sym} 70 -620 0 0 {name=p30 lab=I0}
C {devices/ipin.sym} 120 -620 0 0 {name=p31 lab=I1}
C {devices/ipin.sym} 280 -660 0 0 {name=p15 lab=S2}
C {devices/lab_pin.sym} 570 -390 0 0 {name=p17 sig_type=std_logic lab=S2}
C {devices/lab_pin.sym} 310 -560 1 0 {name=p18 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 290 -560 1 0 {name=p24 sig_type=std_logic lab=S1}
C {devices/lab_pin.sym} 640 -310 0 1 {name=p32 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 310 -260 1 0 {name=p33 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 290 -260 1 0 {name=p34 sig_type=std_logic lab=S1}
