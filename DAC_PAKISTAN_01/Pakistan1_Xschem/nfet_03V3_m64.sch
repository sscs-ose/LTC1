v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 85 -140 270 -140 {}
N 270 -115 270 -105 {}
N 85 -115 270 -115 {}
N 85 -115 85 -105 {}
N 45 -105 45 -95 {}
N 45 -95 230 -95 {}
N 230 -105 230 -95 {}
N 85 -70 270 -70 {}
C {nfet_03V3_m32.sym} 85 -105 0 0 {name=x1}
C {nfet_03V3_m32.sym} 270 -105 0 0 {name=x2}
C {devices/iopin.sym} 65 -160 0 0 {name=p1 lab=G}
C {devices/iopin.sym} 135 -160 0 0 {name=p2 lab=S}
C {devices/iopin.sym} 205 -160 0 0 {name=p3 lab=D}
C {devices/iopin.sym} 275 -160 0 0 {name=p4 lab=B}
C {devices/lab_pin.sym} 205 -140 0 0 {name=p5 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 205 -115 0 0 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 195 -95 0 0 {name=p7 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 195 -70 0 0 {name=p8 sig_type=std_logic lab=S}
