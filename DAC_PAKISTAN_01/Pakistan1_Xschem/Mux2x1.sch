v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -270 300 -190 {
lab=#net1}
N 410 -230 440 -230 {
lab=VDD}
N 380 -130 410 -130 {
lab=VSS}
N 230 -330 260 -330 {
lab=VDD}
N 200 -210 230 -210 {
lab=VSS}
N 230 -150 260 -150 {
lab=VDD}
N 200 -30 230 -30 {
lab=VSS}
N 200 -380 230 -380 {
lab=VSS}
N 230 -480 260 -480 {
lab=VDD}
N 340 -430 370 -430 {
lab=SEL_B}
N 120 -430 160 -430 {
lab=SEL}
N 130 -280 160 -280 {
lab=A}
N 130 -260 160 -260 {
lab=SEL}
N 130 -100 160 -100 {
lab=B}
N 130 -80 160 -80 {
lab=#net2}
N 470 -180 510 -180 {
lab=OUT}
N 300 -190 300 -170 {
lab=#net1}
N 300 -170 350 -170 {
lab=#net1}
N 320 -190 350 -190 {
lab=#net3}
N 320 -190 320 -90 {
lab=#net3}
N 300 -90 320 -90 {
lab=#net3}
C {AND.sym} 150 -200 0 0 {name=x1}
C {AND.sym} 150 -20 0 0 {name=x2}
C {GF_INV.sym} 230 -430 0 0 {name=x3}
C {OR.sym} 100 -30 0 0 {name=x4}
C {devices/lab_pin.sym} 260 -480 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -330 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -150 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 440 -230 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -380 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -210 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -30 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -130 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 20 -200 0 0 {name=p9 lab=VDD}
C {devices/iopin.sym} 20 -180 0 0 {name=p10 lab=VSS}
C {devices/ipin.sym} 70 -150 0 0 {name=p11 lab=A}
C {devices/ipin.sym} 70 -130 0 0 {name=p12 lab=B}
C {devices/ipin.sym} 70 -110 0 0 {name=p13 lab=SEL}
C {devices/opin.sym} 20 -80 0 0 {name=p14 lab=OUT}
C {devices/lab_pin.sym} 130 -280 0 0 {name=p15 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 510 -180 0 0 {name=p19 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 120 -430 0 0 {name=p20 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} 370 -430 0 0 {name=p21 sig_type=std_logic lab=SEL_B}
C {devices/lab_pin.sym} 130 -260 0 0 {name=p16 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} 130 -80 0 0 {name=p17 sig_type=std_logic lab=SEL_B}
C {devices/lab_pin.sym} 130 -100 0 0 {name=p18 sig_type=std_logic lab=B}
