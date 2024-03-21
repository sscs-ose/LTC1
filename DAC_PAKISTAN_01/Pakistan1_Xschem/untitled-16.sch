v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2230 -350 2240 -350 {
lab=VSS}
N 2240 -350 2240 -250 {
lab=VSS}
N 2230 -250 2240 -250 {
lab=VSS}
N 2640 -350 2650 -350 {
lab=VSS}
N 2650 -350 2650 -250 {
lab=VSS}
N 2640 -250 2650 -250 {
lab=VSS}
N 2600 -410 2600 -350 {
lab=ITAIL}
N 2600 -410 2640 -410 {
lab=ITAIL}
N 2600 -300 2600 -250 {
lab=#net1}
N 310 -300 2600 -300 {
lab=#net1}
N 310 -410 2600 -410 {
lab=ITAIL}
N 2230 -195 2640 -195 {
lab=VSS}
N 1850 -195 2230 -195 {
lab=VSS}
N 1500 -195 1850 -195 {
lab=VSS}
N 1120 -195 1500 -195 {
lab=VSS}
N 740 -195 1120 -195 {
lab=VSS}
N 1850 -350 1860 -350 {
lab=VSS}
N 1860 -350 1860 -250 {
lab=VSS}
N 1850 -250 1860 -250 {
lab=VSS}
N 1500 -350 1510 -350 {
lab=VSS}
N 1510 -350 1510 -250 {
lab=VSS}
N 1500 -250 1510 -250 {
lab=VSS}
N 1120 -350 1130 -350 {
lab=VSS}
N 1130 -350 1130 -250 {
lab=VSS}
N 1120 -250 1130 -250 {
lab=VSS}
N 740 -350 750 -350 {
lab=VSS}
N 750 -350 750 -250 {
lab=VSS}
N 740 -250 750 -250 {
lab=VSS}
N 2190 -410 2190 -350 {
lab=ITAIL}
N 2190 -300 2190 -250 {
lab=#net1}
N 1810 -410 1810 -350 {
lab=ITAIL}
N 1810 -300 1810 -250 {
lab=#net1}
N 1460 -410 1460 -350 {
lab=ITAIL}
N 1460 -300 1460 -250 {
lab=#net1}
N 1080 -410 1080 -350 {
lab=ITAIL}
N 1080 -300 1080 -250 {
lab=#net1}
N 700 -410 700 -350 {
lab=ITAIL}
N 700 -300 700 -250 {
lab=#net1}
N 2600 -300 2640 -300 {
lab=#net1}
N 2640 -450 2640 -385 {
lab=ITAIL}
N 2640 -250 2640 -210 {
lab=VSS}
N 2230 -250 2230 -215 {
lab=VSS}
N 2230 -215 2230 -210 {
lab=VSS}
N 2230 -210 2230 -195 {
lab=VSS}
N 2640 -210 2640 -195 {
lab=VSS}
N 2230 -315 2230 -285 {
lab=#net2}
N 2640 -315 2640 -285 {
lab=#net1}
N 1850 -315 1850 -285 {
lab=#net3}
N 1500 -315 1500 -285 {
lab=#net4}
N 1120 -315 1120 -285 {
lab=#net5}
N 740 -315 740 -285 {
lab=#net6}
N 2640 -385 2640 -380 {
lab=ITAIL}
N 2640 -320 2640 -315 {
lab=#net1}
N 2640 -285 2640 -280 {
lab=#net1}
N 1850 -320 1850 -315 {
lab=#net3}
N 1850 -285 1850 -280 {
lab=#net3}
N 1500 -385 1500 -380 {
lab=OUT3}
N 1500 -320 1500 -315 {
lab=#net4}
N 1500 -285 1500 -280 {
lab=#net4}
N 1120 -385 1120 -380 {
lab=OUT4}
N 1120 -320 1120 -315 {
lab=#net5}
N 1120 -285 1120 -280 {
lab=#net5}
N 740 -385 740 -380 {
lab=OUT5}
N 740 -320 740 -315 {
lab=#net6}
N 740 -285 740 -280 {
lab=#net6}
N 740 -250 740 -195 {
lab=VSS}
N 1120 -250 1120 -195 {
lab=VSS}
N 1500 -250 1500 -195 {
lab=VSS}
N 1850 -250 1850 -195 {
lab=VSS}
N 2230 -320 2230 -315 {
lab=#net2}
N 2230 -285 2230 -280 {
lab=#net2}
N 820 -405 820 -360 {
lab=OUT5}
N 820 -405 860 -405 {
lab=OUT5}
N 860 -405 860 -390 {
lab=OUT5}
N 820 -360 820 -315 {
lab=OUT5}
N 820 -315 860 -315 {
lab=OUT5}
N 860 -330 860 -315 {
lab=OUT5}
N 860 -360 905 -360 {
lab=VSS}
N 800 -360 820 -360 {
lab=OUT5}
N 800 -400 800 -360 {
lab=OUT5}
N 740 -400 800 -400 {
lab=OUT5}
N 2230 -480 2230 -380 {
lab=OUT1}
N 1850 -500 1850 -380 {
lab=OUT2}
N 1500 -500 1500 -385 {
lab=OUT3}
N 1120 -490 1120 -385 {
lab=OUT4}
N 740 -490 740 -385 {
lab=OUT5}
N 905 -360 905 -195 {
lab=VSS}
C {symbols/nfet_03v3.sym} 2620 -350 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 2620 -250 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 2210 -350 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 2210 -250 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 1830 -350 0 0 {name=M13
L=0.5u
W=1.2u
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
C {symbols/nfet_03v3.sym} 1830 -250 0 0 {name=M14
L=0.5u
W=1.2u
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
C {symbols/nfet_03v3.sym} 1480 -350 0 0 {name=M15
L=0.5u
W=2.4u
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
C {symbols/nfet_03v3.sym} 1480 -250 0 0 {name=M16
L=0.5u
W=2.4u
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
C {symbols/nfet_03v3.sym} 1100 -350 0 0 {name=M17
L=0.5u
W=4.8u
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
C {symbols/nfet_03v3.sym} 1100 -250 0 0 {name=M18
L=0.5u
W=4.8u
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
C {symbols/nfet_03v3.sym} 720 -350 0 0 {name=M19
L=0.5u
W=9.6u
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
C {symbols/nfet_03v3.sym} 720 -250 0 0 {name=M20
L=0.5u
W=9.6u
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
C {symbols/nfet_03v3.sym} 840 -360 0 0 {name=M51
L=0.5u
W=2.4u
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
C {devices/iopin.sym} 2640 -450 0 0 {name=p1 lab=ITAIL}
C {devices/iopin.sym} 2640 -195 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 2230 -480 0 0 {name=p3 lab=OUT1}
C {devices/iopin.sym} 1850 -500 0 0 {name=p4 lab=OUT2}
C {devices/iopin.sym} 1500 -500 0 0 {name=p5 lab=OUT3}
C {devices/iopin.sym} 1120 -490 0 0 {name=p6 lab=OUT4}
C {devices/iopin.sym} 740 -490 0 0 {name=p7 lab=OUT5}
