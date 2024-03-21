v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -190 140 -180 {
lab=G}
N 140 -180 300 -180 {
lab=G}
N 300 -190 300 -180 {
lab=G}
N 340 -200 340 -190 {
lab=B}
N 180 -200 340 -200 {
lab=B}
N 180 -200 180 -190 {
lab=B}
N 180 -160 340 -160 {
lab=xxx}
N 180 -220 340 -220 {
lab=D}
C {symbols/nfet_03v3.sym} 160 -190 0 0 {name=M1
L=0.28u
W=0.25u
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
C {symbols/nfet_03v3.sym} 320 -190 0 0 {name=M2
L=0.28u
W=0.25u
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
C {devices/iopin.sym} 140 -250 0 0 {name=p1 lab=G}
C {devices/iopin.sym} 210 -250 0 0 {name=p2 lab=S}
C {devices/iopin.sym} 280 -250 0 0 {name=p3 lab=D}
C {devices/iopin.sym} 350 -250 0 0 {name=p4 lab=B}
C {devices/lab_pin.sym} 260 -220 0 0 {name=p5 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 260 -200 0 0 {name=p6 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 260 -180 0 0 {name=p7 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 260 -160 0 0 {name=p8 sig_type=std_logic lab=S}
