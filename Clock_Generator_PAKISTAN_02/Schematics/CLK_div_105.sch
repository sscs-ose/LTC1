v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 0 230 -0 {
lab=#net1}
N -80 -100 -80 -80 {
lab=RST}
N -80 -100 230 -100 {
lab=RST}
N 230 -100 230 -20 {
lab=RST}
N 220 -80 240 -80 {
lab=VSS}
N 220 -60 240 -60 {
lab=VDD}
N 530 -20 550 -20 {
lab=VSS}
N 530 0 550 0 {
lab=VDD}
N -100 -60 -80 -60 {
lab=CLK}
N 530 60 550 60 {
lab=Vdiv105}
N 850 80 870 80 {
lab=Vdiv105}
N 550 60 720 60 {
lab=Vdiv105}
N 720 60 720 70 {
lab=Vdiv105}
N 720 70 720 80 {
lab=Vdiv105}
N 720 80 850 80 {
lab=Vdiv105}
C {CLK_div_10.sym} 70 -20 0 0 {name=x1}
C {CLK_div_10.sym} 380 40 0 0 {name=x2}
C {devices/lab_pin.sym} 240 -80 2 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -60 2 0 {name=p37 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 550 -20 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 0 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 170 -130 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} 190 -130 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 260 -130 0 0 {name=p13 lab=VDD}
C {devices/ipin.sym} 100 -130 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 340 -130 0 0 {name=p18 lab=Vdiv105}
C {devices/lab_pin.sym} -100 -60 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -80 -100 0 0 {name=p4 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 870 80 2 0 {name=p5 sig_type=std_logic lab=Vdiv105}
