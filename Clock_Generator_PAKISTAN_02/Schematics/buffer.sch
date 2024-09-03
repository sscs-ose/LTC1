v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 570 -220 570 -200 {
lab=VDD}
N 570 -100 570 -80 {
lab=VSS}
N 490 -150 500 -150 {
lab=IN}
N 770 -220 770 -200 {
lab=VDD}
N 770 -100 770 -80 {
lab=VSS}
N 880 -150 900 -150 {
lab=OUT}
N 680 -150 700 -150 {
lab=#net1}
C {devices/lab_pin.sym} 570 -220 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 570 -80 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 -150 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 770 -220 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 770 -80 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 900 -150 2 0 {name=p6 sig_type=std_logic lab=OUT}
C {devices/iopin.sym} 550 -300 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 630 -300 0 0 {name=p8 lab=VSS}
C {devices/ipin.sym} 750 -300 0 0 {name=p9 lab=IN}
C {devices/opin.sym} 790 -300 0 0 {name=p11 lab=OUT}
C {GF_INV.sym} 770 -150 0 0 {name=x1}
C {GF_INV.sym} 570 -150 0 0 {name=x2}
