v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -30 240 -30 {
lab=VDD}
N 230 60 240 60 {
lab=VDD}
N 230 40 250 40 {
lab=VSS}
N 230 -50 250 -50 {
lab=VSS}
N 230 10 260 10 {
lab=Vdiv4}
N 250 -50 270 -50 {
lab=VSS}
N 240 -30 260 -30 {
lab=VDD}
N 230 100 260 100 {
lab=Vdiv4B}
N 240 -30 240 60 {
lab=VDD}
N 250 -50 250 40 {
lab=VSS}
N -80 -50 -70 -50 {
lab=RST}
N -80 -50 -80 40 {
lab=RST}
N -80 40 -70 40 {
lab=RST}
N -90 -30 -70 -30 {
lab=CLK}
N -90 60 -70 60 {
lab=CLKB}
C {devices/ipin.sym} 30 -90 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 60 -90 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 130 -90 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -40 -90 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 200 -90 0 0 {name=p18 lab=Vdiv4}
C {devices/opin.sym} 280 -90 0 0 {name=p6 lab=Vdiv4B}
C {devices/ipin.sym} -100 -90 0 0 {name=p7 lab=CLKB}
C {devices/lab_pin.sym} 260 10 2 0 {name=p20 sig_type=std_logic lab=Vdiv4}
C {devices/lab_pin.sym} 270 -50 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 -30 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 100 2 0 {name=p5 sig_type=std_logic lab=Vdiv4B}
C {devices/lab_pin.sym} -90 -30 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -80 -50 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -90 60 0 0 {name=p10 sig_type=std_logic lab=CLKB}
C {Diff_CLK_div_4.sym} 80 70 0 0 {name=x1}
C {CLK_div_4.sym} 80 -20 0 0 {name=x2}
