v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 50 70 90 {
lab=#net1}
N 70 150 70 190 {
lab=#net2}
N 70 220 70 250 {
lab=VSS}
N 0 20 30 20 {
lab=A}
N 0 120 30 120 {
lab=B}
N 0 220 30 220 {
lab=C}
N -70 -190 -70 -170 {
lab=VDD}
N -70 -190 240 -190 {
lab=VDD}
N 240 -190 240 -170 {
lab=VDD}
N -70 -110 -70 -100 {
lab=#net3}
N -70 -100 240 -100 {
lab=#net3}
N 240 -110 240 -100 {
lab=#net3}
N 70 -110 70 -100 {
lab=#net3}
N 70 -190 70 -170 {
lab=VDD}
N -140 -140 -110 -140 {
lab=A}
N 10 -140 30 -140 {
lab=B}
N -70 -170 -70 -140 {
lab=VDD}
N 70 -170 70 -140 {
lab=VDD}
N 240 -170 240 -140 {
lab=VDD}
N 170 -140 200 -140 {
lab=C}
N 70 -100 70 -10 {
lab=#net3}
N 70 120 110 120 {
lab=VSS}
N 70 20 110 20 {
lab=VSS}
N 90 -250 90 -190 {
lab=VDD}
N 70 250 70 300 {
lab=VSS}
N 510 -130 510 10 {
lab=#net3}
N 510 10 550 10 {
lab=#net3}
N 510 -130 550 -130 {
lab=#net3}
N 590 -100 590 -20 {
lab=VOUT}
N 590 40 590 70 {
lab=VSS}
N 590 -190 590 -160 {
lab=VDD}
N 590 -60 620 -60 {
lab=VOUT}
N 480 -60 510 -60 {
lab=#net3}
N 590 -130 610 -130 {
lab=VDD}
N 610 -170 610 -130 {
lab=VDD}
N 590 -170 610 -170 {
lab=VDD}
N 590 10 610 10 {
lab=VSS}
N 610 10 610 50 {
lab=VSS}
N 590 50 610 50 {
lab=VSS}
N 70 -60 480 -60 {
lab=#net3}
N 590 -220 590 -190 {
lab=VDD}
N 590 70 590 110 {
lab=VSS}
N 620 -60 690 -60 {
lab=VOUT}
N 660 -60 660 -30 {
lab=VOUT}
N 660 -30 730 -30 {
lab=VOUT}
N 670 -90 670 -60 {
lab=VOUT}
N 670 -90 730 -90 {
lab=VOUT}
N 730 -60 810 -60 {
lab=VDD}
N 730 -130 730 -90 {
lab=VOUT}
N 730 -130 880 -130 {
lab=VOUT}
N 740 180 780 180 {
lab=VDD}
N 820 120 820 150 {
lab=VDD}
N 740 120 820 120 {
lab=VDD}
N 740 120 740 180 {
lab=VDD}
N 740 180 740 220 {
lab=VDD}
N 740 220 820 220 {
lab=VDD}
N 820 210 820 220 {
lab=VDD}
N 820 150 820 180 {
lab=VDD}
C {symbols/nfet_03v3.sym} 50 20 0 0 {name=M1
L=0.56u
W=3.36u
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
C {symbols/pfet_03v3.sym} 220 -140 0 0 {name=M2
L=0.56u
W=2.24u
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
C {symbols/nfet_03v3.sym} 50 120 0 0 {name=M3
L=0.56u
W=3.36u
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
C {symbols/nfet_03v3.sym} 50 220 0 0 {name=M4
L=0.56u
W=3.36u
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
C {symbols/pfet_03v3.sym} 50 -140 0 0 {name=M5
L=0.56u
W=2.24u
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
C {symbols/pfet_03v3.sym} -90 -140 0 0 {name=M6
L=0.56u
W=2.24u
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
C {devices/iopin.sym} 70 300 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 90 -250 3 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 0 20 0 0 {name=p3 lab=A}
C {devices/ipin.sym} 0 120 0 0 {name=p4 lab=B}
C {devices/ipin.sym} 0 220 0 0 {name=p5 lab=C}
C {devices/lab_wire.sym} -130 -140 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 20 -140 0 0 {name=p7 sig_type=std_logic lab=B
W=2.24u}
C {devices/lab_wire.sym} 190 -140 0 0 {name=p8 sig_type=std_logic lab=C
W=2.24u}
C {devices/lab_wire.sym} 100 20 0 0 {name=p9 sig_type=std_logic lab=VSS
W=3.36u}
C {devices/lab_wire.sym} 110 120 0 0 {name=p10 sig_type=std_logic lab=VSS
W=3.36u}
C {devices/opin.sym} 880 -130 0 0 {name=p13 lab=VOUT}
C {symbols/pfet_03v3.sym} 570 -130 0 0 {name=M7
L=0.56u
W=2.24u
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
C {symbols/nfet_03v3.sym} 570 10 0 0 {name=M8
L=0.56u
W=1.12u
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
C {devices/lab_wire.sym} 590 90 0 0 {name=p11 sig_type=std_logic lab=VSS
W=3.36u}
C {devices/lab_wire.sym} 590 -200 0 0 {name=p12 sig_type=std_logic lab=VDD
W=3.36u}
C {symbols/pfet_03v3.sym} 710 -60 0 0 {name=M9
L=0.56u
W=1.12u
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
C {devices/lab_wire.sym} 800 -60 0 0 {name=p14 sig_type=std_logic lab=VDD
W=3.36u}
C {symbols/pfet_03v3.sym} 800 180 0 0 {name=M10
L=0.56u
W=1.12u
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
C {devices/lab_wire.sym} 740 150 0 0 {name=p15 sig_type=std_logic lab=VDD
W=3.36u}
