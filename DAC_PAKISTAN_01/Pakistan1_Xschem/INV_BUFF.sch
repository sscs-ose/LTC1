v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -120 330 -120 {
lab=VDD}
N 150 -20 330 -20 {
lab=VSS}
N 50 -70 80 -70 {
lab=IN}
N 440 -70 470 -70 {
lab=OUT}
C {devices/lab_pin.sym} 240 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 -20 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -70 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 50 -70 0 0 {name=p4 sig_type=std_logic lab=IN}
C {devices/opin.sym} 280 -160 0 0 {name=p5 lab=OUT}
C {devices/iopin.sym} 80 -160 0 0 {name=p6 lab=VDD}
C {devices/iopin.sym} 140 -160 0 0 {name=p7 lab=VSS}
C {devices/ipin.sym} 260 -160 0 0 {name=p8 lab=IN}
C {Inverter.sym} 150 -70 0 0 {name=x1}
C {Inverter.sym} 330 -70 0 0 {name=x2}
