v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -170 90 -170 {
lab=A}
N 50 -80 90 -80 {
lab=B}
N 130 -220 130 -200 {
lab=VDD}
N 130 -140 130 -110 {
lab=#net1}
N 50 -20 50 -0 {
lab=VOUT}
N 50 -20 220 -20 {
lab=VOUT}
N 220 -20 220 -0 {
lab=VOUT}
N 130 -50 130 -20 {
lab=VOUT}
N 50 60 50 80 {
lab=VSS}
N 50 80 220 80 {
lab=VSS}
N 220 60 220 80 {
lab=VSS}
N 130 80 130 100 {
lab=VSS}
N 130 -40 300 -40 {
lab=VOUT}
N -10 30 10 30 {
lab=A}
N 160 30 180 30 {
lab=B}
N 50 30 60 30 {
lab=VSS}
N 60 30 60 70 {
lab=VSS}
N 50 70 60 70 {
lab=VSS}
N 220 30 230 30 {
lab=VSS}
N 230 30 230 70 {
lab=VSS}
N 220 70 230 70 {
lab=VSS}
N 130 -170 140 -170 {
lab=VDD}
N 140 -210 140 -170 {
lab=VDD}
N 130 -210 140 -210 {
lab=VDD}
N 130 -80 170 -80 {
lab=VDD}
C {symbols/nfet_03v3.sym} 200 30 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 30 30 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 110 -170 0 0 {name=M4
L=0.28u
W=2u
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
C {symbols/pfet_03v3.sym} 110 -80 0 0 {name=M5
L=0.28u
W=2u
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
C {devices/iopin.sym} 130 -220 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 130 100 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 300 -40 0 0 {name=p3 lab=OUT}
C {devices/ipin.sym} 50 -170 2 1 {name=p4 lab=A}
C {devices/ipin.sym} 50 -80 2 1 {name=p5 lab=B}
C {devices/lab_pin.sym} -10 30 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 160 30 0 0 {name=p7 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 170 -80 2 0 {name=p10 sig_type=std_logic lab=VDD}
