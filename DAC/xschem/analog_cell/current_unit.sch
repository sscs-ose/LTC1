v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -350 560 -330 {
lab=#net1}
N 560 -170 560 -140 {
lab=VSS}
N 560 -300 670 -300 {
lab=VSS}
N 560 -200 670 -200 {
lab=VSS}
N 220 -300 520 -300 {lab=#net2}
N 220 -200 520 -200 {lab=#net3}
N 180 -270 180 -230 {
lab=#net3}
N 180 -240 240 -240 {
lab=#net3}
N 240 -240 240 -200 {
lab=#net3}
N 180 -170 180 -140 {
lab=VSS}
N 150 -300 180 -300 {
lab=VSS}
N 150 -200 180 -200 {
lab=VSS}
N 180 -440 180 -420 {
lab=#net2}
N 560 -250 560 -230 {
lab=#net4}
N 180 -360 180 -330 {
lab=#net2}
N 20 -540 20 -510 {
lab=VDD}
N 20 -540 180 -540 {
lab=VDD}
N 180 -540 180 -510 {
lab=VDD}
N 60 -480 140 -480 {
lab=#net5}
N 20 -430 80 -430 {
lab=#net5}
N 80 -480 80 -430 {
lab=#net5}
N 180 -450 180 -440 {
lab=#net2}
N 180 -480 190 -480 {
lab=VDD}
N 560 -270 560 -250 {
lab=#net4}
N 560 -370 560 -350 {
lab=#net1}
N 20 -310 20 -270 {
lab=#net5}
N 20 -450 20 -370 {
lab=#net5}
N 10 -480 20 -480 {
lab=VDD}
N 100 -600 100 -540 {
lab=VDD}
N 180 -340 240 -340 {
lab=#net2}
N 240 -340 240 -300 {
lab=#net2}
N 440 -440 440 -420 {
lab=#net1}
N 680 -440 680 -420 {
lab=#net1}
N 440 -420 680 -420 {
lab=#net1}
N 440 -550 440 -500 {
lab=OUT+}
N 680 -530 680 -500 {
lab=OUT-}
N 370 -470 400 -470 {
lab=IN+}
N 440 -470 520 -470 {
lab=VDD}
N 610 -470 680 -470 {
lab=VDD}
N 440 -670 440 -620 {
lab=OUT+}
N 440 -560 440 -550 {
lab=OUT+}
N 440 -620 440 -560 {
lab=OUT+}
N 680 -610 680 -540 {
lab=OUT-}
N 550 -670 910 -670 {lab=OUT+}
N 440 -670 550 -670 {
lab=OUT+}
N 680 -540 680 -530 {
lab=OUT-}
N 720 -470 750 -470 {lab=IN-}
N 680 -610 910 -610 {lab=OUT-}
N 560 -420 560 -370 {
lab=#net1}
N 180 -420 180 -360 {
lab=#net2}
N 20 -370 20 -310 {
lab=#net5}
N -140 -310 -70 -310 {
lab=REF}
N -70 -310 -70 -240 {
lab=REF}
N -70 -230 -20 -230 {
lab=REF}
N -140 -440 -140 -310 {
lab=REF}
N 20 -230 60 -230 {
lab=VSS}
N 20 -200 20 -140 {
lab=VSS}
N 20 -270 20 -260 {
lab=#net5}
N -70 -240 -70 -230 {
lab=REF}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Junbeom Park"}
C {symbols/nfet_03v3.sym} 540 -300 0 0 {name=M3
L=0.4u
W=Wn
nf=1
m=Mn
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 540 -200 0 0 {name=M4
L=0.4u
W=Wn
nf=1
m=Mn
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 200 -300 0 1 {name=M5
L=0.4u
W=Wn
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
C {symbols/nfet_03v3.sym} 200 -200 0 1 {name=M6
L=0.4u
W=Wn
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
C {symbols/pfet_03v3.sym} 40 -480 0 1 {name=M1
L=0.28u
W=0.4u
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
C {symbols/pfet_03v3.sym} 160 -480 0 0 {name=M2
L=0.28u
W=Wp
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
C {symbols/nfet_03v3.sym} 420 -470 0 0 {name=M7
L=0.3u
W=Wn
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
C {symbols/nfet_03v3.sym} 700 -470 0 1 {name=M8
L=0.3u
W=Wn
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
C {devices/ipin.sym} 20 -680 0 0 {name=p2 lab=REF}
C {devices/ipin.sym} 20 -660 0 0 {name=p7 lab=IN+}
C {devices/ipin.sym} 20 -640 0 0 {name=p6 lab=IN-}
C {devices/opin.sym} -20 -620 0 0 {name=p8 lab=OUT+}
C {devices/opin.sym} -20 -590 0 0 {name=p9 lab=OUT-}
C {devices/lab_pin.sym} 100 -600 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 10 -480 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -480 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 -300 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 150 -200 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 670 -300 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 670 -200 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -470 3 1 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 -470 3 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 20 -700 0 0 {name=p23 lab=VSS}
C {devices/lab_pin.sym} 180 -140 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -140 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 20 -720 0 0 {name=p24 lab=VDD}
C {devices/lab_pin.sym} 910 -670 0 1 {name=p4 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 910 -610 0 1 {name=p18 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 370 -470 0 0 {name=p20 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} 750 -470 0 1 {name=p21 sig_type=std_logic lab=IN-}
C {symbols/nfet_03v3.sym} 0 -230 0 0 {name=M9
L=0.4u
W=0.28u
nf=1
m=Mn
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} -140 -440 0 0 {name=p22 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 60 -230 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 -140 0 1 {name=p25 sig_type=std_logic lab=VSS}
