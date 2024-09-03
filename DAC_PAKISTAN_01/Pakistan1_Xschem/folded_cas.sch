v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 -330 370 -290 {
lab=#net1}
N 370 -290 590 -290 {
lab=#net1}
N 590 -330 590 -290 {
lab=#net1}
N 480 -290 480 -220 {
lab=#net1}
N 370 -360 590 -360 {
lab=#net2}
N 480 -190 490 -190 {
lab=#net3}
N 490 -190 490 -140 {
lab=#net3}
N 480 -140 490 -140 {
lab=#net3}
N 870 -320 870 -240 {
lab=#net4}
N 1070 -320 1070 -240 {
lab=#net5}
N 910 -350 1030 -350 {
lab=#net6}
N 910 -210 1030 -210 {
lab=#net7}
N 820 -350 870 -350 {
lab=#net8}
N 1070 -350 1140 -350 {
lab=#net9}
N 870 -180 870 -120 {
lab=#net3}
N 870 -120 1070 -120 {
lab=#net3}
N 1070 -180 1070 -120 {
lab=#net3}
N 480 -120 870 -120 {
lab=#net3}
N 480 -160 480 -120 {
lab=#net3}
N 870 -210 870 -180 {
lab=#net3}
N 1070 -210 1070 -180 {
lab=#net3}
N 1070 -680 1070 -650 {
lab=#net10}
N 900 -620 1030 -620 {
lab=#net11}
N 840 -625 875 -625 {
lab=#net10}
N 1065 -620 1110 -620 {
lab=#net10}
N 1110 -680 1110 -620 {
lab=#net10}
N 1070 -680 1110 -680 {
lab=#net10}
N 870 -595 870 -540 {}
N 1070 -590 1070 -535 {}
N 1065 -505 1120 -505 {}
N 795 -510 875 -510 {}
N 1070 -475 1070 -380 {}
N 870 -680 870 -655 {}
N 870 -680 1075 -680 {}
N 840 -680 840 -625 {}
N 840 -680 870 -680 {}
N 870 -480 870 -380 {}
C {symbols/nfet_03v3.sym} 350 -360 0 0 {name=M1
L=0.28u
W=2.7u
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
C {symbols/nfet_03v3.sym} 610 -360 0 1 {name=M2
L=0.28u
W=2.7u
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
C {symbols/nfet_03v3.sym} 460 -190 0 0 {name=M3
L=0.28u
W=5.4u
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
C {symbols/nfet_03v3.sym} 890 -350 0 1 {name=M4
L=0.28u
W=2.7u
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
C {symbols/nfet_03v3.sym} 890 -210 0 1 {name=M5
L=0.28u
W=2.7u
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
C {symbols/nfet_03v3.sym} 1050 -350 0 0 {name=M6
L=0.28u
W=2.7u
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
C {symbols/nfet_03v3.sym} 1050 -210 0 0 {name=M7
L=0.28u
W=2.7u
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
C {symbols/pfet_03v3.sym} 890 -625 0 1 {name=M8
L=0.28u
W=50u
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
C {symbols/pfet_03v3.sym} 1050 -620 0 0 {name=M9
L=0.28u
W=50u
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
C {symbols/pfet_03v3.sym} 890 -510 0 1 {name=M10
L=0.28u
W=50u
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
C {symbols/pfet_03v3.sym} 1050 -505 0 0 {name=M11
L=0.28u
W=50u
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
