v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 390 10 420 10 {
lab=IN3}
N 460 10 470 10 {
lab=VSS}
N 470 10 470 40 {
lab=VSS}
N 460 40 470 40 {
lab=VSS}
N 290 -30 450 -30 {
lab=OUT}
N 290 -30 290 -20 {
lab=OUT}
N 290 10 310 10 {
lab=VSS}
N 220 10 250 10 {
lab=IN1}
N 460 40 460 60 {
lab=VSS}
N 450 -30 530 -30 {
lab=OUT}
N 60 10 80 10 {
lab=VSS}
N -10 10 20 10 {
lab=IN2}
N 290 -150 290 -130 {
lab=#net1}
N 290 -240 290 -210 {
lab=#net2}
N 220 -180 250 -180 {
lab=IN2}
N 290 -330 290 -300 {
lab=VDD}
N 290 -270 310 -270 {
lab=VDD}
N 310 -310 310 -270 {
lab=VDD}
N 290 -310 310 -310 {
lab=VDD}
N 220 -270 250 -270 {
lab=IN3}
N 330 -80 360 -80 {
lab=IN1}
N 290 -50 290 -30 {
lab=OUT}
N 290 -130 290 -110 {
lab=#net1}
N 460 -30 460 -20 {
lab=OUT}
N 60 -30 290 -30 {
lab=OUT}
N 60 -30 60 -20 {
lab=OUT}
N 80 10 80 40 {
lab=VSS}
N 60 40 80 40 {
lab=VSS}
N 290 40 310 40 {
lab=VSS}
N 310 10 310 40 {
lab=VSS}
N 290 -180 310 -180 {
lab=VDD}
N 310 -270 310 -180 {
lab=VDD}
N 260 -80 290 -80 {
lab=VDD}
C {symbols/nfet_03v3.sym} 440 10 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 270 10 0 0 {name=M4
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
C {devices/ipin.sym} 190 -370 0 0 {name=p1 lab=IN2}
C {devices/ipin.sym} 260 -370 0 0 {name=p2 lab=IN1}
C {devices/iopin.sym} 290 -370 0 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 360 -370 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 430 -370 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} 390 10 0 0 {name=p8 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 460 60 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 10 0 0 {name=p13 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 310 10 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 -30 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {symbols/nfet_03v3.sym} 40 10 0 0 {name=M7
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
C {devices/lab_pin.sym} 80 10 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 10 0 0 {name=p17 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 220 -180 0 0 {name=p18 sig_type=std_logic lab=IN2}
C {symbols/pfet_03v3.sym} 270 -180 0 0 {name=M8
L=0.28u
W=0.8u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/ipin.sym} 110 -370 0 0 {name=p19 lab=IN3}
C {devices/lab_pin.sym} 220 -270 0 0 {name=p20 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 290 -330 0 0 {name=p21 sig_type=std_logic lab=VDD
}
C {symbols/pfet_03v3.sym} 270 -270 0 0 {name=M9
L=0.28u
W=0.8u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 360 -80 2 0 {name=p22 sig_type=std_logic lab=IN1}
C {symbols/pfet_03v3.sym} 310 -80 0 1 {name=M10
L=0.28u
W=0.8u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 260 -80 0 0 {name=p6 sig_type=std_logic lab=VDD
}
