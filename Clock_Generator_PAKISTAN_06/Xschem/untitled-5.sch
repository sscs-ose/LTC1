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
N 120 -260 280 -260 {
lab=#net1}
N 0 -210 120 -210 {
lab=#net1}
N 120 -210 180 -210 {
lab=#net1}
N -0 -100 130 -100 {
lab=VSS}
N 130 -100 180 -100 {
lab=VSS}
N 470 -250 550 -250 {
lab=VOUT}
N 340 -380 340 -320 {
lab=VDD}
N 340 -180 340 -120 {
lab=VDD}
C {symbols/nfet_03v3.sym} -20 -150 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 100 -390 0 0 {name=M2
L=0.28u
W=0.88u
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
C {symbols/pfet_03v3.sym} 100 -500 0 0 {name=M6
L=0.28u
W=0.88u
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
C {devices/ipin.sym} 40 -500 0 0 {name=p3 lab=A}
C {devices/ipin.sym} 40 -390 0 0 {name=p4 lab=B}
C {devices/lab_wire.sym} -60 -150 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 130 -150 0 0 {name=p7 sig_type=std_logic lab=B}
C {devices/opin.sym} 550 -250 0 0 {name=p9 lab=VOUT}
C {inverter.sym} 430 -240 0 0 {name=x1}
C {devices/lab_wire.sym} 200 -390 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 340 -350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 340 -140 0 0 {name=p10 sig_type=std_logic lab=VSS}
