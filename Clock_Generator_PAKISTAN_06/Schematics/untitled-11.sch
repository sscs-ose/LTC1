v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -30 170 -30 {
lab=#net1}
N 280 -30 400 -30 {
lab=#net2}
N 510 -30 630 -30 {
lab=#net3}
N 780 0 870 -0 {
lab=OUT}
N 850 -0 850 220 {
lab=OUT}
N -190 220 850 220 {
lab=OUT}
N -190 -30 -190 220 {
lab=OUT}
N -190 -30 -40 -30 {
lab=OUT}
N -100 -10 -40 -10 {
lab=CLK}
N 20 -130 20 -80 {
lab=VDD}
N 20 40 20 80 {
lab=VSS}
N 230 -110 230 -80 {
lab=VDD}
N 230 40 230 70 {
lab=VSS}
N 460 -110 460 -80 {
lab=VDD}
N 460 40 460 80 {
lab=VSS}
N 710 -120 710 -80 {
lab=VDD}
N 710 110 710 150 {
lab=VSS}
N 130 -10 170 -10 {
lab=#net4}
N 360 -10 400 -10 {
lab=#net5}
N 580 -50 630 -50 {
lab=#net6}
C {HT_register.sym} 110 -10 0 0 {name=x1}
C {HT_register.sym} 320 -10 0 0 {name=x3}
C {HT_register.sym} 550 -10 0 0 {name=x4}
C {DFF.sym} 780 -30 0 0 {name=x2}
C {devices/iopin.sym} 20 80 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 20 -130 3 0 {name=p2 lab=VDD}
C {devices/ipin.sym} -100 -10 0 0 {name=p3 lab=CLK}
C {devices/opin.sym} 870 0 0 0 {name=p4 lab=OUT}
C {devices/lab_wire.sym} 230 -90 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 460 -90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 710 -100 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 230 60 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 460 70 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 710 140 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 150 -10 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 380 -10 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 600 -50 0 0 {name=p13 sig_type=std_logic lab=CLK}
