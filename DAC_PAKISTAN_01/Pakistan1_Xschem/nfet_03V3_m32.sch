v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -125 225 -125 {}
N 20 -90 20 -80 {}
N 20 -80 185 -80 {}
N 185 -90 185 -80 {}
N 60 -100 60 -90 {}
N 60 -100 225 -100 {}
N 225 -100 225 -90 {}
N 60 -55 225 -55 {}
C {nfet_03V3_m16.sym} -15 0 0 0 {name=x1}
C {nfet_03V3_m16.sym} 150 0 0 0 {name=x2}
C {devices/iopin.sym} 35 -145 0 0 {name=p1 lab=G}
C {devices/iopin.sym} 105 -145 0 0 {name=p2 lab=S}
C {devices/iopin.sym} 175 -145 0 0 {name=p3 lab=D}
C {devices/iopin.sym} 245 -145 0 0 {name=p4 lab=B}
C {devices/lab_pin.sym} 175 -125 0 0 {name=p5 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 175 -100 0 0 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 165 -80 0 0 {name=p7 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 165 -55 0 0 {name=p8 sig_type=std_logic lab=S}
