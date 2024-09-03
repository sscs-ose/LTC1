v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -155 275 -155 {}
N 275 -130 275 -120 {}
N 100 -130 275 -130 {}
N 100 -130 100 -120 {}
N 235 -120 235 -110 {}
N 60 -110 235 -110 {}
N 60 -120 60 -110 {}
N 100 -85 275 -85 {}
C {nfet_03V3_m4.sym} 25 0 0 0 {name=x1}
C {nfet_03V3_m4.sym} 200 0 0 0 {name=x2}
C {devices/iopin.sym} 85 -175 0 0 {name=p1 lab=G}
C {devices/iopin.sym} 155 -175 0 0 {name=p2 lab=S}
C {devices/iopin.sym} 225 -175 0 0 {name=p3 lab=D}
C {devices/iopin.sym} 295 -175 0 0 {name=p4 lab=B}
C {devices/lab_pin.sym} 225 -155 0 0 {name=p5 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 225 -130 0 0 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 215 -110 0 0 {name=p7 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 215 -85 0 0 {name=p8 sig_type=std_logic lab=S}
