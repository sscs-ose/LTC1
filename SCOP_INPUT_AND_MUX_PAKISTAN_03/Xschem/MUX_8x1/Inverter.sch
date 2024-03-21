v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 20 60 80 {
lab=OUT}
N 60 140 60 160 {
lab=VSS}
N 60 -60 60 -40 {
lab=VDD}
N -0 -10 20 -10 {
lab=IN}
N 0 -10 -0 110 {
lab=IN}
N -0 110 20 110 {
lab=IN}
N 60 50 100 50 {
lab=OUT}
N -40 50 0 50 {
lab=IN}
N 60 -10 90 -10 {
lab=VDD}
N 90 -50 90 -10 {
lab=VDD}
N 60 -50 90 -50 {
lab=VDD}
N 60 110 90 110 {
lab=VSS}
N 90 110 90 150 {
lab=VSS}
N 60 150 90 150 {
lab=VSS}
C {symbols/pfet_03v3.sym} 40 -10 0 0 {name=M1
L=0.28u
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
C {symbols/nfet_03v3.sym} 40 110 0 0 {name=M2
L=0.28u
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
C {devices/lab_pin.sym} -40 50 0 0 {name=p1 sig_type=std_logic lab=IN
}
C {devices/lab_pin.sym} 100 50 2 0 {name=p2 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 60 -60 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 60 160 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -20 80 0 0 {name=p5 lab=IN}
C {devices/opin.sym} 80 70 0 0 {name=p6 lab=OUT}
C {devices/iopin.sym} 80 -70 0 0 {name=p7 lab=VDD}
C {devices/iopin.sym} 80 170 0 0 {name=p8 lab=VSS}
