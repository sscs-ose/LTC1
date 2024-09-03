v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 115 -180 265 -180 {
lab=D}
N 115 -155 115 -145 {
lab=B}
N 115 -155 265 -155 {
lab=B}
N 265 -155 265 -145 {
lab=B}
N 225 -145 225 -135 {
lab=G}
N 75 -135 225 -135 {
lab=G}
N 75 -145 75 -135 {
lab=G}
N 115 -110 265 -110 {
lab=S}
C {nfet_03V3_m2.sym} 200 -70 0 0 {name=x1}
C {nfet_03V3_m2.sym} 50 -70 0 0 {name=x2}
C {devices/iopin.sym} 70 -200 0 0 {name=p1 lab=G}
C {devices/iopin.sym} 140 -200 0 0 {name=p2 lab=S}
C {devices/iopin.sym} 210 -200 0 0 {name=p3 lab=D}
C {devices/iopin.sym} 280 -200 0 0 {name=p4 lab=B}
C {devices/lab_pin.sym} 210 -180 0 0 {name=p5 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 210 -155 0 0 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 200 -135 0 0 {name=p7 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 200 -110 0 0 {name=p8 sig_type=std_logic lab=S}
