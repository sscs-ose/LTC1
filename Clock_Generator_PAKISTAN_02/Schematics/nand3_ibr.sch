v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 -200 -170 -180 {
lab=OUT}
N -170 -290 -170 -260 {
lab=VDD}
N -170 -230 -150 -230 {
lab=VDD}
N -150 -270 -150 -230 {
lab=VDD}
N -170 -270 -150 -270 {
lab=VDD}
N 310 -230 340 -230 {
lab=IN1}
N -240 -230 -210 -230 {
lab=IN3}
N 160 0 160 10 {
lab=#net1}
N 90 40 120 40 {
lab=IN3}
N 160 40 170 40 {
lab=VSS}
N 170 40 170 70 {
lab=VSS}
N 160 70 170 70 {
lab=VSS}
N 160 -150 320 -150 {
lab=OUT}
N -170 -180 270 -180 {
lab=OUT}
N 270 -200 270 -180 {
lab=OUT}
N 260 -230 270 -230 {
lab=VDD}
N 260 -260 260 -230 {
lab=VDD}
N 260 -270 260 -260 {
lab=VDD}
N 260 -270 270 -270 {
lab=VDD}
N 270 -270 270 -260 {
lab=VDD}
N 270 -270 270 -260 {
lab=VDD}
N 270 -290 270 -270 {
lab=VDD}
N -170 -290 270 -290 {
lab=VDD}
N 160 -150 160 -140 {
lab=OUT}
N 160 -110 180 -110 {
lab=VSS}
N 90 -110 120 -110 {
lab=IN1}
N 160 70 160 90 {
lab=VSS}
N 320 -150 400 -150 {
lab=OUT}
N 160 -30 180 -30 {
lab=VSS}
N 90 -30 120 -30 {
lab=IN2}
N 60 -200 60 -180 {
lab=OUT}
N 60 -290 60 -260 {
lab=VDD}
N 60 -230 80 -230 {
lab=VDD}
N 80 -270 80 -230 {
lab=VDD}
N 60 -270 80 -270 {
lab=VDD}
N -10 -230 20 -230 {
lab=IN2}
N 60 -180 270 -180 {
lab=OUT}
N 60 -290 270 -290 {
lab=VDD}
N 160 -180 160 -150 {
lab=OUT}
N 160 -80 160 -60 {
lab=#net2}
C {symbols/nfet_03v3.sym} 140 40 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 140 -110 0 0 {name=M4
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
C {devices/ipin.sym} -60 -440 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} 10 -440 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} 40 -440 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 110 -440 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 180 -440 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} -240 -230 0 0 {name=p6 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 340 -230 2 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 90 40 0 0 {name=p8 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} -170 -290 0 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 160 90 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 -110 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 180 -110 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 -150 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {symbols/pfet_03v3.sym} -190 -230 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 290 -230 0 1 {name=M2
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
C {symbols/nfet_03v3.sym} 140 -30 0 0 {name=M7
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
C {devices/lab_pin.sym} 180 -30 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 -30 0 0 {name=p17 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -10 -230 0 0 {name=p18 sig_type=std_logic lab=IN2}
C {symbols/pfet_03v3.sym} 40 -230 0 0 {name=M8
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
C {devices/ipin.sym} -140 -440 0 0 {name=p19 lab=IN3}
