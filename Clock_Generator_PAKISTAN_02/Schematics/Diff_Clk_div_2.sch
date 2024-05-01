v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 30 530 30 {
lab=Q0}
N -20 10 -10 10 {
lab=VDD}
N -20 10 -20 50 {
lab=VDD}
N -20 50 -10 50 {
lab=VDD}
N -30 30 -10 30 {
lab=RST}
N -20 -10 -10 -10 {
lab=CLK}
N -40 30 -30 30 {
lab=RST}
N 290 -10 300 -10 {
lab=VSS}
N 490 30 500 30 {
lab=Q0}
N -30 50 -20 50 {
lab=VDD}
N 290 30 310 30 {
lab=#net1}
N 310 10 320 10 {}
N 320 -20 320 10 {}
N 320 -20 380 -20 {}
N 300 -10 300 80 {}
N 300 80 380 80 {}
N 290 10 310 10 {}
C {devices/lab_pin.sym} -20 -10 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -40 30 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 530 30 2 0 {name=p10 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 300 -10 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 310 10 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 100 -50 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 130 -50 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 200 -50 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 270 -50 0 0 {name=p18 lab=Q0}
C {devices/ipin.sym} 30 -50 0 0 {name=p17 lab=RST}
C {devices/lab_pin.sym} -30 50 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {Diff_JK_flipflop.sym} 140 20 0 0 {name=x1}
C {GF_INV.sym} 380 30 0 0 {name=x2}
