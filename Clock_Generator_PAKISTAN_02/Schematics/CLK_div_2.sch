v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 20 160 20 {
lab=Vdiv2}
N -190 0 -180 0 {
lab=VDD}
N -190 0 -190 40 {
lab=VDD}
N -190 40 -180 40 {
lab=VDD}
N -200 20 -180 20 {
lab=RST}
N -190 -20 -180 -20 {
lab=CLK}
N -210 20 -200 20 {
lab=RST}
N 120 -20 130 -20 {
lab=VSS}
N 120 0 130 0 {
lab=VDD}
N 120 20 130 20 {
lab=Vdiv2}
N 130 0 140 0 {
lab=VDD}
N -200 40 -190 40 {
lab=VDD}
C {JK_flipflop.sym} -30 10 0 0 {name=x1}
C {devices/lab_pin.sym} -190 -20 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -210 20 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 160 20 2 0 {name=p10 sig_type=std_logic lab=Vdiv2}
C {devices/lab_pin.sym} 130 -20 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 140 0 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -70 -60 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} -40 -60 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 30 -60 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 100 -60 0 0 {name=p18 lab=Vdiv2}
C {devices/ipin.sym} -140 -60 0 0 {name=p17 lab=RST}
C {devices/lab_pin.sym} -200 40 0 0 {name=p1 sig_type=std_logic lab=VDD}
