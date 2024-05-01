v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -130 120 -100 {
lab=VSS}
N 160 -130 160 -100 {
lab=VDD}
N 140 -110 140 -80 {
lab=SB}
N 70 -60 90 -60 {
lab=I0}
N 190 -60 210 -60 {
lab=OUT}
N 120 60 120 90 {
lab=VSS}
N 160 60 160 90 {
lab=VDD}
N 140 80 140 110 {
lab=S}
N 70 130 90 130 {
lab=I1}
N 190 130 210 130 {
lab=OUT}
N 210 -60 250 -60 {
lab=OUT}
N 250 -60 250 130 {
lab=OUT}
N 210 130 250 130 {
lab=OUT}
N 250 40 280 40 {
lab=OUT}
N 430 -80 450 -80 {
lab=S}
N 500 -150 500 -130 {
lab=VSS}
N 500 -20 500 -0 {
lab=VSS}
N 610 -80 630 -80 {
lab=#net1}
C {tg.sym} 40 70 0 0 {name=x1}
C {devices/lab_pin.sym} 120 -130 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 70 -60 0 0 {name=p2 sig_type=std_logic lab=I0}
C {devices/lab_pin.sym} 280 40 2 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 160 -130 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 -110 1 0 {name=p5 sig_type=std_logic lab=SB}
C {tg.sym} 40 260 0 0 {name=x2}
C {devices/lab_pin.sym} 120 60 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 70 130 0 0 {name=p7 sig_type=std_logic lab=I1}
C {devices/lab_pin.sym} 160 60 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 80 1 0 {name=p9 sig_type=std_logic lab=S}
C {devices/ipin.sym} 220 -190 0 0 {name=p10 lab=I0}
C {devices/ipin.sym} 280 -190 0 0 {name=p11 lab=I1}
C {devices/ipin.sym} 360 -190 0 0 {name=p12 lab=S}
C {devices/iopin.sym} 100 -190 0 0 {name=p13 lab=VSS}
C {devices/iopin.sym} 20 -190 0 0 {name=p14 lab=VDD}
C {devices/opin.sym} 480 -190 0 0 {name=p16 lab=OUT}
C {inv_my.sym} 10 50 0 0 {name=x3}
C {devices/lab_pin.sym} 500 0 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -150 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 430 -80 0 0 {name=p18 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 630 -80 2 0 {name=p19 sig_type=std_logic lab=SB}
