v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 0 10 0 {
lab=IN}
N 50 30 50 60 {
lab=VSS}
N 50 -70 50 -30 {
lab=OUT}
N -30 -100 10 -100 {
lab=IN}
N -30 -100 -30 0 {
lab=IN}
N 50 -100 80 -100 {
lab=VDD}
N 80 -150 80 -100 {
lab=VDD}
N 50 -150 80 -150 {
lab=VDD}
N 50 -150 50 -130 {
lab=VDD}
N 50 0 80 0 {
lab=VSS}
N 80 0 80 60 {
lab=VSS}
N 50 60 80 60 {
lab=VSS}
N -70 -50 -30 -50 {
lab=IN}
N 50 -50 140 -50 {
lab=OUT}
C {symbols/nfet_03v3.sym} 30 0 0 0 {name=M1
L="2.24u"
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 30 -100 0 0 {name=M2
L="2.24u"
W=0.44u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} -20 -210 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} 60 -210 0 0 {name=p3 lab=VSS

}
C {devices/ipin.sym} 160 -210 0 0 {name=p4 lab=IN

}
C {devices/opin.sym} 180 -210 0 0 {name=p6 lab=OUT

}
C {devices/lab_pin.sym} 50 -150 0 0 {name=p5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -70 -50 0 0 {name=p8 sig_type=std_logic lab=IN
}
C {devices/lab_pin.sym} 50 60 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 140 -50 0 1 {name=p11 sig_type=std_logic lab=OUT}
