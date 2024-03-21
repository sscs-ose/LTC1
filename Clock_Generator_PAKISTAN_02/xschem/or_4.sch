v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -20 -280 -20 {
lab=#net1}
N 20 20 40 20 {
lab=#net2}
N 340 60 360 60 {
lab=#net3}
N -620 -40 -610 -40 {
lab=B}
N -620 -60 -610 -60 {
lab=A}
N -610 -60 -600 -60 {
lab=A}
N -610 -40 -600 -40 {
lab=B}
N -300 0 -280 0 {
lab=C}
N 20 40 40 40 {
lab=D}
N 360 60 390 60 {
lab=VOUT}
N 340 -60 340 20 {
lab=VSS}
N 20 -60 20 -20 {
lab=VSS}
N 340 40 350 40 {
lab=VDD}
N 350 -40 350 40 {
lab=VDD}
N 20 0 30 0 {
lab=VDD}
N 30 -40 30 0 {
lab=VDD}
N 320 -80 320 -70 {
lab=VDD}
N 320 -70 320 -40 {
lab=VDD}
N 340 -80 340 -60 {
lab=VSS}
N -300 -60 340 -60 {}
N -300 -40 350 -40 {}
C {devices/ipin.sym} -320 -110 0 0 {name=p2 lab=B}
C {devices/iopin.sym} -110 -110 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} -40 -110 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -390 -110 0 0 {name=p30 lab=A}
C {devices/opin.sym} 30 -110 0 0 {name=p18 lab=VOUT}
C {devices/ipin.sym} -190 -110 0 0 {name=p1 lab=D}
C {devices/ipin.sym} -260 -110 0 0 {name=p5 lab=C}
C {devices/lab_pin.sym} -620 -40 0 0 {name=p15 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -620 -60 0 0 {name=p12 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -300 0 0 0 {name=p7 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} 20 40 0 0 {name=p8 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 390 60 2 0 {name=p10 sig_type=std_logic lab=VOUT}
C {or_2.sym} -450 -40 0 0 {name=x6}
C {or_2.sym} -130 0 0 0 {name=x1}
C {or_2.sym} 190 40 0 0 {name=x2}
C {devices/lab_pin.sym} 340 -80 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 -80 1 0 {name=p13 sig_type=std_logic lab=VDD}
