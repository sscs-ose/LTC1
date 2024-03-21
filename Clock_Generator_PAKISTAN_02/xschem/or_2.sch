v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 0 130 0 {
lab=IN1}
N 60 60 220 60 {
lab=#net1}
N 60 -50 60 -30 {
lab=#net2}
N 60 30 60 60 {
lab=#net1}
N -40 110 -40 120 {
lab=#net1}
N -40 150 -20 150 {
lab=VSS}
N -110 150 -80 150 {
lab=IN1}
N 400 60 490 60 {
lab=OUT}
N 120 100 120 110 {
lab=#net1}
N 160 140 190 140 {
lab=IN2}
N 110 140 120 140 {
lab=VSS}
N 110 140 110 170 {
lab=VSS}
N 110 170 120 170 {
lab=VSS}
N 120 170 120 190 {
lab=VSS}
N -40 100 -40 110 {
lab=#net1}
N -40 100 120 100 {
lab=#net1}
N -40 180 -20 180 {
lab=VSS}
N -20 150 -20 180 {
lab=VSS}
N 60 -70 60 -50 {
lab=#net2}
N 60 -160 60 -130 {
lab=VDD}
N 60 -100 80 -100 {
lab=VDD}
N 80 -140 80 -100 {
lab=VDD}
N 60 -140 80 -140 {
lab=VDD}
N -10 -100 20 -100 {
lab=IN2}
N 40 0 60 0 {
lab=VDD}
N 60 60 60 100 {
lab=#net1}
N 290 -20 290 10 {
lab=VDD}
N 290 110 290 140 {
lab=VSS}
C {symbols/nfet_03v3.sym} -60 150 0 0 {name=M4
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
C {devices/ipin.sym} -250 -200 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} -180 -200 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} -150 -200 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} -80 -200 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} -10 -200 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} 130 0 2 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -110 150 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -20 150 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 60 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {symbols/pfet_03v3.sym} 80 0 0 1 {name=M2
L=0.28u
W=0.8u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 140 140 0 1 {name=M7
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
C {devices/lab_pin.sym} 190 140 0 1 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 120 190 1 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 -100 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 60 -160 0 0 {name=p11 sig_type=std_logic lab=VDD
}
C {symbols/pfet_03v3.sym} 40 -100 0 0 {name=M3
L=0.28u
W=0.8u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 40 0 0 0 {name=p6 sig_type=std_logic lab=VDD
}
C {GF_INV.sym} 290 60 0 0 {name=x1}
C {devices/lab_pin.sym} 290 -10 0 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 290 140 1 1 {name=p14 sig_type=std_logic lab=VSS}
