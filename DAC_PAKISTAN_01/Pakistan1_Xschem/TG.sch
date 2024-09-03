v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -230 140 -40 {
lab=IN}
N 200 -230 200 -40 {
lab=OUT}
N 170 -290 170 -270 {
lab=SEL_B}
N 170 0 170 20 {
lab=SEL}
N 130 20 170 20 {
lab=SEL}
N 170 -100 170 -40 {
lab=VSS}
N 60 -290 170 -290 {
lab=SEL_B}
N 70 -130 140 -130 {
lab=IN}
N 200 -130 280 -130 {
lab=OUT}
N 170 -230 170 -170 {
lab=VDD}
N -70 -260 -70 -240 {
lab=VDD}
N -70 -80 -70 -50 {
lab=VSS}
N -70 -180 -70 -140 {
lab=SEL_B}
N -110 -210 -110 -110 {
lab=SEL}
N -70 -160 -30 -160 {
lab=SEL_B}
N -30 -160 60 -160 {
lab=SEL_B}
N 60 -290 60 -160 {
lab=SEL_B}
N -110 -110 -110 20 {
lab=SEL}
N -110 20 130 20 {
lab=SEL}
N -70 -110 -50 -110 {
lab=VSS}
N -50 -110 -50 -60 {
lab=VSS}
N -70 -60 -50 -60 {
lab=VSS}
N -70 -210 -50 -210 {
lab=VDD}
N -50 -250 -50 -210 {
lab=VDD}
N -70 -250 -50 -250 {
lab=VDD}
C {devices/iopin.sym} -70 -260 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -70 -50 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 70 -130 0 0 {name=p3 lab=IN}
C {devices/ipin.sym} -110 -160 0 0 {name=p4 lab=SEL}
C {devices/opin.sym} 280 -130 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} 170 -190 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 -100 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 170 -250 1 0 {name=M8
L=0.28u
W=80u
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
C {symbols/nfet_03v3.sym} -90 -110 0 0 {name=M12
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
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 130 -290 0 0 {name=p8 sig_type=std_logic lab=SEL_B}
C {symbols/pfet_03v3.sym} -90 -210 0 0 {name=M1
L=0.28u
W=16u
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
C {symbols/nfet_03v3.sym} 170 -20 3 0 {name=M2
L=0.28u
W=80u
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
