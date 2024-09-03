v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -30 50 0 {
lab=#net1}
N 50 -60 90 -60 {
lab=VSS}
N 50 -120 50 -90 {
lab=#net2}
N 50 -150 90 -150 {
lab=VSS}
N 50 70 50 100 {
lab=VSS}
N -20 -150 10 -150 {
lab=A}
N -20 -60 10 -60 {
lab=B}
N -20 30 10 30 {
lab=C}
N -100 -320 -90 -320 {
lab=VDD}
N -90 -360 -90 -320 {
lab=VDD}
N -100 -360 -90 -360 {
lab=VDD}
N -100 -360 -100 -350 {
lab=VDD}
N -100 -390 -100 -360 {
lab=VDD}
N -100 -290 -100 -270 {
lab=#net3}
N -170 -320 -140 -320 {
lab=A}
N 50 -320 60 -320 {
lab=VDD}
N 60 -360 60 -320 {
lab=VDD}
N 50 -360 60 -360 {
lab=VDD}
N 50 -360 50 -350 {
lab=VDD}
N 50 -390 50 -360 {
lab=VDD}
N 50 -290 50 -270 {
lab=#net3}
N -20 -320 10 -320 {
lab=B}
N 200 -320 210 -320 {
lab=VDD}
N 210 -360 210 -320 {
lab=VDD}
N 200 -360 210 -360 {
lab=VDD}
N 200 -360 200 -350 {
lab=VDD}
N 200 -390 200 -360 {
lab=VDD}
N 200 -290 200 -270 {
lab=#net3}
N 130 -320 160 -320 {
lab=C}
N 50 -220 50 -180 {
lab=#net3}
N -100 -390 50 -390 {
lab=VDD}
N -100 -270 50 -270 {
lab=#net3}
N 50 -390 200 -390 {
lab=VDD}
N 50 -270 200 -270 {
lab=#net3}
N 50 -220 170 -220 {
lab=#net3}
N 50 -430 50 -390 {
lab=VDD}
N 310 -190 320 -190 {
lab=VDD}
N 320 -230 320 -190 {
lab=VDD}
N 310 -230 320 -230 {
lab=VDD}
N 310 -230 310 -220 {
lab=VDD}
N 310 -260 310 -230 {
lab=VDD}
N 310 -160 310 -120 {
lab=OUT}
N 240 -190 270 -190 {
lab=#net3}
N 240 -50 270 -50 {
lab=#net3}
N 310 -120 380 -120 {
lab=OUT}
N 50 30 60 30 {
lab=VSS}
N 60 30 60 70 {
lab=VSS}
N 50 70 60 70 {
lab=VSS}
N 310 -50 320 -50 {
lab=VSS}
N 320 -50 320 -10 {
lab=VSS}
N 310 -10 320 -10 {
lab=VSS}
N 310 -10 310 20 {
lab=VSS}
N 310 -120 310 -80 {
lab=OUT}
N 50 -270 50 -220 {
lab=#net3}
N 50 60 50 70 {
lab=VSS}
N 310 -20 310 -10 {
lab=VSS}
N 240 -120 240 -50 {
lab=#net3}
N 170 -220 170 -120 {
lab=#net3}
N 170 -120 240 -120 {
lab=#net3}
N 240 -190 240 -120 {
lab=#net3}
C {symbols/nfet_03v3.sym} 30 30 0 0 {name=M1
L=0.28u
W=1.5u
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
C {symbols/pfet_03v3.sym} -120 -320 0 0 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 30 -60 0 0 {name=M3
L=0.28u
W=1.5u
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
C {symbols/nfet_03v3.sym} 30 -150 0 0 {name=M4
L=0.28u
W=1.5u
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
C {symbols/pfet_03v3.sym} 30 -320 0 0 {name=M5
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 180 -320 0 0 {name=M6
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
model=pfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 50 -430 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 50 100 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -20 -150 0 0 {name=p3 lab=A}
C {devices/ipin.sym} -20 -60 0 0 {name=p4 lab=B}
C {devices/ipin.sym} -20 30 0 0 {name=p5 lab=C}
C {devices/opin.sym} 380 -120 0 0 {name=p6 lab=OUT}
C {devices/lab_pin.sym} -160 -320 0 0 {name=p7 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -10 -320 0 0 {name=p8 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 140 -320 0 0 {name=p9 sig_type=std_logic lab=C}
C {symbols/pfet_03v3.sym} 290 -190 0 0 {name=M8
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 290 -50 0 0 {name=M9
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
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 310 -250 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 310 10 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 -150 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 -60 0 1 {name=p13 sig_type=std_logic lab=VSS}
