v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -90 140 50 {
lab=VIN}
N 140 50 180 50 {
lab=VIN}
N 140 -90 180 -90 {
lab=VIN}
N 220 -60 220 20 {
lab=VOUT}
N 220 80 220 110 {
lab=VSS}
N 220 -150 220 -120 {
lab=VDD}
N 220 -20 250 -20 {
lab=VOUT}
N 110 -20 140 -20 {
lab=VIN}
N 220 -90 240 -90 {
lab=VDD}
N 240 -130 240 -90 {
lab=VDD}
N 220 -130 240 -130 {
lab=VDD}
N 220 50 240 50 {
lab=VSS}
N 240 50 240 90 {
lab=VSS}
N 220 90 240 90 {
lab=VSS}
C {devices/iopin.sym} 220 -150 3 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 110 -20 0 0 {name=p4 lab=VIN}
C {devices/opin.sym} 250 -20 0 0 {name=p5 lab=VOUT}
C {symbols/pfet_03v3.sym} 200 -90 0 0 {name=M4
L=2u
W=4u
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
C {symbols/nfet_03v3.sym} 200 50 0 0 {name=M5
L=2u
W=2u
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
C {devices/iopin.sym} 220 110 1 0 {name=p1 lab=VSS}
