v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 80 100 80 {
lab=IN}
N 0 -50 0 80 {
lab=IN}
N 0 -50 100 -50 {
lab=IN}
N 140 -20 140 50 {
lab=OUT}
N 140 80 250 80 {
lab=VSS}
N 250 80 250 150 {
lab=VSS}
N 140 150 250 150 {
lab=VSS}
N 140 110 140 150 {
lab=VSS}
N 140 -50 220 -50 {
lab=VDD}
N 220 -130 220 -50 {
lab=VDD}
N 140 -130 220 -130 {
lab=VDD}
N 140 -130 140 -80 {
lab=VDD}
N -90 10 0 10 {
lab=IN}
N 140 10 240 10 {
lab=OUT}
C {symbols/nfet_03v3.sym} 120 80 0 0 {name=M1
L=0.28u
W=14.08u
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
C {symbols/pfet_03v3.sym} 120 -50 0 0 {name=M2
L=0.28u
W=51.2u
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
C {devices/iopin.sym} -60 -170 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 20 -170 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -20 -140 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 20 -140 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} -90 10 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 140 -130 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 150 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 10 0 1 {name=p8 sig_type=std_logic lab=OUT}
