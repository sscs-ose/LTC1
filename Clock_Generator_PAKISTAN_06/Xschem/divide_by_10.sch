v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -20 240 -20 {
lab=#net1}
N 380 -20 440 -20 {
lab=OUT}
N 80 -130 80 -90 {
lab=VDD}
N 300 -120 300 -80 {
lab=VDD}
N 80 60 80 90 {
lab=VSS}
N 300 50 300 90 {
lab=xxx}
N -30 -10 10 -10 {
lab=CLK}
C {div_555.sym} 160 10 0 0 {name=x1}
C {div_by_2.sym} 390 0 0 0 {name=x2}
C {div_by_2.sym} 390 0 0 0 {name=x3}
C {devices/iopin.sym} 80 -130 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 80 90 1 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -30 -10 0 0 {name=p3 lab=CLK}
C {devices/opin.sym} 440 -20 0 0 {name=p4 lab=OUT}
C {devices/lab_wire.sym} 300 -100 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 300 80 0 0 {name=p6 sig_type=std_logic lab=VSS}
