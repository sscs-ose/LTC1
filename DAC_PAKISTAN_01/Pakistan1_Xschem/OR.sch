v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 570 -430 570 -360 {
lab=VDD}
N 680 -310 710 -310 {
lab=OUT}
N 90 -310 270 -310 {
lab=#net1}
N 170 -370 170 -310 {
lab=#net1}
N 170 -460 170 -430 {
lab=#net2}
N 170 -490 180 -490 {
lab=VDD}
N 180 -490 180 -400 {
lab=VDD}
N 170 -400 180 -400 {
lab=VDD}
N 170 -520 170 -490 {
lab=VDD}
N 90 -280 90 -250 {
lab=VSS}
N 90 -250 90 -240 {
lab=VSS}
N 90 -240 270 -240 {
lab=VSS}
N 270 -250 270 -240 {
lab=VSS}
N 270 -280 270 -250 {
lab=VSS}
N 570 -260 570 -240 {
lab=VSS}
N 270 -240 570 -240 {
lab=VSS}
N 270 -240 270 -210 {
lab=VSS}
N 100 -490 130 -490 {
lab=B}
N 100 -400 130 -400 {
lab=A}
N 200 -280 230 -280 {
lab=A}
N 20 -280 50 -280 {
lab=B}
N 170 -520 570 -520 {
lab=VDD}
N 570 -520 570 -430 {
lab=VDD}
N 380 -520 380 -500 {
lab=VDD}
N 270 -310 500 -310 {
lab=#net1}
C {devices/iopin.sym} 360 -450 0 0 {name=p8 lab=VDD}
C {devices/iopin.sym} 360 -430 0 0 {name=p9 lab=VSS}
C {devices/ipin.sym} 410 -410 0 0 {name=p10 lab=A}
C {devices/ipin.sym} 410 -390 0 0 {name=p11 lab=B}
C {devices/opin.sym} 360 -370 0 0 {name=p12 lab=OUT}
C {GF_INV.sym} 570 -310 0 0 {name=x1}
C {devices/lab_pin.sym} 710 -310 0 0 {name=p7 sig_type=std_logic lab=OUT}
C {symbols/nfet_03v3.sym} 250 -280 0 0 {name=M1
L=0.28u
W=0.25u
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
C {symbols/pfet_03v3.sym} 150 -490 0 0 {name=M2
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 150 -400 0 0 {name=M5
L=0.28u
W=1u
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
C {symbols/nfet_03v3.sym} 70 -280 0 0 {name=M6
L=0.28u
W=0.25u
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
C {devices/lab_pin.sym} 380 -500 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 270 -210 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 -280 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 200 -280 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 100 -400 0 0 {name=p5 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 100 -490 0 0 {name=p6 sig_type=std_logic lab=B}
