v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -150 220 -150 {
lab=#net1}
N 130 -150 130 -80 {
lab=#net1}
N 130 -20 130 20 {
lab=#net2}
N 60 -50 90 -50 {
lab=B}
N 60 50 90 50 {
lab=A}
N -60 -180 -20 -180 {
lab=B}
N 140 -180 180 -180 {
lab=A}
N 220 -210 220 -180 {
lab=VDD}
N 220 -220 220 -210 {
lab=VDD}
N 20 -220 220 -220 {
lab=VDD}
N 20 -220 20 -210 {
lab=VDD}
N 20 -210 20 -180 {
lab=VDD}
N 120 -240 120 -220 {
lab=VDD}
N 130 50 130 80 {
lab=VSS}
N 130 80 130 100 {
lab=VSS}
N 130 -50 150 -50 {
lab=VSS}
N 150 -50 150 80 {
lab=VSS}
N 130 80 150 80 {
lab=VSS}
N 130 -100 300 -100 {
lab=#net1}
N 370 -220 370 -150 {
lab=VDD}
N 220 -220 370 -220 {
lab=VDD}
N 370 -50 370 100 {
lab=VSS}
N 130 100 370 100 {
lab=VSS}
N 130 100 130 120 {
lab=VSS}
N 480 -100 510 -100 {
lab=OUT}
C {symbols/nfet_03v3.sym} 110 50 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 0 -180 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 200 -180 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 110 -50 0 0 {name=M4
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
C {GF_INV.sym} 370 -100 0 0 {name=x1}
C {devices/lab_pin.sym} -60 -180 0 0 {name=p1 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 140 -180 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 60 -50 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 60 50 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 130 120 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 -240 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 510 -100 0 0 {name=p7 sig_type=std_logic lab=OUT}
C {devices/iopin.sym} -70 -90 0 0 {name=p8 lab=VDD}
C {devices/iopin.sym} -70 -70 0 0 {name=p9 lab=VSS}
C {devices/ipin.sym} -20 -50 0 0 {name=p10 lab=A}
C {devices/ipin.sym} -20 -30 0 0 {name=p11 lab=B}
C {devices/opin.sym} -70 -10 0 0 {name=p12 lab=OUT}
