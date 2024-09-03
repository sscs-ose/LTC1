v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -450 680 -450 {
lab=VDD}
N 380 -420 680 -420 {
lab=VDD}
N 540 -450 540 -420 {
lab=VDD}
N 380 -390 380 -320 {
lab=OUT_B}
N 680 -390 680 -320 {
lab=OUT}
N 720 -420 720 -370 {
lab=OUT_B}
N 380 -370 720 -370 {
lab=OUT_B}
N 340 -420 340 -360 {
lab=OUT}
N 340 -360 680 -360 {
lab=OUT}
N 380 -290 680 -290 {
lab=VSS}
N 380 -260 680 -260 {
lab=VSS}
N 540 -290 540 -260 {
lab=VSS}
N 720 -290 770 -290 {
lab=#net1}
N 290 -290 340 -290 {
lab=VIN}
N 250 -380 250 -370 {
lab=#net1}
N 250 -370 250 -330 {
lab=#net1}
N 250 -330 770 -330 {
lab=#net1}
N 770 -330 770 -290 {
lab=#net1}
N 70 -290 290 -290 {
lab=VIN}
N 70 -380 70 -290 {
lab=VIN}
N 140 -450 140 -430 {
lab=VDD}
N 140 -450 380 -450 {
lab=VDD}
N 140 -330 140 -260 {
lab=VSS}
N 140 -260 380 -260 {
lab=VSS}
N 380 -340 420 -340 {
lab=OUT_B}
N 640 -340 680 -340 {
lab=OUT}
C {symbols/nfet_03v3.sym} 360 -290 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 360 -420 0 0 {name=M2
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 700 -290 0 1 {name=M3
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 700 -420 0 1 {name=M4
L=0.28u
W=0.22u
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
C {GF_INV.sym} 140 -380 0 0 {name=x1}
C {devices/lab_pin.sym} 290 -450 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -260 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -340 0 0 {name=p3 sig_type=std_logic lab=OUT_B}
C {devices/lab_pin.sym} 680 -340 0 0 {name=p4 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 110 -290 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {devices/iopin.sym} 270 -580 0 0 {name=p6 lab=VSS}
C {devices/ipin.sym} 320 -560 0 0 {name=p7 lab=VIN}
C {devices/opin.sym} 270 -540 0 0 {name=p8 lab=OUT_B}
C {devices/iopin.sym} 270 -600 0 0 {name=p9 lab=VDD}
C {devices/opin.sym} 270 -520 0 0 {name=p10 lab=OUT}
