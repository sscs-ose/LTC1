v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -230 240 -210 {
lab=OUT}
N 240 -320 240 -290 {
lab=VDD}
N 240 -260 260 -260 {
lab=VDD}
N 260 -300 260 -260 {
lab=VDD}
N 240 -300 260 -300 {
lab=VDD}
N 490 -260 520 -260 {
lab=IN1}
N 170 -260 200 -260 {
lab=IN2}
N 340 -110 340 -100 {
lab=#net1}
N 270 -70 300 -70 {
lab=IN2}
N 340 -70 350 -70 {
lab=VSS}
N 350 -70 350 -40 {
lab=VSS}
N 340 -40 350 -40 {
lab=VSS}
N 340 -180 500 -180 {
lab=OUT}
N 240 -210 450 -210 {
lab=OUT}
N 450 -230 450 -210 {
lab=OUT}
N 440 -260 450 -260 {
lab=VDD}
N 440 -290 440 -260 {
lab=VDD}
N 440 -300 440 -290 {
lab=VDD}
N 440 -300 450 -300 {
lab=VDD}
N 450 -300 450 -290 {
lab=VDD}
N 450 -300 450 -290 {
lab=VDD}
N 450 -320 450 -300 {
lab=VDD}
N 240 -320 450 -320 {
lab=VDD}
N 340 -210 340 -180 {
lab=OUT}
N 340 -180 340 -170 {
lab=OUT}
N 340 -140 360 -140 {
lab=VSS}
N 270 -140 300 -140 {
lab=IN1}
N 340 -40 340 -20 {
lab=VSS}
C {symbols/nfet_03v3.sym} 320 -70 0 0 {name=M3
L=0.28u
W=0.44u
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
C {symbols/nfet_03v3.sym} 320 -140 0 0 {name=M4
L=0.28u
W=0.44u
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
C {devices/ipin.sym} 230 -350 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} 300 -350 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} 330 -350 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 400 -350 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 470 -350 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} 170 -260 0 0 {name=p6 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 520 -260 2 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 270 -70 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 240 -320 0 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 340 -20 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -180 2 0 {name=p12 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 270 -140 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 360 -140 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 470 -260 0 1 {name=M5
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
C {symbols/pfet_03v3.sym} 220 -260 0 0 {name=M2
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
