v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -80 -20 -80 {
lab=#net1}
N 130 -50 190 -50 {
lab=#net2}
N 500 -80 600 -80 {
lab=#net3}
N 790 -70 910 -70 {
lab=#net4}
N 1060 -40 1210 -40 {
lab=1}
N 1360 -10 1400 -10 {
lab=#net5}
N 1400 -380 1400 -10 {
lab=#net5}
N 1000 -380 1400 -380 {
lab=#net5}
N 300 -70 370 -70 {
lab=#net6}
N -330 -390 810 -390 {
lab=#net7}
N -330 -390 -330 -110 {
lab=#net7}
N -330 -110 -240 -110 {
lab=#net7}
N 340 -90 370 -90 {
lab=#net7}
N 340 -390 340 -90 {
lab=#net7}
N 150 -50 150 170 {
lab=#net2}
N -350 170 150 170 {
lab=#net2}
N -350 -70 -350 170 {
lab=#net2}
N -350 -70 -240 -70 {
lab=#net2}
N -190 -190 -190 -160 {
lab=VDD}
N -190 -20 -190 10 {
lab=VSS}
N 140 -70 190 -70 {
lab=1}
N 390 360 450 360 {
lab=#net8}
N 640 370 680 370 {
lab=#net9}
N -290 -90 -240 -90 {}
C {DFF.sym} 130 -80 0 0 {name=x1}
C {3_inp_AND.sym} -90 -90 0 0 {name=x2}
C {OR.sym} 340 -50 0 0 {name=x3}
C {NAND.sym} 520 -70 0 0 {name=x4}
C {inverter.sym} 750 -60 0 0 {name=x5}
C {DFF.sym} 1060 -70 0 0 {name=x6}
C {DFF.sym} 1360 -40 0 0 {name=x7}
C {inverter.sym} 850 -400 2 0 {name=x8}
C {devices/iopin.sym} -190 10 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} -190 -190 3 0 {name=p2 lab=VDD}
C {devices/lab_wire.sym} 170 -70 0 0 {name=p3 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 170 -70 0 0 {name=p4 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 1120 -40 0 0 {name=p5 sig_type=std_logic lab=1}
C {inverter.sym} 600 380 0 0 {name=x9}
C {devices/lab_wire.sym} 420 360 0 0 {name=p6 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 670 370 0 0 {name=p7 sig_type=std_logic lab=1b}
C {devices/lab_wire.sym} -280 -90 0 0 {name=p8 sig_type=std_logic lab=1b}
