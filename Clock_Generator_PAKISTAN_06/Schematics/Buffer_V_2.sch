v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 70 390 70 {
lab=out}
N -80 150 20 150 {
lab=IN}
N -80 20 -80 150 {
lab=IN}
N -80 20 20 20 {
lab=IN}
N 60 50 60 120 {
lab=#net1}
N 60 150 170 150 {
lab=VSS}
N 170 150 170 220 {
lab=VSS}
N 60 220 170 220 {
lab=VSS}
N 60 180 60 220 {
lab=VSS}
N 60 20 140 20 {
lab=VDD}
N 140 -60 140 20 {
lab=VDD}
N 60 -60 140 -60 {
lab=VDD}
N 60 -60 60 -10 {
lab=VDD}
N -170 80 -80 80 {
lab=IN}
N 60 80 160 80 {
lab=#net1}
N 250 40 250 110 {
lab=#net2}
N 250 140 360 140 {
lab=#net3}
N 360 140 360 210 {
lab=#net3}
N 250 210 360 210 {
lab=#net3}
N 250 170 250 210 {
lab=#net3}
N 250 10 330 10 {
lab=VDD}
N 330 -70 330 10 {
lab=VDD}
N 250 -70 330 -70 {
lab=VDD}
N 250 -70 250 -20 {
lab=VDD}
N 250 70 350 70 {
lab=#net2}
N 160 80 210 80 {}
N 210 10 210 80 {}
N 210 80 210 140 {}
N 170 220 250 220 {}
N 250 210 250 220 {}
N 140 -60 250 -60 {}
C {devices/iopin.sym} 30 -170 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 30 -150 0 0 {name=p2 lab=VSS
}
C {devices/ipin.sym} 140 -170 0 0 {name=p4 lab=IN}
C {devices/ipin.sym} 140 -150 0 0 {name=p5 lab=out}
C {devices/lab_pin.sym} 390 70 2 0 {name=p7 sig_type=std_logic lab=out
}
C {symbols/nfet_03v3.sym} 40 150 0 0 {name=M1
L="0.5u"
W=0.5u
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
C {symbols/pfet_03v3.sym} 40 20 0 0 {name=M2
L="0.5u"
W=1u
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
C {devices/lab_pin.sym} -170 80 0 0 {name=p15 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 60 -60 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 60 220 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 230 140 0 0 {name=M3
L="0.5u"
W=0.5u
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
C {symbols/pfet_03v3.sym} 230 10 0 0 {name=M4
L="0.5u"
W=1u
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
