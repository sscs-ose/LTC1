v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 -110 350 -40 {
lab=OUTB}
N 50 -110 50 -40 {
lab=OUT}
N 50 20 50 60 {
lab=#net1}
N 50 60 350 60 {
lab=#net1}
N 350 20 350 60 {
lab=#net1}
N 190 60 190 80 {
lab=#net1}
N 190 140 190 170 {
lab=VSS}
N 110 110 150 110 {
lab=VCTRL2}
N 190 140 330 140 {
lab=VSS}
N 190 110 330 110 {
lab=VSS}
N 330 110 330 140 {
lab=VSS}
N 50 -10 350 -10 {
lab=VSS}
N -40 -10 10 -10 {
lab=IN}
N 390 -10 450 -10 {
lab=INB}
N 50 -300 350 -300 {
lab=VDD}
N 210 -350 210 -300 {
lab=VDD}
N -180 -300 -180 -220 {
lab=VDD}
N -180 -300 50 -300 {
lab=VDD}
N 350 -300 570 -300 {
lab=VDD}
N 570 -300 570 -220 {
lab=VDD}
N 610 -190 670 -190 {
lab=VCTRL}
N -270 -190 -220 -190 {
lab=VCTRL}
N -30 -300 -30 -230 {
lab=VDD}
N 350 -140 430 -140 {
lab=VDD}
N -30 -140 50 -140 {
lab=VDD}
N -30 -230 -30 -140 {
lab=VDD}
N 270 -140 310 -140 {
lab=OUT}
N 90 -140 130 -140 {
lab=OUTB}
N 130 -70 350 -70 {
lab=OUTB}
N 130 -140 130 -70 {
lab=OUTB}
N 270 -140 270 -90 {
lab=OUT}
N 50 -90 270 -90 {
lab=OUT}
N -90 -90 50 -90 {
lab=OUT}
N -180 -60 50 -60 {
lab=OUT}
N -180 -160 -180 -60 {
lab=OUT}
N 570 -160 570 -60 {
lab=OUTB}
N 350 -60 570 -60 {
lab=OUTB}
N 350 -90 480 -90 {
lab=OUTB}
N -180 -190 -100 -190 {
lab=VDD}
N -100 -300 -100 -190 {
lab=VDD}
N 490 -190 570 -190 {
lab=VDD}
N 490 -300 490 -190 {
lab=VDD}
N 430 -300 430 -140 {
lab=VDD}
N 50 -300 50 -170 {
lab=VDD}
N 350 -300 350 -170 {
lab=VDD}
N 410 120 450 120 {
lab=VSS}
N 410 60 410 120 {
lab=VSS}
N 410 60 490 60 {
lab=VSS}
N 490 60 490 90 {
lab=VSS}
N 490 90 540 90 {
lab=VSS}
N 540 90 540 120 {
lab=VSS}
N 490 120 540 120 {
lab=VSS}
N 490 120 540 120 {
lab=VSS}
N 540 120 540 180 {
lab=VSS}
N 490 180 540 180 {
lab=VSS}
N 490 150 490 180 {
lab=VSS}
N 330 140 410 140 {
lab=VSS}
N 410 110 410 140 {
lab=VSS}
N -340 -370 -300 -370 {
lab=VDD}
N -340 -430 -340 -370 {
lab=VDD}
N -340 -430 -260 -430 {
lab=VDD}
N -260 -430 -260 -400 {
lab=VDD}
N -260 -370 -220 -370 {
lab=VDD}
N -220 -430 -220 -370 {
lab=VDD}
N -260 -430 -220 -430 {
lab=VDD}
N -260 -340 -260 -300 {
lab=VDD}
N -260 -300 -160 -300 {
lab=VDD}
N -220 -370 -220 -340 {
lab=VDD}
N -260 -340 -220 -340 {
lab=VDD}
C {symbols/pfet_03v3.sym} 330 -140 0 0 {name=M2
L="0.84u"
W=8u
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
C {symbols/pfet_03v3.sym} 70 -140 0 1 {name=M4
L="0.84u"
W=8u
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
C {symbols/pfet_03v3.sym} 590 -190 0 1 {name=M5
L="0.84u"
W=2.5u
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
C {symbols/pfet_03v3.sym} -200 -190 0 0 {name=M6
L="0.84u"
W=2.5u
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
C {symbols/nfet_03v3.sym} 170 110 0 0 {name=M7
L="0.84u"
W=20u
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
C {symbols/nfet_03v3.sym} 30 -10 0 0 {name=M8
L="0.84u"
W="5u"
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
C {symbols/nfet_03v3.sym} 370 -10 0 1 {name=M9
L="0.84u"
W="5u"
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
C {devices/iopin.sym} 790 -330 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 790 -290 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 830 -250 0 0 {name=p3 lab=IN}
C {devices/ipin.sym} 840 -220 0 0 {name=p4 lab=INB}
C {devices/ipin.sym} 840 -170 0 0 {name=p5 lab=VCTRL}
C {devices/ipin.sym} 840 -130 0 0 {name=p6 lab=VCTRL2}
C {devices/opin.sym} 750 -90 0 0 {name=p7 lab=OUT}
C {devices/opin.sym} 750 -50 0 0 {name=p8 lab=OUTB}
C {devices/lab_pin.sym} 210 -350 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -270 -190 0 0 {name=p10 sig_type=std_logic lab=VCTRL}
C {devices/lab_pin.sym} 670 -190 0 1 {name=p11 sig_type=std_logic lab=VCTRL}
C {devices/lab_pin.sym} 450 -10 0 1 {name=p12 sig_type=std_logic lab=INB}
C {devices/lab_pin.sym} -40 -10 0 0 {name=p13 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} -90 -90 0 0 {name=p14 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 480 -90 0 1 {name=p15 sig_type=std_logic lab=OUTB}
C {devices/lab_pin.sym} 190 170 1 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 110 110 0 0 {name=p17 sig_type=std_logic lab=VCTRL2}
C {devices/lab_pin.sym} 220 -10 1 0 {name=p18 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 470 120 0 0 {name=M1
L="0.84u"
W=10u
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
C {symbols/pfet_03v3.sym} -280 -370 0 0 {name=M3
L="0.84u"
W=6u
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
