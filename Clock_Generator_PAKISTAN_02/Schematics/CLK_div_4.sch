v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -280 80 -280 {
lab=#net1}
N 80 -350 80 -300 {
lab=RST}
N -250 -350 80 -350 {
lab=RST}
N -250 -350 -250 -320 {
lab=RST}
N -250 -320 -240 -320 {
lab=RST}
N -260 -300 -240 -300 {
lab=CLK}
N 380 -300 400 -300 {
lab=VSS}
N 400 -320 400 -300 {
lab=VSS}
N 60 -320 400 -320 {
lab=VSS}
N 60 -300 70 -300 {
lab=VDD}
N 70 -330 70 -300 {
lab=VDD}
N 70 -330 410 -330 {
lab=VDD}
N 410 -330 410 -280 {
lab=VDD}
N 380 -280 410 -280 {
lab=VDD}
N 380 -260 420 -260 {
lab=Vdiv4}
C {devices/lab_pin.sym} 360 -320 1 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -50 -200 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} -20 -200 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 50 -200 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 220 -200 0 0 {name=p1 lab=Vdiv4}
C {devices/ipin.sym} -120 -200 0 0 {name=p17 lab=RST}
C {CLK_div_2.sym} -90 -300 0 0 {name=x3}
C {CLK_div_2.sym} 230 -280 0 0 {name=x4}
C {devices/lab_pin.sym} 420 -260 2 0 {name=p5 sig_type=std_logic lab=Vdiv4}
C {devices/lab_pin.sym} -250 -300 0 0 {name=p8 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -250 -340 0 0 {name=p9 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 410 -330 1 0 {name=p10 sig_type=std_logic lab=VDD}
