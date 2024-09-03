v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -130 340 -130 {
lab=IN}
N 240 -260 240 -130 {
lab=IN}
N 240 -260 340 -260 {
lab=IN}
N 380 -230 380 -160 {
lab=OUT}
N 380 -130 490 -130 {
lab=VSS}
N 490 -130 490 -60 {
lab=VSS}
N 380 -60 490 -60 {
lab=VSS}
N 380 -100 380 -60 {
lab=VSS}
N 380 -260 460 -260 {
lab=VDD}
N 460 -340 460 -260 {
lab=VDD}
N 380 -340 460 -340 {
lab=VDD}
N 380 -340 380 -290 {
lab=VDD}
N 150 -200 240 -200 {
lab=IN}
N 380 -200 480 -200 {
lab=OUT}
N 640 -130 740 -130 {
lab=IN}
N 640 -260 640 -130 {
lab=IN}
N 640 -260 740 -260 {
lab=IN}
N 780 -230 780 -160 {
lab=OUT}
N 780 -130 890 -130 {
lab=VSS}
N 890 -130 890 -60 {
lab=VSS}
N 780 -60 890 -60 {
lab=VSS}
N 780 -100 780 -60 {
lab=VSS}
N 780 -260 860 -260 {
lab=VDD}
N 860 -340 860 -260 {
lab=VDD}
N 780 -340 860 -340 {
lab=VDD}
N 780 -340 780 -290 {
lab=VDD}
N 550 -200 640 -200 {
lab=IN}
N 780 -200 880 -200 {
lab=OUT}
N 480 -200 550 -200 {}
C {symbols/nfet_03v3.sym} 360 -130 0 0 {name=M1
L=0.28u
W=4u
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
C {symbols/pfet_03v3.sym} 360 -260 0 0 {name=M2
L=0.28u
W=8u
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
C {devices/iopin.sym} 120 -490 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 200 -490 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 160 -460 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 200 -460 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 150 -200 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 380 -340 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 -60 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 760 -130 0 0 {name=M3
L=0.28u
W=4u
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
C {symbols/pfet_03v3.sym} 760 -260 0 0 {name=M4
L=0.28u
W=8u
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
C {devices/lab_pin.sym} 780 -340 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 780 -60 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 -200 0 1 {name=p12 sig_type=std_logic lab=OUT}
