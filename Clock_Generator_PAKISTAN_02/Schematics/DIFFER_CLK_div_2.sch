v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 30 210 30 {
lab=VDD}
N 200 10 220 10 {
lab=VSS}
N 200 -60 220 -60 {
lab=VSS}
N 200 -20 230 -20 {
lab=Vdiv2}
N 200 50 230 50 {
lab=Vdiv2B}
N 220 -60 240 -60 {
lab=VSS}
N 220 -60 220 10 {
lab=VSS}
N 200 -40 230 -40 {
lab=VDD}
N 210 -40 210 30 {
lab=VDD}
N -110 -60 -100 -60 {
lab=RST}
N -110 -60 -110 10 {
lab=RST}
N -110 10 -100 10 {
lab=RST}
N -120 -40 -100 -40 {
lab=CLK}
N -120 30 -100 30 {
lab=CLKB}
N -130 -40 -120 -40 {
lab=CLK}
N -130 -60 -110 -60 {
lab=RST}
N -130 30 -120 30 {
lab=CLKB}
C {CLK_div_2.sym} 50 -40 0 0 {name=x1}
C {Diff_Clk_div_2.sym} 50 30 0 0 {name=x4}
C {devices/lab_pin.sym} 230 -20 2 0 {name=p20 sig_type=std_logic lab=Vdiv2}
C {devices/lab_pin.sym} 230 50 2 0 {name=p1 sig_type=std_logic lab=Vdiv2B}
C {devices/lab_pin.sym} 240 -60 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -40 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 30 -100 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 60 -100 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 130 -100 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} -40 -100 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 200 -100 0 0 {name=p18 lab=Vdiv2}
C {devices/opin.sym} 280 -100 0 0 {name=p6 lab=Vdiv2B}
C {devices/ipin.sym} -100 -100 0 0 {name=p7 lab=CLKB}
C {devices/lab_pin.sym} -130 -40 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -130 -60 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -130 30 0 0 {name=p5 sig_type=std_logic lab=CLKB}
