v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -100 240 -100 {
lab=#net1}
N 240 -100 240 -70 {
lab=#net1}
N 210 -30 210 80 {
lab=IN}
N 270 -30 270 80 {
lab=OUT}
N 150 30 210 30 {
lab=IN}
N 270 30 320 30 {
lab=OUT}
N -130 -110 -70 -110 {
lab=CLK}
N -10 -220 -10 -170 {
lab=VDD}
N -10 -30 -10 20 {
lab=VSS}
N 240 -30 240 -0 {
lab=VDD}
N 240 40 240 80 {
lab=xxx}
N -110 -110 -110 170 {
lab=CLK}
N -110 170 240 170 {
lab=CLK}
N 240 120 240 170 {
lab=CLK}
C {inverter.sym} 80 -90 0 0 {name=x1}
C {symbols/pfet_03v3.sym} 240 -50 1 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 240 100 3 0 {name=M2
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
C {devices/iopin.sym} -10 -220 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -10 20 1 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -130 -110 0 0 {name=p3 lab=CLK}
C {devices/ipin.sym} 150 30 0 0 {name=p4 lab=IN}
C {devices/opin.sym} 320 30 0 0 {name=p5 lab=OUT}
C {devices/lab_wire.sym} 240 -10 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 240 60 0 0 {name=p7 sig_type=std_logic lab=VSS}
