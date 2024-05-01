v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -170 250 -170 {
lab=IN}
N 150 -300 150 -170 {
lab=IN}
N 150 -300 250 -300 {
lab=IN}
N 290 -270 290 -200 {
lab=OUT}
N 290 -170 400 -170 {
lab=VSS}
N 400 -170 400 -100 {
lab=VSS}
N 290 -100 400 -100 {
lab=VSS}
N 290 -140 290 -100 {
lab=VSS}
N 290 -300 370 -300 {
lab=VDD}
N 370 -380 370 -300 {
lab=VDD}
N 290 -380 370 -380 {
lab=VDD}
N 290 -380 290 -330 {
lab=VDD}
N 60 -240 150 -240 {
lab=IN}
N 290 -240 390 -240 {
lab=OUT}
C {symbols/nfet_03v3.sym} 270 -170 0 0 {name=M1
L=350n
W=1.4u
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
C {symbols/pfet_03v3.sym} 270 -300 0 0 {name=M2
L=350n
W=2.8u
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
C {devices/iopin.sym} 90 -420 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 170 -420 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 130 -390 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 170 -390 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 60 -240 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 290 -380 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -100 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 390 -240 0 1 {name=p8 sig_type=std_logic lab=OUT}
