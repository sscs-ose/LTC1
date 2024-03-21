v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -530 150 -500 150 {
lab=A}
N -530 250 -500 250 {
lab=B}
N -650 20 -610 20 {
lab=A}
N -450 20 -410 20 {
lab=B}
N -370 -20 -370 -10 {
lab=VDD}
N -570 -20 -370 -20 {
lab=VDD}
N -570 -20 -570 -10 {
lab=VDD}
N -470 -40 -470 -20 {
lab=VDD}
N -460 150 -440 150 {
lab=VSS}
N -460 100 -290 100 {
lab=#net1}
N -440 150 -440 250 {
lab=VSS}
N -460 250 -440 250 {
lab=VSS}
N -570 10 -570 20 {
lab=VDD}
N -570 10 -370 10 {
lab=VDD}
N -370 10 -370 20 {
lab=VDD}
N -570 50 -370 50 {
lab=#net1}
N -460 110 -460 120 {
lab=#net1}
N -460 50 -460 110 {
lab=#net1}
N -460 190 -460 220 {
lab=#net2}
N -460 180 -460 190 {
lab=#net2}
N -460 280 -460 320 {
lab=#net3}
N -210 -20 -210 -10 {
lab=VDD}
N -370 -20 -210 -20 {
lab=VDD}
N -370 10 -210 10 {
lab=VDD}
N -210 10 -210 20 {
lab=VDD}
N -270 20 -250 20 {
lab=C}
N -380 50 -210 50 {
lab=#net1}
N -460 350 -440 350 {
lab=VSS}
N -440 250 -440 350 {
lab=VSS}
N -530 350 -500 350 {
lab=C}
N -460 380 -460 420 {
lab=VSS}
N -30 50 -30 130 {
lab=OUT}
N -70 20 -70 160 {
lab=#net1}
N -30 160 -10 160 {
lab=VSS}
N -10 160 -10 190 {
lab=VSS}
N -30 190 -10 190 {
lab=VSS}
N -30 -40 -30 -10 {
lab=VDD}
N -30 -40 0 -40 {
lab=VDD}
N 0 -40 0 20 {
lab=VDD}
N -30 20 0 20 {
lab=VDD}
N -30 90 20 90 {
lab=OUT}
N -290 100 -70 100 {
lab=#net1}
N -430 -150 -400 -150 {
lab=#net4}
N -400 -180 -400 -150 {
lab=#net4}
N -430 -180 -400 -180 {
lab=#net4}
N -470 -150 -470 -120 {
lab=#net4}
N -470 -120 -430 -120 {
lab=#net4}
N -430 -120 -400 -120 {
lab=#net4}
N -400 -150 -400 -120 {
lab=#net4}
N -260 -150 -230 -150 {
lab=#net4}
N -230 -180 -230 -150 {
lab=#net4}
N -260 -180 -230 -180 {
lab=#net4}
N -300 -150 -300 -120 {
lab=#net4}
N -300 -120 -260 -120 {
lab=#net4}
N -260 -120 -230 -120 {
lab=#net4}
N -230 -150 -230 -120 {
lab=#net4}
N -260 -120 -260 -20 {}
N -440 -120 -440 -20 {}
C {symbols/pfet_03v3.sym} -590 20 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -390 20 0 0 {name=M3
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
C {devices/lab_pin.sym} -650 20 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -450 20 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -530 150 0 0 {name=p3 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -530 250 0 0 {name=p4 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -460 410 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -470 -40 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} -660 110 0 0 {name=p8 lab=VDD}
C {devices/iopin.sym} -660 130 0 0 {name=p9 lab=VSS}
C {devices/ipin.sym} -610 150 0 0 {name=p10 lab=A}
C {devices/ipin.sym} -610 180 0 0 {name=p11 lab=B}
C {devices/opin.sym} -670 220 0 0 {name=p12 lab=OUT}
C {devices/lab_pin.sym} -440 200 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -475 10 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -480 150 0 0 {name=M1
L=0.28u
W=0.75u
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
C {symbols/nfet_03v3.sym} -480 250 0 0 {name=M4
L=0.28u
W=0.75u
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
C {symbols/pfet_03v3.sym} -230 20 0 0 {name=M5
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
C {devices/lab_pin.sym} -270 20 0 0 {name=p15 sig_type=std_logic lab=C}
C {symbols/nfet_03v3.sym} -480 350 0 0 {name=M6
L=0.28u
W=0.75u
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
C {devices/lab_pin.sym} -530 350 0 0 {name=p16 sig_type=std_logic lab=C}
C {devices/ipin.sym} -610 200 0 0 {name=p17 lab=C}
C {symbols/pfet_03v3.sym} -50 20 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} -50 160 0 0 {name=M8
L=0.28u
W=0.25u
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
C {devices/lab_pin.sym} -10 190 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 20 90 0 0 {name=p19 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} -10 -40 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} -450 -150 0 0 {name=M9
L=0.28u
W=0.25u
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
C {symbols/pfet_03v3.sym} -280 -150 0 0 {name=M10
L=0.28u
W=0.25u
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
