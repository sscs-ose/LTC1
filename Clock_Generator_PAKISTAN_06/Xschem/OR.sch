v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -210 0 -180 {
lab=#net1}
N 180 -210 180 -180 {
lab=#net1}
N 0 -150 0 -120 {
lab=VSS}
N 180 -150 180 -120 {
lab=VSS}
N 0 -120 0 -100 {
lab=VSS}
N 180 -120 180 -100 {
lab=VSS}
N -70 -150 -40 -150 {
lab=A}
N 120 -150 140 -150 {
lab=B}
N 120 -310 120 -210 {
lab=#net1}
N 120 -360 120 -310 {
lab=#net1}
N 120 -470 120 -420 {
lab=#net2}
N 40 -390 80 -390 {
lab=B}
N 40 -500 80 -500 {
lab=A}
N 120 -390 210 -390 {
lab=VDD}
N 120 -530 120 -500 {
lab=VDD}
N 120 -580 120 -530 {
lab=VDD}
N 130 -100 130 -30 {
lab=VSS}
N 0 -210 120 -210 {
lab=#net1}
N 120 -210 180 -210 {
lab=#net1}
N -0 -100 130 -100 {
lab=VSS}
N 130 -100 180 -100 {
lab=VSS}
N 400 -330 400 -190 {
lab=#net1}
N 400 -190 440 -190 {
lab=#net1}
N 400 -330 440 -330 {
lab=#net1}
N 480 -300 480 -220 {
lab=VOUT}
N 480 -160 480 -130 {
lab=VSS}
N 480 -390 480 -360 {
lab=VDD}
N 480 -260 510 -260 {
lab=VOUT}
N 480 -330 500 -330 {
lab=VDD}
N 500 -370 500 -330 {
lab=VDD}
N 480 -370 500 -370 {
lab=VDD}
N 480 -190 500 -190 {
lab=VSS}
N 500 -190 500 -150 {
lab=VSS}
N 480 -150 500 -150 {
lab=VSS}
N 120 -270 400 -270 {
lab=#net1}
C {symbols/nfet_03v3.sym} -20 -150 0 0 {name=M1
L=0.56u
W=1.12u
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
C {symbols/pfet_03v3.sym} 100 -390 0 0 {name=M2
L=0.56u
W=4.48u
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
C {symbols/nfet_03v3.sym} 160 -150 0 0 {name=M3
L=0.56u
W=1.12u
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
C {symbols/pfet_03v3.sym} 100 -500 0 0 {name=M6
L=0.56u
W=4.48u
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
C {devices/iopin.sym} 130 -30 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 120 -580 3 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 40 -500 0 0 {name=p3 lab=A
W=4.48u}
C {devices/ipin.sym} 40 -390 0 0 {name=p4 lab=B
W=4.48u}
C {devices/lab_wire.sym} -60 -150 0 0 {name=p6 sig_type=std_logic lab=A
W=2.24u}
C {devices/lab_wire.sym} 130 -150 0 0 {name=p7 sig_type=std_logic lab=B
W=2.24u}
C {devices/lab_wire.sym} 200 -390 0 0 {name=p5 sig_type=std_logic lab=VDD
W=4.48u}
C {devices/opin.sym} 510 -260 0 0 {name=p13 lab=VOUT}
C {symbols/pfet_03v3.sym} 460 -330 0 0 {name=M4
L=0.56u
W=2.24u
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
C {symbols/nfet_03v3.sym} 460 -190 0 0 {name=M5
L=0.56u
W=1.12u
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
C {devices/lab_wire.sym} 480 -380 0 0 {name=p8 sig_type=std_logic lab=VDD
W=4.48u}
C {devices/lab_wire.sym} 480 -130 0 0 {name=p9 sig_type=std_logic lab=VSS
W=4.48u}
