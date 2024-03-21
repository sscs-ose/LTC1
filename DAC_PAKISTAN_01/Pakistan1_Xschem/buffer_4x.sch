v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -120 280 -120 {
lab=IN}
N 180 -250 180 -120 {
lab=IN}
N 180 -250 280 -250 {
lab=IN}
N 320 -220 320 -150 {
lab=OUT}
N 320 -120 430 -120 {
lab=VSS}
N 430 -120 430 -50 {
lab=VSS}
N 320 -50 430 -50 {
lab=VSS}
N 320 -90 320 -50 {
lab=VSS}
N 320 -250 400 -250 {
lab=VDD}
N 400 -330 400 -250 {
lab=VDD}
N 320 -330 400 -330 {
lab=VDD}
N 320 -330 320 -280 {
lab=VDD}
N 90 -190 180 -190 {
lab=IN}
N 320 -190 420 -190 {
lab=OUT}
N 580 -120 680 -120 {
lab=IN}
N 580 -250 580 -120 {
lab=IN}
N 580 -250 680 -250 {
lab=IN}
N 720 -220 720 -150 {
lab=OUT}
N 720 -120 830 -120 {
lab=VSS}
N 830 -120 830 -50 {
lab=VSS}
N 720 -50 830 -50 {
lab=VSS}
N 720 -90 720 -50 {
lab=VSS}
N 720 -250 800 -250 {
lab=VDD}
N 800 -330 800 -250 {
lab=VDD}
N 720 -330 800 -330 {
lab=VDD}
N 720 -330 720 -280 {
lab=VDD}
N 490 -190 580 -190 {
lab=IN}
N 720 -190 820 -190 {
lab=OUT}
N 420 -190 490 -190 {}
C {symbols/nfet_03v3.sym} 300 -120 0 0 {name=M1
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 300 -250 0 0 {name=M2
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
C {devices/iopin.sym} 60 -480 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 140 -480 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 100 -450 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 140 -450 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 90 -190 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 320 -330 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 320 -50 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 700 -120 0 0 {name=M3
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 700 -250 0 0 {name=M4
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
C {devices/lab_pin.sym} 720 -330 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 720 -50 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -190 0 1 {name=p12 sig_type=std_logic lab=OUT}
