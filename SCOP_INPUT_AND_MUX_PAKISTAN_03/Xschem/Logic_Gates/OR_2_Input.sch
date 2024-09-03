v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -0 90 20 {
lab=#net1}
N 30 -30 50 -30 {
lab=A}
N 90 110 90 140 {
lab=#net2}
N 90 50 110 50 {
lab=VDD}
N 30 50 50 50 {
lab=B}
N 90 -70 90 -60 {
lab=VDD}
N 90 -30 100 -30 {
lab=VDD}
N 100 -70 100 -30 {
lab=VDD}
N 90 -70 100 -70 {
lab=VDD}
N -20 190 -10 190 {
lab=VSS}
N -10 190 -10 230 {
lab=VSS}
N -20 230 -10 230 {
lab=VSS}
N -20 230 -20 260 {
lab=VSS}
N -80 190 -60 190 {
lab=A}
N -20 140 -20 160 {
lab=#net2}
N 230 190 250 190 {
lab=B}
N 190 230 190 260 {
lab=VSS}
N 180 190 190 190 {
lab=VSS}
N 180 190 180 230 {
lab=VSS}
N 180 230 190 230 {
lab=VSS}
N 190 140 190 160 {
lab=#net2}
N 90 140 190 140 {
lab=#net2}
N 90 -100 90 -70 {
lab=VDD}
N -20 220 -20 230 {
lab=VSS}
N 190 220 190 230 {
lab=VSS}
N -20 140 90 140 {
lab=#net2}
N 90 110 300 110 {
lab=#net2}
N 90 260 190 260 {
lab=VSS}
N 90 260 90 290 {
lab=VSS}
N 370 40 380 40 {
lab=VDD}
N 380 0 380 40 {
lab=VDD}
N 370 0 380 0 {
lab=VDD}
N 370 0 370 10 {
lab=VDD}
N 370 -30 370 0 {
lab=VDD}
N 370 70 370 110 {
lab=OUT}
N 300 40 330 40 {
lab=#net2}
N 300 180 330 180 {
lab=#net2}
N 370 110 440 110 {
lab=OUT}
N 370 180 380 180 {
lab=VSS}
N 380 180 380 220 {
lab=VSS}
N 370 220 380 220 {
lab=VSS}
N 370 220 370 250 {
lab=VSS}
N 370 110 370 150 {
lab=OUT}
N 370 210 370 220 {
lab=VSS}
N 300 110 300 180 {
lab=#net2}
N 300 40 300 110 {
lab=#net2}
N 90 80 90 110 {
lab=#net2}
N -20 260 90 260 {
lab=VSS}
C {symbols/pfet_03v3.sym} 70 -30 0 0 {name=M1
L=0.28u
W=2u
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
C {symbols/pfet_03v3.sym} 70 50 0 0 {name=M2
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} -40 190 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 210 190 0 1 {name=M4
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
C {devices/ipin.sym} 30 -30 0 0 {name=p3 lab=A}
C {devices/ipin.sym} 30 50 0 0 {name=p4 lab=B}
C {devices/lab_pin.sym} -80 190 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 250 190 0 1 {name=p2 sig_type=std_logic lab=B}
C {devices/iopin.sym} 90 -100 0 0 {name=p5 lab=VDD}
C {devices/iopin.sym} 90 290 0 0 {name=p6 lab=VSS}
C {devices/opin.sym} 440 110 0 0 {name=p7 lab=OUT}
C {symbols/pfet_03v3.sym} 350 40 0 0 {name=M8
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
C {symbols/nfet_03v3.sym} 350 180 0 0 {name=M9
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
C {devices/lab_pin.sym} 370 -20 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 370 240 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 110 50 0 1 {name=p8 sig_type=std_logic lab=VDD}
