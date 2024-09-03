v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -100 -250 -80 {
lab=OUT}
N -250 -190 -250 -160 {
lab=VDD}
N -250 -130 -230 -130 {
lab=VDD}
N -230 -170 -230 -130 {
lab=VDD}
N -250 -170 -230 -170 {
lab=VDD}
N 230 -130 260 -130 {
lab=IN1}
N -320 -130 -290 -130 {
lab=IN3}
N 80 100 80 110 {
lab=#net1}
N 10 140 40 140 {
lab=IN3}
N 80 140 90 140 {
lab=VSS}
N 90 140 90 170 {
lab=VSS}
N 80 170 90 170 {
lab=VSS}
N -250 -80 190 -80 {
lab=OUT}
N 190 -100 190 -80 {
lab=OUT}
N 180 -130 190 -130 {
lab=VDD}
N 180 -160 180 -130 {
lab=VDD}
N 180 -170 180 -160 {
lab=VDD}
N 180 -170 190 -170 {
lab=VDD}
N 190 -170 190 -160 {
lab=VDD}
N 190 -170 190 -160 {
lab=VDD}
N 190 -190 190 -170 {
lab=VDD}
N -250 -190 190 -190 {
lab=VDD}
N 80 -50 80 -40 {
lab=OUT}
N 80 -10 100 -10 {
lab=VSS}
N 10 -10 40 -10 {
lab=IN1}
N 80 170 80 190 {
lab=VSS}
N 190 -80 280 -80 {
lab=OUT}
N 80 70 100 70 {
lab=VSS}
N 10 70 40 70 {
lab=IN2}
N -20 -100 -20 -80 {
lab=OUT}
N -20 -190 -20 -160 {
lab=VDD}
N -20 -130 0 -130 {
lab=VDD}
N 0 -170 0 -130 {
lab=VDD}
N -20 -170 0 -170 {
lab=VDD}
N -90 -130 -60 -130 {
lab=IN2}
N -20 -80 190 -80 {
lab=OUT}
N -20 -190 190 -190 {
lab=VDD}
N 80 -80 80 -50 {
lab=OUT}
N 80 20 80 40 {
lab=#net2}
C {symbols/nfet_03v3.sym} 60 140 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 60 -10 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/ipin.sym} -140 -340 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} -70 -340 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} -40 -340 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 30 -340 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 100 -340 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} -320 -130 0 0 {name=p6 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 260 -130 2 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 10 140 0 0 {name=p8 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} -250 -190 0 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 80 190 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 -10 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 100 -10 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -80 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {symbols/pfet_03v3.sym} -270 -130 0 0 {name=M1
L=0.28u
W=0.8u
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
C {symbols/pfet_03v3.sym} 210 -130 0 1 {name=M2
L=0.28u
W=0.8u
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
C {symbols/nfet_03v3.sym} 60 70 0 0 {name=M7
L=0.28u
W=0.22u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 100 70 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 70 0 0 {name=p17 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -90 -130 0 0 {name=p18 sig_type=std_logic lab=IN2}
C {symbols/pfet_03v3.sym} -40 -130 0 0 {name=M8
L=0.28u
W=0.8u
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
C {devices/ipin.sym} -220 -340 0 0 {name=p19 lab=IN3}
