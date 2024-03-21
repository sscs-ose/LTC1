v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -320 -350 -200 -350 {
lab=#net1}
N -200 -350 -200 -320 {
lab=#net1}
N -270 -280 -270 -170 {
lab=OUT}
N -100 -280 -100 -170 {
lab=IN}
N -570 -360 -510 -360 {
lab=CLK}
N -450 -470 -450 -420 {
lab=VDD}
N -450 -280 -450 -230 {
lab=VSS}
N -200 -280 -200 -250 {
lab=VDD}
N -200 -210 -200 -170 {
lab=VSS}
N -550 -360 -550 -80 {
lab=CLK}
N -550 -80 -200 -80 {
lab=CLK}
N -200 -130 -200 -80 {
lab=CLK}
N -270 -280 -230 -280 {
lab=OUT}
N -270 -170 -230 -170 {
lab=OUT}
N -170 -280 -100 -280 {
lab=IN}
N -170 -170 -100 -170 {
lab=IN}
N -320 -220 -270 -220 {
lab=OUT}
N -510 -360 -510 -340 {
lab=CLK}
N -380 -350 -320 -350 {
lab=#net1}
C {symbols/pfet_03v3.sym} -200 -300 1 0 {name=M1
L=0.28u
W=0.88u
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
C {symbols/nfet_03v3.sym} -200 -150 3 0 {name=M2
L=0.28u
W=0.88u
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
C {devices/iopin.sym} -450 -470 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -450 -230 1 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -570 -360 0 0 {name=p3 lab=CLK}
C {devices/ipin.sym} -100 -220 2 0 {name=p4 lab=IN}
C {devices/lab_wire.sym} -200 -260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -200 -190 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -320 -220 2 0 {name=p5 lab=OUT}
C {strong_inv.sym} -360 -320 0 0 {name=x1}
