v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -70 150 -70 {
lab=I0}
N 130 -50 150 -50 {
lab=I1}
N 200 -10 200 10 {
lab=VSS}
N 230 -60 250 -60 {
lab=#net1}
N 200 -130 200 -110 {
lab=VDD}
N 180 -140 180 -120 {
lab=S0}
N 130 100 150 100 {
lab=I2}
N 130 120 150 120 {
lab=I3}
N 200 160 200 180 {
lab=VSS}
N 230 110 250 110 {
lab=#net2}
N 200 40 200 60 {
lab=VDD}
N 180 30 180 50 {
lab=S0}
N 350 -10 370 -10 {
lab=#net1}
N 350 10 370 10 {
lab=#net2}
N 420 50 420 70 {
lab=VSS}
N 450 0 470 0 {
lab=OUT}
N 420 -70 420 -50 {
lab=VDD}
N 400 -80 400 -60 {
lab=S1}
N 250 -60 310 -60 {
lab=#net1}
N 310 -60 310 -10 {
lab=#net1}
N 310 -10 350 -10 {
lab=#net1}
N 310 10 350 10 {
lab=#net2}
N 310 10 310 110 {
lab=#net2}
N 250 110 310 110 {
lab=#net2}
C {2x1_mux.sym} -50 60 0 0 {name=x1}
C {devices/lab_pin.sym} 200 -130 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 10 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 130 -70 0 0 {name=p3 sig_type=std_logic lab=I0}
C {devices/lab_pin.sym} 130 -50 0 0 {name=p4 sig_type=std_logic lab=I1}
C {2x1_mux.sym} -50 230 0 0 {name=x2}
C {devices/lab_pin.sym} 200 40 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 180 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 130 100 0 0 {name=p7 sig_type=std_logic lab=I2}
C {devices/lab_pin.sym} 130 120 0 0 {name=p8 sig_type=std_logic lab=I3}
C {2x1_mux.sym} 170 120 0 0 {name=x3}
C {devices/lab_pin.sym} 420 -70 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 70 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -140 0 0 {name=p13 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 180 30 0 0 {name=p14 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 400 -80 0 0 {name=p15 sig_type=std_logic lab=S1}
C {devices/lab_pin.sym} 470 0 0 1 {name=p11 sig_type=std_logic lab=OUT}
C {devices/iopin.sym} 10 -220 0 0 {name=p20 lab=VDD}
C {devices/iopin.sym} 110 -220 0 0 {name=p21 lab=VSS
}
C {devices/ipin.sym} 250 -220 0 0 {name=p22 lab=S1}
C {devices/opin.sym} 560 -210 0 0 {name=p23 lab=OUT}
C {devices/ipin.sym} 470 -220 0 0 {name=p24 lab=I2}
C {devices/ipin.sym} 520 -220 0 0 {name=p12 lab=I3}
C {devices/ipin.sym} 300 -220 0 0 {name=p16 lab=S0}
C {devices/ipin.sym} 360 -220 0 0 {name=p17 lab=I0}
C {devices/ipin.sym} 410 -220 0 0 {name=p18 lab=I1}
