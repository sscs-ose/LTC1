v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 -230 210 -200 {
lab=#net1}
N 210 -260 250 -260 {
lab=VSS}
N 210 -140 210 -110 {
lab=VSS}
N 140 -260 170 -260 {
lab=A}
N 140 -170 170 -170 {
lab=B}
N 130 -430 140 -430 {
lab=VDD}
N 140 -470 140 -430 {
lab=VDD}
N 130 -470 140 -470 {
lab=VDD}
N 130 -470 130 -460 {
lab=VDD}
N 130 -500 130 -470 {
lab=VDD}
N 130 -400 130 -380 {
lab=#net2}
N 60 -430 90 -430 {
lab=A}
N 280 -430 290 -430 {
lab=VDD}
N 290 -470 290 -430 {
lab=VDD}
N 280 -470 290 -470 {
lab=VDD}
N 280 -470 280 -460 {
lab=VDD}
N 280 -500 280 -470 {
lab=VDD}
N 280 -400 280 -380 {
lab=#net2}
N 210 -430 240 -430 {
lab=B}
N 210 -330 210 -290 {
lab=#net2}
N 130 -500 280 -500 {
lab=VDD}
N 130 -380 280 -380 {
lab=#net2}
N 210 -330 330 -330 {
lab=#net2}
N 200 -540 200 -500 {
lab=VDD}
N 470 -300 480 -300 {
lab=VDD}
N 480 -340 480 -300 {
lab=VDD}
N 470 -340 480 -340 {
lab=VDD}
N 470 -340 470 -330 {
lab=VDD}
N 470 -370 470 -340 {
lab=VDD}
N 470 -270 470 -230 {
lab=OUT}
N 400 -300 430 -300 {
lab=#net2}
N 400 -160 430 -160 {
lab=#net2}
N 470 -230 540 -230 {
lab=OUT}
N 470 -160 480 -160 {
lab=VSS}
N 480 -160 480 -120 {
lab=VSS}
N 470 -120 480 -120 {
lab=VSS}
N 470 -120 470 -90 {
lab=VSS}
N 470 -230 470 -190 {
lab=OUT}
N 210 -380 210 -330 {
lab=#net2}
N 470 -130 470 -120 {
lab=VSS}
N 400 -230 400 -160 {
lab=#net2}
N 330 -330 330 -230 {
lab=#net2}
N 330 -230 400 -230 {
lab=#net2}
N 400 -300 400 -230 {
lab=#net2}
N 210 -170 220 -170 {
lab=VSS}
N 220 -170 220 -130 {
lab=VSS}
N 210 -130 220 -130 {
lab=VSS}
C {symbols/pfet_03v3.sym} 110 -430 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 190 -170 0 0 {name=M3
L=0.28u
W=1u
nf="2"
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
C {symbols/nfet_03v3.sym} 190 -260 0 0 {name=M4
L=0.28u
W=1u
nf="2"
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
C {symbols/pfet_03v3.sym} 260 -430 0 0 {name=M5
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
C {devices/iopin.sym} 200 -540 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 210 -110 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 140 -260 0 0 {name=p3 lab=A}
C {devices/ipin.sym} 140 -170 0 0 {name=p4 lab=B}
C {devices/opin.sym} 540 -230 0 0 {name=p6 lab=OUT}
C {devices/lab_pin.sym} 70 -430 0 0 {name=p7 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 220 -430 0 0 {name=p8 sig_type=std_logic lab=B}
C {symbols/pfet_03v3.sym} 450 -300 0 0 {name=M8
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
C {symbols/nfet_03v3.sym} 450 -160 0 0 {name=M9
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
C {devices/lab_pin.sym} 470 -360 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -100 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -260 0 1 {name=p12 sig_type=std_logic lab=VSS}
