v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -90 110 -90 {
lab=I0}
N 90 -70 110 -70 {
lab=#net1}
N 160 -30 160 -10 {
lab=VSS}
N 240 -80 260 -80 {
lab=#net2}
N 155 -140 155 -130 {
lab=VDD}
N 155 -150 155 -140 {
lab=VDD}
N 100 90 120 90 {
lab=Sel}
N 100 110 120 110 {
lab=I1}
N 170 150 170 170 {
lab=VSS}
N 250 100 270 100 {
lab=#net3}
N 165 40 165 50 {
lab=VDD}
N 165 30 165 40 {
lab=VDD}
N 330 -10 350 -10 {
lab=#net2}
N 330 10 350 10 {
lab=#net3}
N 400 50 400 70 {
lab=VSS}
N 475 0 495 0 {
lab=OUT}
N 395 -60 395 -50 {
lab=VDD}
N 395 -70 395 -60 {
lab=VDD}
N -150 -90 -120 -90 {
lab=Sel}
N -70 -160 -70 -140 {
lab=VDD}
N -70 -30 -70 -10 {
lab=VSS}
N 270 100 280 100 {
lab=#net3}
N 260 -80 280 -80 {
lab=#net2}
N 235 -80 240 -80 {
lab=#net2}
N 245 100 250 100 {
lab=#net3}
N 330 -10 340 -10 {
lab=#net2}
N 280 -80 300 -80 {
lab=#net2}
N 40 -90 40 -60 {
lab=#net1}
N 40 -60 90 -60 {
lab=#net1}
N 90 -70 90 -60 {
lab=#net1}
N 300 -80 300 -10 {
lab=#net2}
N 300 -10 330 -10 {
lab=#net2}
N 280 100 290 100 {
lab=#net3}
N 290 10 290 100 {
lab=#net3}
N 290 10 340 10 {
lab=#net3}
C {devices/lab_pin.sym} 155 -150 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 -10 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -150 -90 0 0 {name=p3 sig_type=std_logic lab=Sel}
C {devices/lab_pin.sym} 170 170 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 90 0 0 {name=p6 sig_type=std_logic lab=Sel}
C {devices/lab_pin.sym} 100 110 0 0 {name=p7 sig_type=std_logic lab=I1}
C {devices/lab_pin.sym} 165 30 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 70 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 395 -70 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -70 -160 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -70 -10 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -140 -230 0 0 {name=p20 lab=VDD}
C {devices/iopin.sym} -40 -230 0 0 {name=p21 lab=VSS
}
C {devices/ipin.sym} 100 -230 0 0 {name=p22 lab=Sel}
C {devices/opin.sym} 300 -230 0 0 {name=p23 lab=OUT}
C {devices/ipin.sym} 210 -230 0 0 {name=p24 lab=I0}
C {devices/ipin.sym} 260 -230 0 0 {name=p10 lab=I1}
C {devices/lab_pin.sym} 495 0 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 90 -90 0 0 {name=p4 sig_type=std_logic lab=I0}
C {inv_my_ibr.sym} -560 40 0 0 {name=x4}
C {NAND_ibr_mx2.sym} 190 -50 0 0 {name=x1}
C {NAND_ibr_mx2.sym} 200 130 0 0 {name=x2}
C {NAND_ibr_mx2.sym} 430 30 0 0 {name=x3}
