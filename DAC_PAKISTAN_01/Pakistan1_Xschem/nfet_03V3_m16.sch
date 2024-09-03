v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -120 265 -120 {}
N 265 -95 265 -85 {}
N 80 -95 265 -95 {}
N 80 -95 80 -85 {}
N 40 -85 40 -75 {}
N 40 -75 225 -75 {}
N 225 -85 225 -75 {}
N 80 -50 265 -50 {}
C {nfet_03V3_m8.sym} 20 -15 0 0 {name=x1}
C {nfet_03V3_m8.sym} 205 -15 0 0 {name=x2}
C {devices/iopin.sym} 60 -140 0 0 {name=p1 lab=G}
C {devices/iopin.sym} 130 -140 0 0 {name=p2 lab=S}
C {devices/iopin.sym} 200 -140 0 0 {name=p3 lab=D}
C {devices/iopin.sym} 270 -140 0 0 {name=p4 lab=B}
C {devices/lab_pin.sym} 200 -120 0 0 {name=p5 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 200 -95 0 0 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 190 -75 0 0 {name=p7 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 190 -50 0 0 {name=p8 sig_type=std_logic lab=S}
