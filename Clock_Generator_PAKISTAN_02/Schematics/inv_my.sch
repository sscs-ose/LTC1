v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -130 110 -130 {
lab=IN}
N 150 -100 150 -70 {
lab=VSS}
N 150 -200 150 -160 {
lab=OUT}
N 70 -230 110 -230 {
lab=IN}
N 70 -230 70 -130 {
lab=IN}
N 150 -230 180 -230 {
lab=VDD}
N 180 -280 180 -230 {
lab=VDD}
N 150 -280 180 -280 {
lab=VDD}
N 150 -280 150 -260 {
lab=VDD}
N 150 -130 180 -130 {
lab=VSS}
N 180 -130 180 -70 {
lab=VSS}
N 150 -70 180 -70 {
lab=VSS}
N 30 -180 70 -180 {
lab=IN}
N 150 -180 240 -180 {
lab=OUT}
C {symbols/nfet_03v3.sym} 130 -130 0 0 {name=M1
L=0.28u
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
C {symbols/pfet_03v3.sym} 130 -230 0 0 {name=M2
L=0.28u
W=0.8u
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
C {devices/iopin.sym} 80 -340 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} 160 -340 0 0 {name=p3 lab=VSS

}
C {devices/ipin.sym} 260 -340 0 0 {name=p4 lab=IN

}
C {devices/opin.sym} 280 -340 0 0 {name=p6 lab=OUT

}
C {devices/lab_pin.sym} 150 -280 0 0 {name=p5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 30 -180 0 0 {name=p8 sig_type=std_logic lab=IN
}
C {devices/lab_pin.sym} 150 -70 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 240 -180 0 1 {name=p11 sig_type=std_logic lab=OUT}
