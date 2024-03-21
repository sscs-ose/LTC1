v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 390 -285 600 -285 {
lab=#net1}
N 390 -320 600 -320 {
lab=VSS}
N 260 -320 260 -290 {
lab=#net2}
N 260 -320 350 -320 {
lab=#net2}
N 260 -270 640 -270 {
lab=#net3}
N 640 -320 640 -270 {
lab=#net3}
N 500 -220 530 -220 {
lab=VSS}
N 530 -220 530 -100 {
lab=VSS}
N 500 -130 530 -130 {
lab=VSS}
N 160 -220 160 -100 {
lab=VSS}
N 160 -350 160 -340 {
lab=VDD}
N 500 -95 500 -70 {
lab=VSS}
N 500 -70 500 -65 {
lab=VSS}
N 160 -100 160 -50 {
lab=VSS}
N 160 -50 530 -50 {
lab=VSS}
N 530 -100 530 -50 {
lab=VSS}
N 500 -65 500 -50 {
lab=VSS}
N 500 -185 500 -165 {
lab=#net4}
N 500 -285 500 -255 {
lab=#net1}
N 390 -370 390 -355 {
lab=IOUT+}
N 600 -370 600 -355 {
lab=IOUT-}
N 445 -220 460 -220 {
lab=IM_T}
N 435 -130 460 -130 {
lab=IM}
N 390 -355 390 -350 {
lab=IOUT+}
N 390 -290 390 -285 {
lab=#net1}
N 600 -355 600 -350 {
lab=IOUT-}
N 600 -290 600 -285 {
lab=#net1}
N 500 -255 500 -250 {
lab=#net1}
N 500 -190 500 -185 {
lab=#net4}
N 500 -165 500 -160 {
lab=#net4}
N 500 -100 500 -95 {
lab=VSS}
C {Local_Enc.sym} 110 -280 0 0 {name=x1}
C {devices/iopin.sym} 160 -350 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 530 -100 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 80 -300 0 0 {name=p3 lab=Ri-1}
C {devices/ipin.sym} 80 -280 0 0 {name=p4 lab=Ri}
C {devices/ipin.sym} 80 -260 0 0 {name=p5 lab=Ci}
C {devices/lab_pin.sym} 490 -320 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 445 -220 0 0 {name=p8 lab=IM_T}
C {devices/ipin.sym} 435 -130 0 0 {name=p9 lab=IM}
C {devices/opin.sym} 390 -370 0 0 {name=p10 lab=IOUT+}
C {devices/opin.sym} 600 -370 0 0 {name=p15 lab=IOUT-}
C {symbols/nfet_03v3.sym} 370 -320 0 0 {name=M5
L=0.28u
W=32u
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
C {symbols/nfet_03v3.sym} 620 -320 0 1 {name=M6
L=0.28u
W=32u
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
C {symbols/nfet_03v3.sym} 480 -220 0 0 {name=M7
L=0.28u
W=32u
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
C {symbols/nfet_03v3.sym} 480 -130 0 0 {name=M8
L=0.28u
W=32u
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
