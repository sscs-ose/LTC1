v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -90 -90 -70 {
lab=RST}
N -90 -90 230 -90 {
lab=RST}
N 230 -90 230 -10 {
lab=RST}
N 550 -30 550 50 {
lab=RST}
N 230 -30 550 -30 {
lab=RST}
N 530 70 550 70 {
lab=#net1}
N 210 10 230 10 {
lab=#net2}
N 210 -70 220 -70 {
lab=VSS}
N 210 -50 220 -50 {
lab=VDD}
N 530 -10 540 -10 {
lab=VSS}
N 530 10 540 10 {
lab=VDD}
N 850 50 860 50 {
lab=VSS}
N 850 70 860 70 {
lab=VDD}
N -110 -50 -90 -50 {
lab=CLK}
N 1170 150 1180 150 {
lab=Vdiv90}
N 850 130 870 130 {
lab=#net3}
N 870 130 960 130 {}
N 960 130 960 150 {}
N 960 150 1170 150 {}
C {CLK_div_3.sym} 60 -30 0 0 {name=x1}
C {CLK_div_3.sym} 380 30 0 0 {name=x2}
C {CLK_div_10.sym} 700 110 0 0 {name=x3}
C {devices/lab_pin.sym} 220 -70 2 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 -50 2 0 {name=p37 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 -10 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 540 10 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 860 50 2 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 860 70 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 310 -140 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} 330 -140 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 400 -140 0 0 {name=p13 lab=VDD}
C {devices/ipin.sym} 240 -140 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 480 -140 0 0 {name=p18 lab=Vdiv90}
C {devices/lab_pin.sym} -90 -90 0 0 {name=p5 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -110 -50 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 1180 150 2 0 {name=p7 sig_type=std_logic lab=Vdiv90}
