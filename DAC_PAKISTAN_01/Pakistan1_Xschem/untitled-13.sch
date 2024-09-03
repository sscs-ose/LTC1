v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -480 420 -480 {
lab=VSS}
N 420 -480 420 -380 {
lab=VSS}
N 410 -380 420 -380 {
lab=VSS}
N 820 -480 830 -480 {
lab=VSS}
N 830 -480 830 -380 {
lab=VSS}
N 820 -380 830 -380 {
lab=VSS}
N 780 -540 780 -480 {
lab=ITAIL}
N 780 -540 820 -540 {
lab=ITAIL}
N 780 -430 780 -380 {
lab=#net1}
N 410 -325 820 -325 {
lab=VSS}
N 370 -540 370 -480 {
lab=ITAIL}
N 370 -430 370 -380 {
lab=#net1}
N 780 -430 820 -430 {
lab=#net1}
N 820 -580 820 -515 {
lab=ITAIL}
N 820 -380 820 -340 {
lab=VSS}
N 410 -380 410 -345 {
lab=VSS}
N 410 -345 410 -340 {
lab=VSS}
N 410 -340 410 -325 {
lab=VSS}
N 820 -340 820 -325 {
lab=VSS}
N 410 -445 410 -415 {
lab=#net2}
N 820 -445 820 -415 {
lab=#net1}
N 820 -515 820 -510 {
lab=ITAIL}
N 820 -450 820 -445 {
lab=#net1}
N 820 -415 820 -410 {
lab=#net1}
N 410 -450 410 -445 {
lab=#net2}
N 410 -415 410 -410 {
lab=#net2}
N 370 -540 780 -540 {
lab=ITAIL}
N 370 -430 780 -430 {
lab=#net1}
N 410 -620 410 -510 {
lab=OUT}
C {symbols/nfet_03v3.sym} 800 -480 0 0 {name=M3
L=.5u
W=.6u
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
C {symbols/nfet_03v3.sym} 800 -380 0 0 {name=M4
L=.5u
W=.6u
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
C {symbols/nfet_03v3.sym} 390 -480 0 0 {name=M5
L=.5u
W=.6u
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
C {symbols/nfet_03v3.sym} 390 -380 0 0 {name=M6
L=0.5u
W=0.6u
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
C {devices/opin.sym} 410 -620 0 0 {name=p1 lab=OUT}
C {devices/ipin.sym} 820 -580 0 0 {name=p2 lab=ITAIL}
C {devices/iopin.sym} 605 -325 0 0 {name=p3 lab=VSS}
