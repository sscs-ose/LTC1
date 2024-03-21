v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -100 130 -80 {
lab=VOUT}
N 130 -80 250 -80 {
lab=VOUT}
N 250 -100 250 -80 {
lab=VOUT}
N 190 -80 190 -30 {
lab=VOUT}
N 190 30 190 80 {
lab=#net1}
N 130 -180 130 -160 {
lab=VDD}
N 130 -180 250 -180 {
lab=VDD}
N 250 -180 250 -160 {
lab=VDD}
N 110 0 150 0 {
lab=A}
N 110 110 150 110 {
lab=B}
N 50 -130 90 -130 {
lab=A}
N 180 -130 210 -130 {
lab=B}
N 190 -60 250 -60 {
lab=VOUT}
N 190 -210 190 -180 {
lab=VDD}
N 190 140 190 180 {
lab=VSS}
N 130 -160 130 -130 {
lab=VDD}
N 250 -160 250 -130 {
lab=VDD}
N 190 110 190 140 {
lab=VSS}
N 190 0 240 0 {
lab=VSS}
C {devices/iopin.sym} 190 -210 3 0 {name=p1 lab=VDD}
C {symbols/nfet_03v3.sym} 170 0 0 0 {name=M1
L=0.28u
W=1.76u
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
C {symbols/pfet_03v3.sym} 110 -130 0 0 {name=M2
L=0.28u
W=1.76u
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
C {symbols/pfet_03v3.sym} 230 -130 0 0 {name=M3
L=0.28u
W=1.76u
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
C {symbols/nfet_03v3.sym} 170 110 0 0 {name=M4
L=0.28u
W=1.76u
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
C {devices/iopin.sym} 190 180 1 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 110 0 0 0 {name=p3 lab=A}
C {devices/ipin.sym} 110 110 0 0 {name=p4 lab=B}
C {devices/lab_wire.sym} 70 -130 0 0 {name=p5 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 200 -130 0 0 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 230 0 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 250 -60 0 0 {name=p8 lab=VOUT}
