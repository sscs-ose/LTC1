v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -545 -170 -520 -170 {
lab=CLK}
N -545 -190 -520 -190 {
lab=RST}
N -220 -110 -180 -110 {
lab=#net1}
N 120 -50 180 -50 {
lab=#net2}
N -205 -130 -180 -130 {
lab=RST}
N 155 -70 180 -70 {
lab=RST}
N -210 -190 -200 -190 {
lab=VSS}
N -220 -170 -200 -170 {
lab=VDD}
N -220 -190 -210 -190 {
lab=VSS}
N 130 -130 140 -130 {
lab=VSS}
N 120 -110 140 -110 {
lab=VDD}
N 120 -130 130 -130 {
lab=VSS}
N 490 -70 500 -70 {
lab=VSS}
N 480 -50 500 -50 {
lab=VDD}
N 480 -70 490 -70 {
lab=VSS}
N 510 10 530 10 {
lab=Vdiv99}
N 480 10 510 10 {
lab=#net3}
C {CLK_div_3.sym} -30 -90 0 0 {name=x2}
C {CLK_div_3.sym} -370 -150 0 0 {name=x3}
C {devices/ipin.sym} -315 -250 0 0 {name=p3 lab=CLK}
C {devices/iopin.sym} -285 -250 0 0 {name=p4 lab=VSS
}
C {devices/iopin.sym} -215 -250 0 0 {name=p5 lab=VDD}
C {devices/opin.sym} -145 -250 0 0 {name=p19 lab=Vdiv99}
C {devices/lab_pin.sym} -545 -170 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -545 -190 0 0 {name=p1 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -205 -130 0 0 {name=p2 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 155 -70 0 0 {name=p7 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -200 -190 2 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -200 -170 2 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 -130 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 -110 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -70 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -50 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 10 2 0 {name=p16 sig_type=std_logic lab=Vdiv99}
C {devices/ipin.sym} -380 -250 0 0 {name=p6 lab=RST}
C {CLK_div_11_new.sym} 330 -10 0 0 {name=x1}
