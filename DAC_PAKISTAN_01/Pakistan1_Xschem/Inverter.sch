v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 20 110 20 {
lab=IN}
N 10 -110 10 20 {
lab=IN}
N 10 -110 110 -110 {
lab=IN}
N 150 -80 150 -10 {
lab=OUT}
N 150 20 260 20 {
lab=VSS}
N 260 20 260 90 {
lab=VSS}
N 150 90 260 90 {
lab=VSS}
N 150 50 150 90 {
lab=VSS}
N 150 -110 230 -110 {
lab=VDD}
N 230 -190 230 -110 {
lab=VDD}
N 150 -190 230 -190 {
lab=VDD}
N 150 -190 150 -140 {
lab=VDD}
N -80 -50 10 -50 {
lab=IN}
N 150 -50 250 -50 {
lab=OUT}
C {symbols/nfet_03v3.sym} 130 20 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 130 -110 0 0 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} -50 -230 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 30 -230 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -10 -200 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 30 -200 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} -80 -50 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 150 -190 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 90 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -50 0 1 {name=p8 sig_type=std_logic lab=OUT}
