v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -90 290 -90 {
lab=IN}
N 190 -220 190 -90 {
lab=IN}
N 190 -220 290 -220 {
lab=IN}
N 330 -190 330 -120 {
lab=#net1}
N 330 -90 440 -90 {
lab=VSS}
N 440 -90 440 -20 {
lab=VSS}
N 330 -20 440 -20 {
lab=VSS}
N 330 -60 330 -20 {
lab=VSS}
N 330 -220 410 -220 {
lab=VDD}
N 410 -300 410 -220 {
lab=VDD}
N 330 -300 410 -300 {
lab=VDD}
N 330 -300 330 -250 {
lab=VDD}
N 100 -160 190 -160 {
lab=IN}
N 330 -160 430 -160 {
lab=#net1}
N 430 -160 480 -160 {
lab=#net1}
N 560 -200 560 -130 {
lab=#net1}
N 560 -100 670 -100 {
lab=VSS}
N 670 -100 670 -30 {
lab=VSS}
N 560 -30 670 -30 {
lab=VSS}
N 560 -70 560 -30 {
lab=VSS}
N 560 -230 640 -230 {
lab=VDD}
N 640 -310 640 -230 {
lab=VDD}
N 560 -310 640 -310 {
lab=VDD}
N 560 -310 560 -260 {
lab=VDD}
N 560 -170 660 -170 {
lab=#net1}
N 500 -230 520 -230 {}
N 500 -230 500 -100 {}
N 500 -100 520 -100 {}
N 480 -160 490 -160 {}
N 490 -160 500 -160 {}
C {symbols/nfet_03v3.sym} 310 -90 0 0 {name=M1
L=3=280n
W=10u
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
C {symbols/pfet_03v3.sym} 310 -220 0 0 {name=M2
L=280n
W=10u
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
C {devices/iopin.sym} 130 -340 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 210 -340 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 170 -310 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 210 -310 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 100 -160 0 0 {name=p5 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 330 -300 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 330 -20 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 660 -170 0 1 {name=p11 sig_type=std_logic lab=OUT}
C {symbols/nfet_03v3.sym} 540 -100 0 0 {name=M3
L=3=280n
W=10u
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
C {symbols/pfet_03v3.sym} 540 -230 0 0 {name=M4
L=280n
W=10u
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
C {devices/lab_pin.sym} 560 -310 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -30 0 0 {name=p9 sig_type=std_logic lab=VSS}
