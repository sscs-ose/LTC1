v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -540 -240 -540 -220 {
lab=#net1}
N -540 -220 -420 -220 {
lab=#net1}
N -420 -240 -420 -220 {
lab=#net1}
N -480 -220 -480 -170 {
lab=#net1}
N -480 -110 -480 -60 {
lab=#net2}
N -540 -320 -540 -300 {
lab=VDD}
N -540 -320 -420 -320 {
lab=VDD}
N -420 -320 -420 -300 {
lab=VDD}
N -560 -140 -520 -140 {
lab=A}
N -560 -30 -520 -30 {
lab=B}
N -620 -270 -580 -270 {
lab=A}
N -490 -270 -460 -270 {
lab=B}
N -480 -200 -420 -200 {
lab=#net1}
N -480 -350 -480 -320 {
lab=VDD}
N -480 0 -480 40 {
lab=VSS}
N -540 -300 -540 -270 {
lab=VDD}
N -420 -300 -420 -270 {
lab=VDD}
N -480 -30 -480 0 {
lab=VSS}
N -480 -140 -430 -140 {
lab=VSS}
N -200 -270 -200 -130 {
lab=#net1}
N -200 -130 -160 -130 {
lab=#net1}
N -200 -270 -160 -270 {
lab=#net1}
N -120 -240 -120 -160 {
lab=VOUT}
N -120 -100 -120 -70 {
lab=VSS}
N -120 -330 -120 -300 {
lab=VDD}
N -120 -200 -90 -200 {
lab=VOUT}
N -230 -200 -200 -200 {
lab=#net1}
N -120 -270 -100 -270 {
lab=VDD}
N -100 -310 -100 -270 {
lab=VDD}
N -120 -310 -100 -310 {
lab=VDD}
N -120 -130 -100 -130 {
lab=VSS}
N -100 -130 -100 -90 {
lab=VSS}
N -120 -90 -100 -90 {
lab=VSS}
N -420 -200 -230 -200 {
lab=#net1}
N -120 -70 -120 -50 {
lab=VSS}
N -150 -50 -120 -50 {
lab=VSS}
N -120 -360 -120 -330 {
lab=VDD}
N -120 -360 -70 -360 {
lab=VDD}
C {devices/iopin.sym} -480 -350 3 0 {name=p1 lab=VDD}
C {symbols/nfet_03v3.sym} -500 -140 0 0 {name=M1
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -560 -270 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -440 -270 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} -500 -30 0 0 {name=M4
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
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} -480 40 1 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -560 -140 0 0 {name=p3 lab=A
W=2.24u}
C {devices/ipin.sym} -560 -30 0 0 {name=p4 lab=B
W=2.24u}
C {devices/lab_wire.sym} -600 -270 0 0 {name=p5 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} -470 -270 0 0 {name=p6 sig_type=std_logic lab=B
W=2.24u}
C {devices/lab_wire.sym} -440 -140 0 0 {name=p7 sig_type=std_logic lab=VSS
W=2.24u}
C {devices/opin.sym} -90 -200 0 0 {name=p11 lab=VOUT}
C {symbols/pfet_03v3.sym} -140 -270 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} -140 -130 0 0 {name=M6
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
C {devices/lab_wire.sym} -130 -50 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 -360 0 0 {name=p9 sig_type=std_logic lab=VDD}
