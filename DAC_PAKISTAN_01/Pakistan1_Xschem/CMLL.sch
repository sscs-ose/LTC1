v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -530 190 -470 {
lab=Q_B}
N 470 -530 470 -470 {
lab=Q}
N 320 -320 320 -270 {
lab=#net1}
N 190 -320 320 -320 {
lab=#net1}
N 190 -410 190 -320 {
lab=#net1}
N 320 -320 470 -320 {
lab=#net1}
N 470 -410 470 -320 {
lab=#net1}
N 690 -410 690 -320 {
lab=#net2}
N 690 -320 970 -320 {
lab=#net2}
N 970 -410 970 -320 {
lab=#net2}
N 840 -320 840 -270 {
lab=#net2}
N 690 -540 690 -470 {
lab=Q}
N 970 -520 970 -470 {
lab=Q_B}
N 110 -440 150 -440 {
lab=D}
N 510 -440 560 -440 {
lab=D_B}
N 650 -520 650 -440 {
lab=Q_B}
N 650 -520 970 -520 {
lab=Q_B}
N 1010 -540 1010 -440 {
lab=Q}
N 690 -540 1010 -540 {
lab=Q}
N 690 -440 970 -440 {
lab=VSS}
N 190 -440 470 -440 {
lab=VSS}
N 190 -650 190 -620 {
lab=VDD}
N 190 -650 470 -650 {
lab=VDD}
N 470 -650 470 -620 {
lab=VDD}
N 190 -560 190 -530 {
lab=Q_B}
N 470 -560 470 -530 {
lab=Q}
N 470 -540 690 -540 {
lab=Q}
N 190 -520 650 -520 {
lab=Q_B}
N 160 -510 190 -510 {
lab=Q_B}
N 470 -510 510 -510 {
lab=Q}
N 330 -690 330 -650 {
lab=VDD}
N 240 -240 280 -240 {
lab=CLK}
N 840 -240 880 -240 {
lab=VSS}
N 320 -240 380 -240 {
lab=VSS}
N 320 -210 840 -210 {
lab=#net3}
N 570 -210 570 -170 {
lab=#net3}
N 760 -240 800 -240 {
lab=CLKB}
N 570 -110 570 -80 {
lab=VSS}
C {symbols/nfet_03v3.sym} 490 -440 0 1 {name=M2
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 670 -440 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 990 -440 0 1 {name=M4
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
C {symbols/nfet_03v3.sym} 820 -240 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 170 -440 0 0 {name=M6
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
model=nfet_03v3
spiceprefix=X
}
C {devices/res.sym} 190 -590 0 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 470 -590 0 0 {name=R2
value=20k
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} 570 -140 0 0 {name=I0 value=50u}
C {devices/lab_pin.sym} 330 -680 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 570 -90 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -440 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 830 -440 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 875 -240 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -240 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 160 -510 0 0 {name=p7 sig_type=std_logic lab=Q_B}
C {devices/lab_pin.sym} 510 -510 0 0 {name=p8 sig_type=std_logic lab=Q}
C {devices/iopin.sym} 30 -370 0 0 {name=p9 lab=VDD}
C {devices/iopin.sym} 30 -350 0 0 {name=p10 lab=VSS}
C {devices/ipin.sym} 80 -330 0 0 {name=p11 lab=D}
C {devices/ipin.sym} 80 -310 0 0 {name=p12 lab=D_B}
C {devices/ipin.sym} 80 -290 0 0 {name=p13 lab=CLK}
C {devices/ipin.sym} 80 -270 0 0 {name=p14 lab=CLKB}
C {devices/opin.sym} 30 -250 0 0 {name=p15 lab=Q}
C {devices/opin.sym} 30 -230 0 0 {name=p16 lab=Q_B}
C {devices/lab_pin.sym} 120 -440 0 0 {name=p17 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 560 -440 0 0 {name=p18 sig_type=std_logic lab=D_B}
C {devices/lab_pin.sym} 270 -240 0 0 {name=p19 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 770 -240 0 0 {name=p20 sig_type=std_logic lab=CLKB}
C {symbols/nfet_03v3.sym} 300 -240 0 0 {name=M1
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
model=nfet_03v3
spiceprefix=X
}
