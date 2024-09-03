v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -200 290 -200 {
lab=VDD}
N 110 -100 290 -100 {
lab=VSS}
N 10 -150 40 -150 {
lab=IN}
N 400 -150 430 -150 {
lab=OUT}
C {GF_INV.sym} 110 -150 0 0 {name=x1}
C {GF_INV.sym} 290 -150 0 0 {name=x2}
C {devices/lab_pin.sym} 200 -200 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -100 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 430 -150 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 10 -150 0 0 {name=p4 sig_type=std_logic lab=IN}
C {devices/opin.sym} 240 -240 0 0 {name=p5 lab=OUT}
C {devices/iopin.sym} 40 -240 0 0 {name=p6 lab=VDD}
C {devices/iopin.sym} 100 -240 0 0 {name=p7 lab=VSS}
C {devices/ipin.sym} 220 -240 0 0 {name=p8 lab=IN}
