v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 -230 330 -210 {
lab=#net1}
N 330 -320 330 -290 {
lab=VDD}
N 330 -260 350 -260 {
lab=VDD}
N 350 -300 350 -260 {
lab=VDD}
N 330 -300 350 -300 {
lab=VDD}
N 580 -260 610 -260 {
lab=IN1}
N 260 -260 290 -260 {
lab=IN2}
N 430 -110 430 -100 {
lab=#net2}
N 360 -70 390 -70 {
lab=IN2}
N 430 -70 440 -70 {
lab=VSS}
N 440 -70 440 -40 {
lab=VSS}
N 430 -40 440 -40 {
lab=VSS}
N 430 -180 590 -180 {
lab=#net1}
N 330 -210 540 -210 {
lab=#net1}
N 540 -230 540 -210 {
lab=#net1}
N 530 -260 540 -260 {
lab=VDD}
N 530 -290 530 -260 {
lab=VDD}
N 530 -300 530 -290 {
lab=VDD}
N 530 -300 540 -300 {
lab=VDD}
N 540 -300 540 -290 {
lab=VDD}
N 540 -300 540 -290 {
lab=VDD}
N 540 -320 540 -300 {
lab=VDD}
N 330 -320 540 -320 {
lab=VDD}
N 430 -210 430 -180 {
lab=#net1}
N 430 -180 430 -170 {
lab=#net1}
N 430 -140 450 -140 {
lab=VSS}
N 360 -140 390 -140 {
lab=IN1}
N 430 -40 430 -20 {
lab=VSS}
N 670 -120 710 -120 {
lab=#net1}
N 750 -90 750 -60 {
lab=VSS}
N 750 -190 750 -150 {
lab=OUT}
N 670 -220 710 -220 {
lab=#net1}
N 670 -220 670 -120 {
lab=#net1}
N 750 -220 780 -220 {
lab=VDD}
N 780 -270 780 -220 {
lab=VDD}
N 750 -270 780 -270 {
lab=VDD}
N 750 -270 750 -250 {
lab=VDD}
N 750 -120 780 -120 {
lab=VSS}
N 780 -120 780 -60 {
lab=VSS}
N 750 -60 780 -60 {
lab=VSS}
N 750 -170 840 -170 {
lab=OUT}
N 590 -180 670 -180 {
lab=#net1}
C {devices/ipin.sym} 320 -350 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} 390 -350 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} 420 -350 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 490 -350 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 560 -350 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} 260 -260 0 0 {name=p6 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 610 -260 2 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 360 -70 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 330 -320 0 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 430 -20 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -140 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 450 -140 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 750 -270 0 0 {name=p14 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 750 -60 0 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 840 -170 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {symbols/pfet_03v3.sym} 730 -220 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 730 -120 0 0 {name=M6
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
C {symbols/pfet_03v3.sym} 310 -260 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 560 -260 0 1 {name=M2
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
C {symbols/nfet_03v3.sym} 410 -140 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 410 -70 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
