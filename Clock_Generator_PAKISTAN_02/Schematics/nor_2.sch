v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 -110 -10 -110 {
lab=IN1}
N -80 -160 -80 -140 {
lab=#net1}
N -80 -80 -80 -50 {
lab=OUT}
N -180 0 -180 10 {
lab=OUT}
N -180 40 -160 40 {
lab=VSS}
N -250 40 -220 40 {
lab=IN1}
N -80 -50 0 -50 {
lab=OUT}
N -20 -10 -20 0 {
lab=OUT}
N 20 30 50 30 {
lab=IN2}
N -30 30 -20 30 {
lab=VSS}
N -30 30 -30 60 {
lab=VSS}
N -30 60 -20 60 {
lab=VSS}
N -20 60 -20 80 {
lab=VSS}
N -180 -10 -180 0 {
lab=OUT}
N -180 -10 -20 -10 {
lab=OUT}
N -180 70 -160 70 {
lab=VSS}
N -160 40 -160 70 {
lab=VSS}
N -80 -180 -80 -160 {
lab=#net1}
N -80 -270 -80 -240 {
lab=VDD}
N -80 -210 -60 -210 {
lab=VDD}
N -60 -250 -60 -210 {
lab=VDD}
N -80 -250 -60 -250 {
lab=VDD}
N -150 -210 -120 -210 {
lab=IN2}
N -100 -110 -80 -110 {
lab=VDD}
N -80 -50 -80 -10 {
lab=OUT}
C {symbols/nfet_03v3.sym} -200 40 0 0 {name=M4
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
C {devices/ipin.sym} -390 -310 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} -320 -310 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} -290 -310 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} -220 -310 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} -150 -310 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} -10 -110 2 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -250 40 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -160 40 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -50 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {symbols/pfet_03v3.sym} -60 -110 0 1 {name=M2
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
C {symbols/nfet_03v3.sym} 0 30 0 1 {name=M7
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
C {devices/lab_pin.sym} 50 30 0 1 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -20 80 1 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -150 -210 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -80 -270 0 0 {name=p11 sig_type=std_logic lab=VDD
}
C {symbols/pfet_03v3.sym} -100 -210 0 0 {name=M3
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
C {devices/lab_pin.sym} -100 -110 0 0 {name=p6 sig_type=std_logic lab=VDD
}
