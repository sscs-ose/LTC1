v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 10 -60 10 {
lab=UP}
N 220 160 220 200 {
lab=ITAIL}
N 220 110 220 140 {
lab=VDD}
N 330 60 330 100 {
lab=#net1}
N 330 0 330 30 {
lab=VDD}
N 180 -0 270 0 {
lab=#net2}
N 270 -0 270 30 {
lab=#net2}
N 270 30 290 30 {
lab=#net2}
N 620 200 620 250 {
lab=VSS}
N 620 80 660 80 {
lab=VSS}
N 620 110 620 140 {
lab=#net3}
N 560 80 580 80 {
lab=ITAIL1}
N 520 80 520 150 {
lab=VSS}
N 520 -0 520 50 {
lab=ITAIL1}
N 520 20 560 20 {
lab=ITAIL1}
N 560 20 560 80 {
lab=ITAIL1}
N 620 0 620 50 {
lab=VCTRL}
N 220 60 220 110 {
lab=VDD}
N 330 160 330 210 {
lab=VCTRL}
N 330 -50 330 -0 {
lab=VDD}
N 520 170 580 170 {
lab=down}
N 260 140 270 140 {
lab=ITAIL}
N 270 130 270 140 {
lab=ITAIL}
N 270 130 290 130 {
lab=ITAIL}
N 270 140 270 180 {
lab=ITAIL}
N 220 180 270 180 {
lab=ITAIL}
N 330 130 400 130 {
lab=VDD}
N 400 20 400 130 {
lab=VDD}
N 400 -20 400 20 {
lab=VDD}
N 330 -20 400 -20 {
lab=VDD}
N -60 70 40 70 {
lab=UP}
N -60 -60 -60 70 {
lab=UP}
N -60 -60 40 -60 {
lab=UP}
N 80 -30 80 40 {
lab=#net2}
N 80 70 190 70 {
lab=VSS}
N 190 70 190 140 {
lab=VSS}
N 80 140 190 140 {
lab=VSS}
N 80 100 80 140 {
lab=VSS}
N 80 -60 160 -60 {
lab=VDD}
N 160 -140 160 -60 {
lab=VDD}
N 80 -140 160 -140 {
lab=VDD}
N 80 -140 80 -90 {
lab=VDD}
N 80 0 180 0 {
lab=#net2}
N 620 170 620 190 {
lab=VSS}
N 620 170 620 200 {
lab=VSS}
C {symbols/pfet_03v3.sym} 310 30 0 0 {name=M1
L=0.56u
W=2.8u
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
C {symbols/pfet_03v3.sym} 310 130 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 240 140 0 1 {name=M2
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
C {devices/lab_pin.sym} 220 60 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 620 240 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 140 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 190 0 0 {name=p5 sig_type=std_logic lab=VCTRL}
C {devices/lab_pin.sym} 620 0 0 0 {name=p6 sig_type=std_logic lab=VCTRL}
C {devices/lab_pin.sym} 330 -40 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 80 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -130 10 0 0 {name=p12 lab=UP}
C {devices/ipin.sym} 530 170 0 0 {name=p13 lab=down}
C {devices/iopin.sym} 950 -60 2 0 {name=p16 lab=VCTRL}
C {devices/iopin.sym} 460 -200 2 0 {name=p17 lab=VDD}
C {devices/iopin.sym} 450 280 2 0 {name=p18 lab=VSS}
C {symbols/nfet_03v3.sym} 540 80 0 1 {name=M6
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
C {symbols/nfet_03v3.sym} 600 80 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 600 170 0 0 {name=M4
L=0.56u
W=1.4u
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
C {symbols/nfet_03v3.sym} 60 70 0 0 {name=M7
L=0.56u
W=0.56u
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
C {symbols/pfet_03v3.sym} 60 -60 0 0 {name=M8
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
C {devices/lab_pin.sym} 80 -140 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 80 140 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 200 0 0 {name=p2 sig_type=std_logic lab=ITAIL}
C {devices/lab_pin.sym} 520 0 0 0 {name=p7 sig_type=std_logic lab=ITAIL1}
C {devices/iopin.sym} 940 -130 2 0 {name=p9 lab=ITAIL1}
C {devices/iopin.sym} 940 -180 2 0 {name=p10 lab=ITAIL}
