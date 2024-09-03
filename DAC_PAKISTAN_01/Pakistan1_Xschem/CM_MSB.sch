v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -210 230 -210 {
lab=VSS}
N 230 -210 230 -90 {
lab=VSS}
N 200 -120 230 -120 {
lab=VSS}
N 200 -85 200 -60 {
lab=VSS}
N 200 -60 200 -55 {
lab=VSS}
N 230 -90 230 -40 {
lab=VSS}
N 200 -55 200 -40 {
lab=VSS}
N 200 -175 200 -155 {
lab=#net1}
N 145 -210 160 -210 {
lab=IM_T}
N 135 -120 160 -120 {
lab=IM}
N 200 -180 200 -175 {
lab=#net1}
N 200 -155 200 -150 {
lab=#net1}
N 200 -90 200 -85 {
lab=VSS}
N 200 -40 230 -40 {
lab=VSS}
N 200 -300 200 -240 {
lab=OUT}
C {devices/iopin.sym} 230 -90 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 145 -210 0 0 {name=p8 lab=IM_T}
C {devices/ipin.sym} 135 -120 0 0 {name=p9 lab=IM}
C {symbols/nfet_03v3.sym} 180 -210 0 0 {name=M7
L=0.5u
W=38.4u
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
C {symbols/nfet_03v3.sym} 180 -120 0 0 {name=M8
L=0.5u
W=38.4u
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
C {devices/iopin.sym} 200 -300 0 0 {name=p1 lab=OUT}
