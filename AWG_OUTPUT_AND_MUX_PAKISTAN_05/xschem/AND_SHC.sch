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
lab=A}
N 60 50 90 50 {
lab=B}
N -60 -180 -20 -180 {
lab=A}
N 140 -180 180 -180 {
lab=B}
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
N 220 -220 370 -220 {
lab=VDD}
N 130 100 370 100 {
lab=VSS}
N 130 100 130 120 {
lab=VSS}
N 310 0 410 0 {
lab=IN}
N 310 -130 310 0 {
lab=IN}
N 310 -130 410 -130 {
lab=IN}
N 450 -100 450 -30 {
lab=OUT}
N 450 0 560 0 {
lab=VSS}
N 560 0 560 70 {
lab=VSS}
N 450 70 560 70 {
lab=VSS}
N 450 30 450 70 {
lab=VSS}
N 450 -130 530 -130 {
lab=VDD}
N 530 -210 530 -130 {
lab=VDD}
N 450 -210 530 -210 {
lab=VDD}
N 450 -210 450 -160 {
lab=VDD}
N 450 -70 550 -70 {
lab=OUT}
N 130 -110 310 -110 {}
N 370 -220 500 -220 {}
N 500 -220 500 -210 {}
N 360 100 510 100 {}
N 510 70 510 100 {}
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
C {devices/lab_pin.sym} -60 -180 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 140 -180 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 60 -50 0 0 {name=p3 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 60 50 0 0 {name=p4 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 130 120 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 120 -240 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -70 -90 0 0 {name=p8 lab=VDD}
C {devices/iopin.sym} -70 -70 0 0 {name=p9 lab=VSS}
C {devices/ipin.sym} -20 -50 0 0 {name=p10 lab=A}
C {devices/ipin.sym} -20 -30 0 0 {name=p11 lab=B}
C {devices/opin.sym} -70 -10 0 0 {name=p12 lab=OUT}
C {devices/lab_pin.sym} 120 -210 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 430 0 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 430 -130 0 0 {name=M6
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
C {devices/lab_pin.sym} 450 -210 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 70 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 -70 0 1 {name=p21 sig_type=std_logic lab=OUT}
