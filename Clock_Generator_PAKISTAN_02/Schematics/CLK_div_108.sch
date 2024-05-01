v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 30 230 30 {
lab=#net1}
N 530 90 560 90 {
lab=#net2}
N 860 150 900 150 {
lab=#net3}
N -100 -70 -100 -50 {
lab=RST}
N -100 -70 1230 -70 {
lab=RST}
N 1230 230 1240 230 {
lab=RST}
N 890 190 900 190 {
lab=RST}
N 890 -70 890 190 {
lab=RST}
N 560 -70 560 70 {
lab=RST}
N 230 -70 230 10 {
lab=RST}
N 880 170 900 170 {
lab=VDD}
N 880 170 880 210 {
lab=VDD}
N 880 210 900 210 {
lab=VDD}
N 1220 210 1240 210 {
lab=VDD}
N 1220 250 1240 250 {
lab=VDD}
N 200 -30 1550 -30 {
lab=VDD}
N 1540 210 1550 210 {
lab=VDD}
N 1220 -30 1220 230 {
lab=VDD}
N 1200 170 1220 170 {
lab=VDD}
N 880 -30 880 170 {
lab=VDD}
N 860 90 880 90 {
lab=VDD}
N 530 30 540 30 {
lab=VDD}
N 540 -30 540 30 {
lab=VDD}
N 200 -50 1560 -50 {
lab=VSS}
N 1540 190 1560 190 {
lab=VSS}
N 1200 -50 1200 150 {
lab=VSS}
N 860 -50 860 70 {
lab=VSS}
N 530 -50 530 10 {
lab=VSS}
N 1200 190 1240 190 {
lab=#net4}
N 1230 -70 1230 230 {
lab=RST}
N 1220 230 1220 250 {
lab=VDD}
N 1550 -30 1550 210 {
lab=VDD}
N 1560 -50 1560 190 {
lab=VSS}
N -110 -30 -100 -30 {
lab=CLK}
N -110 -50 -100 -50 {
lab=RST}
N 1540 -70 1540 -60 {
lab=VDD}
N 1540 -60 1540 -30 {
lab=VDD}
N 1560 -70 1560 -50 {
lab=VSS}
N 1560 230 1580 230 {
lab=Vdiv108}
N 1540 230 1570 230 {
lab=#net5}
C {CLK_div_3.sym} 50 -10 0 0 {name=x2}
C {CLK_div_3.sym} 380 50 0 0 {name=x1}
C {CLK_div_3.sym} 710 110 0 0 {name=x3}
C {JK_flipflop.sym} 1050 180 0 0 {name=x4}
C {JK_flipflop.sym} 1390 220 0 0 {name=x5}
C {devices/ipin.sym} 570 -120 0 0 {name=p2 lab=CLK}
C {devices/iopin.sym} 600 -120 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 670 -120 0 0 {name=p4 lab=VDD}
C {devices/ipin.sym} 500 -120 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 740 -120 0 0 {name=p18 lab=Vdiv108}
C {devices/lab_pin.sym} -110 -30 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -110 -50 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 1560 -70 1 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1540 -70 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1580 230 2 0 {name=p1 sig_type=std_logic lab=Vdiv108}
