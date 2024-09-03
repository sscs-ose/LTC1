v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -40 220 -40 {
lab=VDD}
N 220 -40 220 70 {
lab=VDD}
N 210 70 220 70 {
lab=VDD}
N 210 50 230 50 {
lab=VSS}
N 230 -60 230 50 {
lab=VSS}
N 210 -60 230 -60 {
lab=VSS}
N 210 20 240 20 {
lab=Vdiv3}
N 210 130 240 130 {
lab=Vdiv3B}
N 230 -60 250 -60 {
lab=VSS}
N 220 -40 240 -40 {
lab=VDD}
N -100 -40 -90 -40 {
lab=CLK}
N -100 70 -90 70 {
lab=CLKB}
N -110 50 -90 50 {
lab=RST}
N -110 -60 -110 50 {
lab=RST}
N -110 -60 -90 -60 {
lab=RST}
N -130 -40 -120 -40 {
lab=CLK}
N -120 -40 -100 -40 {
lab=CLK}
N -130 -60 -110 -60 {
lab=RST}
N -110 70 -100 70 {
lab=CLKB}
C {devices/ipin.sym} -40 -100 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} -10 -100 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 60 -100 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -110 -100 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 130 -100 0 0 {name=p18 lab=Vdiv3}
C {devices/lab_pin.sym} 240 20 2 0 {name=p20 sig_type=std_logic lab=Vdiv3}
C {devices/lab_pin.sym} 240 130 2 0 {name=p1 sig_type=std_logic lab=Vdiv3B}
C {devices/lab_pin.sym} 250 -60 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -40 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -130 -40 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -130 -60 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/opin.sym} 210 -100 0 0 {name=p6 lab=Vdiv3B}
C {devices/lab_pin.sym} -110 70 0 0 {name=p5 sig_type=std_logic lab=CLKB}
C {devices/ipin.sym} -170 -100 0 0 {name=p7 lab=CLKB}
C {CLK_div_3.sym} 60 -20 0 0 {name=x1}
C {Diff_CLK_div_3.sym} 60 90 0 0 {name=x2}
