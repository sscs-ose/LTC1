v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -405 720 -405 {
lab=#net1}
N 510 -440 720 -440 {
lab=VSS}
N 380 -440 380 -410 {
lab=#net2}
N 380 -440 470 -440 {
lab=#net2}
N 380 -390 760 -390 {
lab=#net3}
N 760 -440 760 -390 {
lab=#net3}
N 620 -340 650 -340 {
lab=VSS}
N 650 -340 650 -220 {
lab=VSS}
N 620 -250 650 -250 {
lab=VSS}
N 280 -340 280 -220 {
lab=VSS}
N 280 -470 280 -460 {
lab=VDD}
N 620 -215 620 -190 {
lab=VSS}
N 620 -190 620 -185 {
lab=VSS}
N 280 -220 280 -170 {
lab=VSS}
N 280 -170 650 -170 {
lab=VSS}
N 650 -220 650 -170 {
lab=VSS}
N 620 -185 620 -170 {
lab=VSS}
N 620 -305 620 -285 {
lab=#net4}
N 620 -405 620 -375 {
lab=#net1}
N 720 -490 720 -475 {
lab=OUT-}
N 565 -340 580 -340 {
lab=IM_T}
N 555 -250 580 -250 {
lab=IM}
N 510 -475 510 -470 {
lab=OUT+}
N 510 -410 510 -405 {
lab=#net1}
N 720 -475 720 -470 {
lab=OUT-}
N 720 -410 720 -405 {
lab=#net1}
N 620 -375 620 -370 {
lab=#net1}
N 620 -310 620 -305 {
lab=#net4}
N 620 -285 620 -280 {
lab=#net4}
N 620 -220 620 -215 {
lab=VSS}
N 510 -520 510 -480 {
lab=OUT+}
N 510 -480 510 -475 {
lab=OUT+}
N 720 -530 720 -490 {
lab=OUT-}
C {Local_Enc.sym} 230 -400 0 0 {name=x1}
C {devices/iopin.sym} 280 -470 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 650 -220 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 200 -420 0 0 {name=p3 lab=Ri-1}
C {devices/ipin.sym} 200 -400 0 0 {name=p4 lab=Ri}
C {devices/ipin.sym} 200 -380 0 0 {name=p5 lab=Ci}
C {devices/lab_pin.sym} 610 -440 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 565 -340 0 0 {name=p7 lab=IM_T}
C {devices/ipin.sym} 555 -250 0 0 {name=p8 lab=IM}
C {devices/opin.sym} 510 -520 0 0 {name=p9 lab=OUT+}
C {devices/opin.sym} 720 -530 0 0 {name=p10 lab=OUT-}
C {symbols/nfet_03v3.sym} 490 -440 0 0 {name=M1
L=0.5u
W=38.4u
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
C {symbols/nfet_03v3.sym} 740 -440 0 1 {name=M2
L=0.5u
W=38.4u
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
C {symbols/nfet_03v3.sym} 600 -340 0 0 {name=M3
L=0.5u
W=38.4u
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
C {symbols/nfet_03v3.sym} 600 -250 0 0 {name=M4
L=0.5u
W=38.4u
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
