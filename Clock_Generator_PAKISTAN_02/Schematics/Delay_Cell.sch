v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -450 800 -450 {
lab=#net1}
N 800 -450 840 -450 {
lab=#net1}
N 1010 -480 1010 -350 {
lab=VDD}
N 880 -480 1010 -480 {
lab=VDD}
N 760 -480 760 -350 {
lab=VDD}
N 760 -290 760 -230 {
lab=OUT}
N 1010 -290 1010 -230 {
lab=OUTB}
N 800 -320 870 -320 {
lab=OUTB}
N 870 -320 870 -270 {
lab=OUTB}
N 870 -270 1010 -270 {
lab=OUTB}
N 890 -320 970 -320 {
lab=OUT}
N 890 -320 890 -260 {
lab=OUT}
N 760 -260 890 -260 {
lab=OUT}
N 760 -170 760 -160 {
lab=#net2}
N 760 -160 760 -150 {
lab=#net2}
N 760 -150 890 -150 {
lab=#net2}
N 890 -150 1010 -150 {
lab=#net2}
N 1010 -170 1010 -150 {
lab=#net2}
N 680 -200 720 -200 {
lab=IN}
N 1050 -200 1090 -200 {
lab=INB}
N 550 -390 1220 -390 {
lab=#net3}
N 880 -420 880 -390 {
lab=#net3}
N 550 -290 550 -250 {
lab=OUT}
N 550 -250 760 -250 {
lab=OUT}
N 1220 -290 1220 -260 {
lab=OUTB}
N 1010 -260 1220 -260 {
lab=OUTB}
N 510 -320 510 -250 {
lab=OUT}
N 510 -250 550 -250 {
lab=OUT}
N 1220 -260 1260 -260 {
lab=OUTB}
N 660 -260 660 -250 {
lab=OUT}
N 1120 -270 1120 -260 {
lab=OUTB}
N 550 -320 570 -320 {
lab=VDD}
N 740 -320 760 -320 {
lab=VDD}
N 1010 -320 1030 -320 {
lab=VDD}
N 1190 -320 1220 -320 {
lab=VDD}
N 720 -320 740 -320 {
lab=VDD}
N 570 -320 590 -320 {
lab=VDD}
N 1030 -320 1040 -320 {
lab=VDD}
N 880 -450 950 -450 {
lab=VDD}
N 950 -480 950 -450 {
lab=VDD}
N 760 -200 800 -200 {
lab=VSS}
N 970 -200 1010 -200 {
lab=VSS}
N 1260 -320 1260 -260 {
lab=OUTB}
N 1220 -390 1220 -340 {
lab=#net3}
N 550 -390 550 -350 {
lab=#net3}
N 760 -480 880 -480 {
lab=VDD}
N 810 -510 810 -480 {
lab=VDD}
N 370 -480 760 -480 {
lab=VDD}
N 370 -420 370 -350 {
lab=#net1}
N 370 -390 430 -390 {
lab=#net1}
N 430 -450 430 -390 {
lab=#net1}
N 370 -290 370 -250 {
lab=VSS}
N 300 -320 330 -320 {
lab=VCONT}
N 370 -480 370 -450 {
lab=VDD}
N 370 -320 370 -290 {
lab=VSS}
N 810 -120 820 -120 {
lab=EN}
N 860 -120 860 -90 {
lab=VSS}
N 860 -90 860 -60 {
lab=VSS}
N 1010 -150 1070 -150 {
lab=#net2}
N 690 -150 760 -150 {
lab=#net2}
N 1110 -150 1110 -120 {
lab=#net2}
N 1070 -90 1110 -90 {
lab=#net2}
N 1110 -120 1110 -90 {
lab=#net2}
N 1070 -150 1110 -150 {
lab=#net2}
N 1030 -120 1070 -120 {
lab=VSS}
N 650 -90 690 -90 {
lab=#net2}
N 650 -120 650 -90 {
lab=#net2}
N 650 -150 650 -120 {
lab=#net2}
N 650 -150 690 -150 {
lab=#net2}
N 690 -120 730 -120 {
lab=VSS}
C {symbols/pfet_03v3.sym} 990 -320 0 0 {name=M1
L="0.56u"
W="4u"
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
C {symbols/pfet_03v3.sym} 860 -450 0 0 {name=M2
L="0.56u"
W="4u"
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
C {symbols/pfet_03v3.sym} 780 -320 0 1 {name=M4
L="0.56u"
W="4u"
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
C {symbols/pfet_03v3.sym} 1240 -320 0 1 {name=M5
L="0.56u"
W="4u"
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
C {symbols/pfet_03v3.sym} 530 -320 0 0 {name=M6
L="0.56u"
W="4u"
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
C {symbols/nfet_03v3.sym} 740 -200 0 0 {name=M7
L=0.56u
W="4u"
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
C {symbols/nfet_03v3.sym} 1030 -200 0 1 {name=M9
L=0.56u
W="4u"
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
C {devices/iopin.sym} 1330 -610 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 1330 -590 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 1330 -570 0 0 {name=p3 lab=VCONT}
C {devices/iopin.sym} 1330 -550 0 0 {name=p4 lab=IN}
C {devices/iopin.sym} 1330 -530 0 0 {name=p5 lab=INB}
C {devices/iopin.sym} 1330 -510 0 0 {name=p6 lab=OUT
W="4u"}
C {devices/iopin.sym} 1330 -490 0 0 {name=p7 lab=OUTB
W="4u"}
C {devices/iopin.sym} 1330 -470 0 0 {name=p8 lab=EN
W="4u"}
C {devices/lab_pin.sym} 810 -120 0 0 {name=p10 sig_type=std_logic lab=EN
W="4u"}
C {devices/lab_pin.sym} 860 -60 0 0 {name=p12 sig_type=std_logic lab=VSS
W="4u"}
C {devices/lab_pin.sym} 680 -200 0 0 {name=p13 sig_type=std_logic lab=IN
W="4u"}
C {devices/lab_pin.sym} 1090 -200 0 1 {name=p14 sig_type=std_logic lab=INB
W="4u"}
C {devices/lab_pin.sym} 660 -260 0 0 {name=p15 sig_type=std_logic lab=OUT
W="4u"}
C {devices/lab_pin.sym} 1120 -270 0 0 {name=p16 sig_type=std_logic lab=OUTB
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 1040 -320 0 1 {name=p11 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 590 -320 0 1 {name=p19 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 720 -320 0 0 {name=p20 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 1190 -320 0 0 {name=p21 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 810 -510 0 1 {name=p23 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 970 -200 0 0 {name=p22 sig_type=std_logic lab=VSS
W="4u"}
C {devices/lab_pin.sym} 800 -200 0 1 {name=p24 sig_type=std_logic lab=VSS
W="4u"}
C {devices/lab_pin.sym} 300 -320 0 0 {name=p27 sig_type=std_logic lab=VCONT
W="4u"}
C {symbols/pfet_03v3.sym} 390 -450 0 1 {name=M3
L="0.56u"
W="4u"
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
C {symbols/nfet_03v3.sym} 350 -320 0 0 {name=M10
L=0.56u
W="4u"
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
C {devices/lab_pin.sym} 370 -250 0 0 {name=p17 sig_type=std_logic lab=VSS
W="4u"}
C {symbols/nfet_03v3.sym} 840 -120 0 0 {name=M8
L=0.56u
W="2u"
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
C {symbols/nfet_03v3.sym} 1090 -120 0 1 {name=M11
L=0.56u
W="1u"
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
C {symbols/nfet_03v3.sym} 670 -120 0 0 {name=M12
L=0.56u
W="1u"
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
C {devices/lab_pin.sym} 730 -120 2 0 {name=p9 sig_type=std_logic lab=VSS
W="4u"}
C {devices/lab_pin.sym} 1030 -120 0 0 {name=p18 sig_type=std_logic lab=VSS
W="4u"}
