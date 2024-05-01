v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1190 120 1210 120 {
lab=#net1}
N 1390 120 1420 120 {
lab=VOUT}
N 1200 -40 1200 180 {
lab=VSS}
N 1200 180 1280 180 {
lab=VSS}
N 1280 170 1280 180 {
lab=VSS}
N 1190 80 1200 80 {
lab=VSS}
N 1280 -20 1280 70 {
lab=VDD}
N 1190 100 1210 100 {
lab=VDD}
N 1210 -20 1210 100 {
lab=VDD}
N 1180 -60 1180 -50 {
lab=VDD}
N 1180 -50 1180 -20 {
lab=VDD}
N 1200 -60 1200 -40 {
lab=VSS}
N 1180 -20 1210 -20 {
lab=VDD}
N 1210 -20 1280 -20 {
lab=VDD}
N 880 80 890 80 {
lab=A}
N 870 100 890 100 {
lab=D}
N 870 80 880 80 {
lab=A}
N 870 120 890 120 {
lab=C}
N 870 140 890 140 {
lab=E}
N 870 160 890 160 {
lab=B}
C {GF_INV.sym} 1280 120 0 0 {name=x5}
C {devices/ipin.sym} 580 -100 0 0 {name=p2 lab=B}
C {devices/iopin.sym} 790 -100 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 860 -100 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 510 -100 0 0 {name=p30 lab=A}
C {devices/opin.sym} 930 -100 0 0 {name=p18 lab=VOUT}
C {devices/ipin.sym} 710 -100 0 0 {name=p1 lab=D}
C {devices/ipin.sym} 640 -100 0 0 {name=p5 lab=C}
C {devices/ipin.sym} 760 -100 0 0 {name=p6 lab=E}
C {devices/lab_pin.sym} 1420 120 2 0 {name=p10 sig_type=std_logic lab=VOUT}
C {devices/lab_pin.sym} 1200 -60 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1180 -60 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {and_5.sym} 1040 120 0 0 {name=x1}
C {devices/lab_pin.sym} 870 80 0 0 {name=p7 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 870 100 0 0 {name=p8 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 870 120 0 0 {name=p9 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} 870 140 0 0 {name=p12 sig_type=std_logic lab=E}
C {devices/lab_pin.sym} 870 160 0 0 {name=p14 sig_type=std_logic lab=B}
