v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 70 250 70 {
lab=#net1}
N -90 -70 -80 -70 {
lab=CLK}
N 240 50 250 50 {
lab=RST}
N 230 -70 240 -70 {
lab=VSS}
N 220 -70 230 -70 {
lab=VSS}
N 220 -50 240 -50 {
lab=VDD}
N 560 50 570 50 {
lab=VSS}
N 550 50 560 50 {
lab=VSS}
N 550 70 570 70 {
lab=VDD}
N 550 130 580 130 {
lab=Vdiv93}
N -90 -50 -80 -50 {
lab=CLK}
C {CLK_div_31.sym} 70 0 0 0 {name=x1}
C {CLK_div_3.sym} 400 90 0 0 {name=x2}
C {devices/ipin.sym} 30 -110 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 60 -110 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 130 -110 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 210 -110 0 0 {name=p28 lab=Vdiv93}
C {devices/lab_pin.sym} -90 -70 0 0 {name=p15 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 240 50 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 240 -70 2 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -50 2 0 {name=p25 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -40 -110 0 0 {name=p1 lab=RST}
C {devices/lab_pin.sym} 570 50 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 570 70 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 580 130 2 0 {name=p7 sig_type=std_logic lab=Vdiv93}
C {devices/lab_pin.sym} -90 -50 0 0 {name=p8 sig_type=std_logic lab=CLK}
