v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -220 230 -220 {
lab=A}
N 200 -120 230 -120 {
lab=B}
N 80 -350 120 -350 {
lab=A}
N 280 -350 320 -350 {
lab=B}
N 360 -390 360 -380 {
lab=VDD}
N 160 -390 360 -390 {
lab=VDD}
N 160 -390 160 -380 {
lab=VDD}
N 260 -410 260 -390 {
lab=VDD}
N 270 -220 290 -220 {
lab=VSS}
N 270 -270 440 -270 {
lab=OUT}
N 290 -220 290 -120 {
lab=VSS}
N 270 -120 290 -120 {
lab=VSS}
N 160 -360 160 -350 {
lab=VDD}
N 160 -360 360 -360 {
lab=VDD}
N 360 -360 360 -350 {
lab=VDD}
N 160 -320 360 -320 {
lab=OUT}
N 270 -190 270 -150 {
lab=#net1}
N 270 -90 270 -50 {
lab=VSS}
N 270 -320 270 -250 {
lab=OUT}
C {symbols/pfet_03v3.sym} 140 -350 0 0 {name=M2
L=0.28u
W=0.5u
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
C {symbols/pfet_03v3.sym} 340 -350 0 0 {name=M3
L=0.28u
W=0.5u
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
C {devices/lab_pin.sym} 80 -350 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 280 -350 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 200 -220 0 0 {name=p3 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 200 -120 0 0 {name=p4 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 270 -50 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 -410 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 70 -260 0 0 {name=p8 lab=VDD}
C {devices/iopin.sym} 70 -240 0 0 {name=p9 lab=VSS}
C {devices/ipin.sym} 120 -220 0 0 {name=p10 lab=A}
C {devices/ipin.sym} 120 -200 0 0 {name=p11 lab=B}
C {devices/opin.sym} 70 -180 0 0 {name=p12 lab=OUT}
C {devices/lab_pin.sym} 440 -270 0 0 {name=p7 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 290 -170 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 255 -360 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 250 -220 0 0 {name=M1
L=0.28u
W=0.5u
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
C {symbols/nfet_03v3.sym} 250 -120 0 0 {name=M4
L=0.28u
W=0.5u
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
