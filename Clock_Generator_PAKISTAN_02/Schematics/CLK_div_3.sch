v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 -50 -110 -50 {
lab=CLK}
N -120 -50 -120 90 {
lab=CLK}
N -120 90 -110 90 {
lab=CLK}
N -130 -10 -110 -10 {
lab=RST}
N -130 -10 -130 130 {
lab=RST}
N -130 130 -110 130 {
lab=RST}
N -140 10 -110 10 {
lab=VDD}
N -140 10 -140 150 {
lab=VDD}
N -140 150 -110 150 {
lab=VDD}
N 190 110 200 110 {
lab=VDD}
N 200 70 200 110 {
lab=VDD}
N -140 70 200 70 {
lab=VDD}
N -150 -30 -110 -30 {
lab=#net1}
N -150 -30 -150 40 {
lab=#net1}
N -150 40 210 40 {
lab=#net1}
N 210 40 210 150 {
lab=#net1}
N 190 150 210 150 {
lab=#net1}
N -150 110 -110 110 {
lab=Q1}
N -150 60 -150 110 {
lab=Q1}
N -150 60 220 60 {
lab=Q1}
N 220 -10 220 60 {
lab=Q1}
N 190 -50 210 -50 {
lab=VSS}
N 190 -30 210 -30 {
lab=VDD}
N 190 90 220 90 {
lab=VSS}
N 530 -10 530 10 {
lab=VSS}
N 530 30 550 30 {
lab=VDD}
N 190 130 480 130 {
lab=Q0}
N 980 30 990 30 {
lab=#net2}
N 1290 10 1310 10 {
lab=VSS}
N 1290 30 1310 30 {
lab=VDD}
N 200 110 220 110 {
lab=VDD}
N 1290 50 1310 50 {
lab=Vdiv3}
N -120 30 230 30 {
lab=CLK}
N 220 10 230 10 {
lab=Q1}
N 190 -10 220 -10 {
lab=Q1}
N 530 50 560 50 {
lab=#net2}
N 980 30 980 50 {
lab=#net2}
N 960 10 990 10 {
lab=Q0}
N 960 10 960 130 {
lab=Q0}
N 480 130 540 130 {
lab=Q0}
N 540 130 960 130 {
lab=Q0}
N 980 50 980 70 {
lab=#net2}
N 860 70 980 70 {
lab=#net2}
N 560 50 560 70 {
lab=#net2}
N 560 70 860 70 {
lab=#net2}
C {JK_flipflop.sym} 40 -20 0 0 {name=x1}
C {JK_flipflop.sym} 40 120 0 0 {name=x2}
C {or_2.sym} 1140 30 0 0 {name=x4}
C {devices/ipin.sym} 180 -170 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 210 -170 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 280 -170 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 350 -170 0 0 {name=p5 lab=Q0}
C {devices/opin.sym} 420 -170 0 0 {name=p27 lab=Q1}
C {devices/ipin.sym} -20 -170 0 0 {name=p30 lab=RST}
C {devices/lab_pin.sym} 210 -50 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 -30 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 90 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 110 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1310 10 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1310 30 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 550 30 3 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 -10 1 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -130 130 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -120 -50 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 200 -10 3 0 {name=p16 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 220 130 3 0 {name=p17 sig_type=std_logic lab=Q0}
C {devices/opin.sym} 490 -170 0 0 {name=p18 lab=Vdiv3}
C {devices/lab_pin.sym} 1310 50 2 0 {name=p20 sig_type=std_logic lab=Vdiv3}
C {and_2.sym} 380 30 0 0 {name=x3}
