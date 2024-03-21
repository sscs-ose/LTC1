v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -60 160 10 {
lab=#net1}
N 160 40 270 40 {
lab=VSS}
N 270 40 270 110 {
lab=VSS}
N 160 110 270 110 {
lab=VSS}
N 160 70 160 110 {
lab=VSS}
N 160 -90 240 -90 {
lab=VDD}
N 240 -170 240 -90 {
lab=VDD}
N 160 -170 240 -170 {
lab=VDD}
N 160 -170 160 -120 {
lab=VDD}
N 70 -90 120 -90 {
lab=IN}
N 70 -90 70 40 {
lab=IN}
N 70 40 120 40 {
lab=IN}
N 380 -70 380 0 {
lab=#net2}
N 380 30 490 30 {
lab=VSS}
N 490 30 490 100 {
lab=VSS}
N 380 100 490 100 {
lab=VSS}
N 380 60 380 100 {
lab=VSS}
N 380 -100 460 -100 {
lab=VDD}
N 460 -180 460 -100 {
lab=VDD}
N 380 -180 460 -180 {
lab=VDD}
N 380 -180 380 -130 {
lab=VDD}
N 290 -100 340 -100 {
lab=#net1}
N 290 -100 290 30 {
lab=#net1}
N 290 30 340 30 {
lab=#net1}
N 610 -80 610 -10 {
lab=OUT}
N 610 20 720 20 {
lab=VSS}
N 720 20 720 90 {
lab=VSS}
N 610 90 720 90 {
lab=VSS}
N 610 50 610 90 {
lab=VSS}
N 610 -110 690 -110 {
lab=VDD}
N 690 -190 690 -110 {
lab=VDD}
N 610 -190 690 -190 {
lab=VDD}
N 610 -190 610 -140 {
lab=VDD}
N 520 -110 570 -110 {
lab=#net2}
N 520 -110 520 20 {
lab=#net2}
N 520 20 570 20 {
lab=#net2}
N 160 -20 290 -20 {
lab=#net1}
N 380 -30 520 -30 {
lab=#net2}
N -70 -30 70 -30 {
lab=IN}
N 610 -30 740 -30 {
lab=OUT}
N 760 -110 840 -110 {
lab=VDD}
N 840 -190 840 -110 {
lab=VDD}
N 760 -190 840 -190 {
lab=VDD}
N 690 -190 760 -190 {
lab=VDD}
N 760 -190 760 -140 {
lab=VDD}
N 610 -80 760 -80 {
lab=OUT}
N 720 -210 720 -110 {
lab=#net2}
N 530 -210 720 -210 {
lab=#net2}
N 520 -210 530 -210 {
lab=#net2}
N 520 -210 520 -110 {
lab=#net2}
N 780 10 820 10 {
lab=VSS}
N 780 10 780 40 {
lab=VSS}
N 780 40 780 60 {
lab=VSS}
N 780 60 780 70 {
lab=VSS}
N 780 70 820 70 {
lab=VSS}
N 820 40 820 70 {
lab=VSS}
N 720 70 780 70 {
lab=VSS}
C {devices/iopin.sym} -80 -140 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 0 -140 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -40 -110 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 0 -110 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} -70 -30 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 740 -30 0 1 {name=p8 sig_type=std_logic lab=OUT}
C {symbols/nfet_03v3.sym} 140 40 0 0 {name=M3
L=0.5u
W=5.6u
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
C {symbols/pfet_03v3.sym} 140 -90 0 0 {name=M4
L=0.5u
W=11.2u
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
C {devices/lab_pin.sym} 160 -170 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 110 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 360 30 0 0 {name=M1
L=0.5u
W=22.4u
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
C {symbols/pfet_03v3.sym} 360 -100 0 0 {name=M2
L=0.5u
W=44.8u
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
C {devices/lab_pin.sym} 380 -180 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 100 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 590 20 0 0 {name=M5
L=0.5u
W=89.6u
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
C {symbols/pfet_03v3.sym} 590 -110 0 0 {name=M6
L=0.5u
W=89.6u
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
C {devices/lab_pin.sym} 610 -190 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 90 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 740 -110 0 0 {name=M7
L=0.5u
W=89.6u
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
C {symbols/nfet_03v3.sym} 800 40 0 0 {name=M8
L=0.5u
W=39.2u
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
