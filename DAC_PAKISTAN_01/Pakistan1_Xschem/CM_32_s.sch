v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -205 390 -205 {
lab=VSS}
N 390 -205 390 -105 {
lab=VSS}
N 380 -105 390 -105 {
lab=VSS}
N 380 -170 380 -140 {
lab=#net1}
N 380 -175 380 -170 {
lab=#net1}
N 380 -140 380 -135 {
lab=#net1}
N 380 -105 380 -50 {
lab=VSS}
N 380 -245 380 -235 {
lab=#net2}
N 380 -50 380 -45 {
lab=VSS}
N 380 -410 380 -245 {
lab=#net2}
N 305 -520 340 -520 {
lab=#net3}
N 305 -520 305 -480 {
lab=#net3}
N 305 -480 380 -480 {
lab=#net3}
N 380 -490 380 -480 {
lab=#net3}
N 380 -480 380 -470 {
lab=#net3}
N 375 -440 395 -440 {
lab=VDD}
N 395 -520 395 -440 {
lab=VDD}
N 375 -520 395 -520 {
lab=VDD}
N 395 -550 395 -520 {
lab=VDD}
N 380 -550 395 -550 {
lab=VDD}
N 380 -610 380 -550 {
lab=VDD}
N 305 -440 340 -440 {
lab=#net2}
N 305 -440 305 -395 {
lab=#net2}
N 305 -395 380 -395 {
lab=#net2}
N 195 -520 305 -520 {
lab=#net3}
N 195 -440 305 -440 {
lab=#net2}
N 155 -490 155 -470 {
lab=#net4}
N 155 -570 155 -550 {
lab=VDD}
N 155 -570 380 -570 {
lab=VDD}
N 155 -410 155 -335 {
lab=G3_2}
N 130 -440 160 -440 {
lab=VDD}
N 130 -520 130 -440 {
lab=VDD}
N 130 -520 160 -520 {
lab=VDD}
N 130 -520 160 -520 {
lab=VDD}
N 130 -550 130 -520 {
lab=VDD}
N 130 -550 155 -550 {
lab=VDD}
N 155 -335 155 -235 {
lab=G3_2}
N 155 -175 155 -135 {
lab=G3_1}
N 155 -205 165 -205 {
lab=VSS}
N 165 -205 165 -105 {
lab=VSS}
N 155 -105 165 -105 {
lab=VSS}
N 155 -105 165 -105 {
lab=VSS}
N 165 -105 165 -75 {
lab=VSS}
N 155 -75 165 -75 {
lab=VSS}
N 155 -75 155 -45 {
lab=VSS}
N 155 -45 380 -45 {
lab=VSS}
N 90 -205 115 -205 {
lab=G3_2}
N 90 -255 90 -205 {
lab=G3_2}
N 90 -155 155 -155 {
lab=G3_1}
N 90 -155 90 -105 {
lab=G3_1}
N 90 -105 115 -105 {
lab=G3_1}
N 90 -255 155 -255 {
lab=G3_2}
N 340 -265 340 -205 {
lab=G0_2}
N 340 -265 560 -265 {
lab=G0_2}
N 340 -155 340 -105 {
lab=G0_1}
N 340 -155 555 -155 {
lab=G0_1}
C {symbols/nfet_03v3.sym} 360 -205 0 0 {name=M1
L=0.5u
W=19.2u
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
C {symbols/nfet_03v3.sym} 360 -105 0 0 {name=M2
L=0.5u
W=19.2u
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
C {symbols/pfet_03v3.sym} 360 -440 0 0 {name=M7
L=0.5u
W=19.2u
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
C {symbols/pfet_03v3.sym} 360 -520 0 0 {name=M8
L=0.5u
W=19.2u
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
C {symbols/pfet_03v3.sym} 175 -440 0 1 {name=M9
L=0.5u
W=19.2u
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
C {symbols/pfet_03v3.sym} 175 -520 0 1 {name=M10
L=0.5u
W=19.2u
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
C {symbols/nfet_03v3.sym} 135 -205 0 0 {name=M11
L=0.5u
W=19.2u
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
C {symbols/nfet_03v3.sym} 135 -105 0 0 {name=M12
L=0.5u
W=19.2u
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
C {devices/lab_pin.sym} 380 -600 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 305 -45 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 -265 0 0 {name=p2 sig_type=std_logic lab=G0_2}
C {devices/lab_pin.sym} 525 -155 0 0 {name=p3 sig_type=std_logic lab=G0_1}
C {devices/lab_pin.sym} 90 -255 0 0 {name=p4 sig_type=std_logic lab=G3_2}
C {devices/lab_pin.sym} 90 -105 0 0 {name=p5 sig_type=std_logic lab=G3_1}
C {devices/ipin.sym} 480 -345 0 0 {name=p8 lab=G0_2}
C {devices/iopin.sym} 540 -345 0 0 {name=p9 lab=VDD}
C {devices/iopin.sym} 540 -310 0 0 {name=p10 lab=VSS}
C {devices/opin.sym} 645 -345 0 0 {name=p11 lab=G3_2}
C {devices/ipin.sym} 480 -315 0 0 {name=p6 lab=G0_1}
C {devices/opin.sym} 645 -310 0 0 {name=p12 lab=G3_1}
