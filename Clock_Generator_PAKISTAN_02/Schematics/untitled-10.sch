v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -180 250 -180 {
lab=IN}
N 150 -310 150 -180 {
lab=IN}
N 150 -310 250 -310 {
lab=IN}
N 290 -280 290 -210 {
lab=OUT}
N 290 -180 400 -180 {
lab=VSS}
N 400 -180 400 -110 {
lab=VSS}
N 290 -110 400 -110 {
lab=VSS}
N 290 -150 290 -110 {
lab=VSS}
N 290 -310 370 -310 {
lab=VDD}
N 370 -390 370 -310 {
lab=VDD}
N 290 -390 370 -390 {
lab=VDD}
N 290 -390 290 -340 {
lab=VDD}
N 60 -250 150 -250 {
lab=IN}
N 290 -250 390 -250 {
lab=OUT}
C {symbols/nfet_03v3.sym} 270 -180 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 270 -310 0 0 {name=M2
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
C {devices/iopin.sym} 90 -430 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 170 -430 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 130 -400 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 170 -400 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 60 -250 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 290 -390 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -110 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 390 -250 0 1 {name=p8 sig_type=std_logic lab=OUT}
