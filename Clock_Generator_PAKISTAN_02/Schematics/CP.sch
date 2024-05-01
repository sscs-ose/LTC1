v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 720 -260 760 -260 {
lab=IPD+}
N 680 -310 680 -290 {
lab=IPD+}
N 800 -310 800 -290 {
lab=#net1}
N 800 -390 820 -390 {
lab=VSS}
N 800 -260 820 -260 {
lab=VSS}
N 800 -360 800 -340 {
lab=#net1}
N 730 -390 760 -390 {
lab=PD}
N 650 -260 680 -260 {
lab=VSS}
N 680 -230 680 -220 {
lab=VSS}
N 680 -220 680 -200 {
lab=VSS}
N 400 -100 400 -60 {
lab=VCNTL}
N 400 -390 400 -370 {
lab=#net2}
N 300 -420 360 -420 {
lab=IPD_}
N 310 -180 360 -180 {
lab=#net3}
N 400 -250 400 -210 {
lab=#net2}
N 400 -150 400 -100 {
lab=VCNTL}
N 300 -180 310 -180 {
lab=#net3}
N 190 -250 190 -230 {
lab=VDD}
N 190 -120 190 -100 {
lab=VSS}
N 120 -180 140 -180 {
lab=PU}
N 260 -470 260 -450 {
lab=VDD}
N 220 -420 260 -420 {
lab=VDD}
N 260 -390 260 -370 {
lab=IPD_}
N 260 -370 310 -370 {
lab=IPD_}
N 310 -420 310 -370 {
lab=IPD_}
N 260 -370 260 -330 {
lab=IPD_}
N 730 -310 730 -260 {
lab=IPD+}
N 680 -310 730 -310 {
lab=IPD+}
N 680 -340 680 -310 {
lab=IPD+}
N 400 -180 430 -180 {
lab=VDD}
N 400 -420 430 -420 {
lab=VDD}
N 800 -230 800 -200 {
lab=VSS}
N 800 -340 800 -310 {
lab=#net1}
N 800 -440 800 -420 {
lab=VCNTL}
N 400 -480 400 -450 {
lab=VDD}
N 400 -370 400 -250 {
lab=#net2}
N 680 -390 680 -340 {
lab=IPD+}
N 260 -330 260 -260 {
lab=IPD_}
C {symbols/nfet_03v3.sym} 780 -390 0 0 {name=M4
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
C {inv_my.sym} -300 -50 0 0 {name=x1}
C {symbols/nfet_03v3.sym} 780 -260 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 700 -260 0 1 {name=M6
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
C {devices/lab_pin.sym} 190 -250 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -100 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 260 -270 0 0 {name=p3 sig_type=std_logic lab=IPD_}
C {devices/lab_pin.sym} 650 -260 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 -200 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 800 -200 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -390 0 0 {name=p10 sig_type=std_logic lab=PD}
C {devices/lab_pin.sym} 120 -180 0 0 {name=p11 sig_type=std_logic lab=PU}
C {devices/lab_pin.sym} 230 -420 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 430 -420 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 430 -180 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 -470 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 800 -430 0 1 {name=p18 sig_type=std_logic lab=VCNTL}
C {devices/lab_pin.sym} 400 -100 0 1 {name=p19 sig_type=std_logic lab=VCNTL}
C {devices/iopin.sym} 210 -540 0 0 {name=p20 lab=VDD}
C {devices/iopin.sym} 310 -540 0 0 {name=p21 lab=VSS
}
C {devices/ipin.sym} 410 -540 0 0 {name=p22 lab=PU}
C {devices/opin.sym} 650 -540 0 0 {name=p23 lab=VCNTL}
C {devices/ipin.sym} 560 -540 0 0 {name=p24 lab=PD}
C {devices/lab_pin.sym} 400 -470 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 680 -390 0 0 {name=p7 sig_type=std_logic lab=IPD+}
C {devices/ipin.sym} 530 -590 0 0 {name=p9 lab=IPD+}
C {devices/ipin.sym} 640 -590 0 0 {name=p15 lab=IPD_}
C {devices/lab_pin.sym} 820 -260 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 810 -390 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 380 -180 0 0 {name=M1
L=0.56u
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
C {symbols/pfet_03v3.sym} 380 -420 0 0 {name=M2
L=0.56u
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
C {symbols/pfet_03v3.sym} 280 -420 0 1 {name=M3
L=0.56u
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
