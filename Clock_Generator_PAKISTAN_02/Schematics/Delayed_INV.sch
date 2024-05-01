v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 20 100 20 {
lab=IN}
N 0 -110 0 20 {
lab=IN}
N 0 -110 100 -110 {
lab=IN}
N 140 -80 140 -10 {
lab=OUT}
N 140 20 250 20 {
lab=VSS}
N 250 20 250 90 {
lab=VSS}
N 140 90 250 90 {
lab=VSS}
N 140 50 140 90 {
lab=VSS}
N 140 -110 220 -110 {
lab=VDD}
N 220 -190 220 -110 {
lab=VDD}
N 140 -190 220 -190 {
lab=VDD}
N 140 -190 140 -140 {
lab=VDD}
N -90 -50 0 -50 {
lab=IN}
N 140 -50 240 -50 {
lab=OUT}
C {symbols/nfet_03v3.sym} 120 20 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 120 -110 0 0 {name=M2
L=0.28u
W=0.8u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} -60 -230 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 20 -230 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -20 -200 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 20 -200 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} -90 -50 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 140 -190 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 90 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -50 0 1 {name=p8 sig_type=std_logic lab=OUT}
