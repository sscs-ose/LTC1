v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -440 510 -420 {
lab=VCNTL}
N 370 -230 510 -230 {
lab=VSS}
N 370 -440 370 -370 {
lab=VCNTL}
N 370 -480 370 -440 {
lab=VCNTL}
N 510 -480 510 -440 {
lab=VCNTL}
N 370 -480 510 -480 {
lab=VCNTL}
N 540 -430 540 -420 {
lab=VDD}
N 540 -430 560 -430 {
lab=VDD}
N 510 -230 520 -230 {
lab=VSS}
N 520 -240 520 -230 {
lab=VSS}
N 510 -430 510 -420 {
lab=VCNTL}
N 370 -280 370 -230 {
lab=VSS}
N 520 -320 520 -310 {
lab=#net1}
C {devices/lab_pin.sym} 440 -230 1 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 510 -480 0 1 {name=p18 sig_type=std_logic lab=VCNTL}
C {devices/iopin.sym} 370 -550 0 0 {name=p21 lab=VSS
}
C {devices/iopin.sym} 450 -550 0 0 {name=p23 lab=VCNTL}
C {devices/iopin.sym} 280 -550 0 0 {name=p1 lab=VDD
}
C {devices/lab_pin.sym} 560 -430 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {res_sch.sym} 420 -240 0 0 {name=x1}
C {cap80p.sym} 430 -190 0 0 {name=x2}
C {cap3p.sym} 310 -260 0 0 {name=x3}
