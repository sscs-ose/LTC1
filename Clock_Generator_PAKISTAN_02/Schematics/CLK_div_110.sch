v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -90 220 -90 {
lab=RST}
N 220 -90 220 -10 {
lab=RST}
N 200 10 220 10 {
lab=#net1}
N -100 -90 -100 -70 {
lab=RST}
N -120 -50 -100 -50 {
lab=CLK}
N 200 -70 210 -70 {
lab=VSS}
N 200 -50 210 -50 {
lab=VDD}
N 520 -10 530 -10 {
lab=VSS}
N 520 10 530 10 {
lab=VDD}
N 520 70 540 70 {
lab=#net2}
C {CLK_div_10.sym} 370 50 0 0 {name=x2}
C {devices/ipin.sym} 110 -110 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} 130 -110 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 200 -110 0 0 {name=p13 lab=VDD}
C {devices/ipin.sym} 40 -110 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 280 -110 0 0 {name=p18 lab=Vdiv110}
C {devices/lab_pin.sym} -100 -90 0 0 {name=p5 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -120 -50 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 210 -70 2 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 -50 2 0 {name=p37 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 -10 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 10 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 70 2 0 {name=p7 sig_type=std_logic lab=Vdiv110}
C {CLK_div_11_new.sym} 50 -10 0 0 {name=x1}
