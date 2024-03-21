v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -340 -170 50 -170 {
lab=#net1}
N 50 -170 90 -170 {
lab=#net1}
N 260 -200 260 -70 {
lab=VDD}
N 130 -200 260 -200 {
lab=VDD}
N 10 -200 10 -70 {
lab=VDD}
N 10 -10 10 50 {
lab=OUT}
N 260 -10 260 50 {
lab=OUTB}
N 50 -40 120 -40 {
lab=OUTB}
N 120 -40 120 10 {
lab=OUTB}
N 120 10 260 10 {
lab=OUTB}
N 140 -40 220 -40 {
lab=OUT}
N 140 -40 140 20 {
lab=OUT}
N 10 20 140 20 {
lab=OUT}
N 10 110 10 120 {
lab=#net2}
N 10 120 10 130 {
lab=#net2}
N 10 130 140 130 {
lab=#net2}
N 140 130 260 130 {
lab=#net2}
N 260 110 260 130 {
lab=#net2}
N -70 80 -30 80 {
lab=IN}
N 300 80 340 80 {
lab=INB}
N -200 -110 470 -110 {
lab=#net3}
N 130 -140 130 -110 {
lab=#net3}
N -200 -10 -200 30 {
lab=OUT}
N -200 30 10 30 {
lab=OUT}
N 470 -10 470 20 {
lab=OUTB}
N 260 20 470 20 {
lab=OUTB}
N -240 -40 -240 30 {
lab=OUT}
N -240 30 -200 30 {
lab=OUT}
N 470 20 510 20 {
lab=OUTB}
N -90 20 -90 30 {
lab=OUT}
N 370 10 370 20 {
lab=OUTB}
N -200 -40 -180 -40 {
lab=VDD}
N -10 -40 10 -40 {
lab=VDD}
N 260 -40 280 -40 {
lab=VDD}
N 440 -40 470 -40 {
lab=VDD}
N -30 -40 -10 -40 {
lab=VDD}
N -180 -40 -160 -40 {
lab=VDD}
N 280 -40 290 -40 {
lab=VDD}
N 130 -170 200 -170 {
lab=VDD}
N 200 -200 200 -170 {
lab=VDD}
N 10 80 50 80 {
lab=VSS}
N 220 80 260 80 {
lab=VSS}
N 510 -40 510 20 {
lab=OUTB}
N 470 -110 470 -60 {
lab=#net3}
N -200 -110 -200 -70 {
lab=#net3}
N 10 -200 130 -200 {
lab=VDD}
N 60 -230 60 -200 {
lab=VDD}
N -380 -200 10 -200 {
lab=VDD}
N -380 -140 -380 -70 {
lab=#net1}
N -380 -110 -320 -110 {
lab=#net1}
N -320 -170 -320 -110 {
lab=#net1}
N -380 -10 -380 30 {
lab=VSS}
N -450 -40 -420 -40 {
lab=VCONT}
N -380 -200 -380 -170 {
lab=VDD}
N -380 -40 -380 -10 {
lab=VSS}
N 60 160 70 160 {
lab=EN}
N 110 160 110 190 {
lab=VSS}
N 110 190 110 220 {
lab=VSS}
N 260 130 320 130 {
lab=#net2}
N -60 130 10 130 {
lab=#net2}
N 360 130 360 160 {
lab=#net2}
N 320 190 360 190 {
lab=#net2}
N 360 160 360 190 {
lab=#net2}
N 320 130 360 130 {
lab=#net2}
N 280 160 320 160 {
lab=VSS}
N -100 190 -60 190 {
lab=#net2}
N -100 160 -100 190 {
lab=#net2}
N -100 130 -100 160 {
lab=#net2}
N -100 130 -60 130 {
lab=#net2}
N -60 160 -20 160 {
lab=VSS}
C {symbols/pfet_03v3.sym} 240 -40 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 110 -170 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 30 -40 0 1 {name=M4
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
C {symbols/pfet_03v3.sym} 490 -40 0 1 {name=M5
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
C {symbols/pfet_03v3.sym} -220 -40 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} -10 80 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 280 80 0 1 {name=M9
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
C {devices/iopin.sym} 580 -330 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 580 -310 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 580 -290 0 0 {name=p3 lab=VCONT}
C {devices/iopin.sym} 580 -270 0 0 {name=p4 lab=IN}
C {devices/iopin.sym} 580 -250 0 0 {name=p5 lab=INB}
C {devices/iopin.sym} 580 -230 0 0 {name=p6 lab=OUT
W="4u"}
C {devices/iopin.sym} 580 -210 0 0 {name=p7 lab=OUTB
W="4u"}
C {devices/iopin.sym} 580 -190 0 0 {name=p8 lab=EN
W="4u"}
C {devices/lab_pin.sym} 60 160 0 0 {name=p10 sig_type=std_logic lab=EN
W="4u"}
C {devices/lab_pin.sym} 110 220 0 0 {name=p12 sig_type=std_logic lab=VSS
W="4u"}
C {devices/lab_pin.sym} -70 80 0 0 {name=p13 sig_type=std_logic lab=IN
W="4u"}
C {devices/lab_pin.sym} 340 80 0 1 {name=p14 sig_type=std_logic lab=INB
W="4u"}
C {devices/lab_pin.sym} -90 20 0 0 {name=p15 sig_type=std_logic lab=OUT
W="4u"}
C {devices/lab_pin.sym} 370 10 0 0 {name=p16 sig_type=std_logic lab=OUTB
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 290 -40 0 1 {name=p11 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} -160 -40 0 1 {name=p19 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} -30 -40 0 0 {name=p20 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 440 -40 0 0 {name=p21 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 60 -230 0 1 {name=p23 sig_type=std_logic lab=VDD
L="0.56u"
W="4u"}
C {devices/lab_pin.sym} 220 80 0 0 {name=p22 sig_type=std_logic lab=VSS
W="4u"}
C {devices/lab_pin.sym} 50 80 0 1 {name=p24 sig_type=std_logic lab=VSS
W="4u"}
C {devices/lab_pin.sym} -450 -40 0 0 {name=p27 sig_type=std_logic lab=VCONT
W="4u"}
C {symbols/pfet_03v3.sym} -360 -170 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} -400 -40 0 0 {name=M10
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
C {devices/lab_pin.sym} -380 30 0 0 {name=p17 sig_type=std_logic lab=VSS
W="4u"}
C {symbols/nfet_03v3.sym} 90 160 0 0 {name=M8
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
C {symbols/nfet_03v3.sym} 340 160 0 1 {name=M11
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
C {symbols/nfet_03v3.sym} -80 160 0 0 {name=M12
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
C {devices/lab_pin.sym} -20 160 2 0 {name=p9 sig_type=std_logic lab=VSS
W="4u"}
C {devices/lab_pin.sym} 280 160 0 0 {name=p18 sig_type=std_logic lab=VSS
W="4u"}
