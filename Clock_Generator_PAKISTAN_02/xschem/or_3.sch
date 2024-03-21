v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 0 -70 0 {
lab=IN3}
N -30 0 -20 0 {
lab=VSS}
N -20 0 -20 30 {
lab=VSS}
N -30 30 -20 30 {
lab=VSS}
N -200 -40 -40 -40 {
lab=#net1}
N -200 -40 -200 -30 {
lab=#net1}
N -200 0 -180 0 {
lab=VSS}
N -270 0 -240 0 {
lab=IN1}
N -30 30 -30 50 {
lab=VSS}
N 40 10 80 10 {
lab=#net1}
N 120 40 120 70 {
lab=VSS}
N 120 -60 120 -20 {
lab=OUT}
N 40 -90 80 -90 {
lab=#net1}
N 40 -90 40 10 {
lab=#net1}
N 120 -90 150 -90 {
lab=VDD}
N 150 -140 150 -90 {
lab=VDD}
N 120 -140 150 -140 {
lab=VDD}
N 120 -140 120 -120 {
lab=VDD}
N 120 10 150 10 {
lab=VSS}
N 150 10 150 70 {
lab=VSS}
N 120 70 150 70 {
lab=VSS}
N 120 -40 210 -40 {
lab=OUT}
N -40 -40 40 -40 {
lab=#net1}
N -430 0 -410 0 {
lab=VSS}
N -500 0 -470 0 {
lab=IN2}
N -200 -160 -200 -140 {
lab=#net1}
N -200 -250 -200 -220 {
lab=VDD}
N -270 -190 -240 -190 {
lab=IN2}
N -200 -340 -200 -310 {
lab=VDD}
N -200 -280 -180 -280 {
lab=VDD}
N -180 -320 -180 -280 {
lab=VDD}
N -200 -320 -180 -320 {
lab=VDD}
N -270 -280 -240 -280 {
lab=IN3}
N -160 -90 -130 -90 {
lab=IN1}
N -200 -60 -200 -40 {
lab=#net1}
N -200 -140 -200 -120 {
lab=VDD}
N -30 -40 -30 -30 {}
N -430 -40 -200 -40 {}
N -430 -40 -430 -30 {}
N -410 0 -410 30 {}
N -430 30 -410 30 {}
N -200 30 -180 30 {}
N -180 0 -180 30 {}
N -200 -190 -180 -190 {}
N -180 -280 -180 -190 {}
N -230 -90 -200 -90 {}
C {symbols/nfet_03v3.sym} -50 0 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -220 0 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/ipin.sym} -300 -380 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} -230 -380 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} -200 -380 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} -130 -380 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} -60 -380 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} -100 0 0 0 {name=p8 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} -30 50 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -270 0 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -180 0 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 100 10 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 100 -90 0 0 {name=M6
L=0.28u
W=0.8u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 120 -140 0 0 {name=p14 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 120 70 0 0 {name=p15 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 210 -40 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {symbols/nfet_03v3.sym} -450 0 0 0 {name=M7
L=0.28u
W=0.22u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} -410 0 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -500 0 0 0 {name=p17 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -270 -190 0 0 {name=p18 sig_type=std_logic lab=IN2}
C {symbols/pfet_03v3.sym} -220 -190 0 0 {name=M8
L=0.28u
W=0.8u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/ipin.sym} -380 -380 0 0 {name=p19 lab=IN3}
C {devices/lab_pin.sym} -270 -280 0 0 {name=p20 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} -200 -340 0 0 {name=p21 sig_type=std_logic lab=VDD
}
C {symbols/pfet_03v3.sym} -220 -280 0 0 {name=M9
L=0.28u
W=0.8u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} -130 -90 2 0 {name=p22 sig_type=std_logic lab=IN1}
C {symbols/pfet_03v3.sym} -180 -90 0 1 {name=M10
L=0.28u
W=0.8u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} -230 -90 0 0 {name=p6 sig_type=std_logic lab=VDD
}
