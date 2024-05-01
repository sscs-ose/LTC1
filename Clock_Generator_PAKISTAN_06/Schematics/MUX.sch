v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -70 250 -70 {
lab=#net1}
N -260 -80 -170 -80 {
lab=SEL}
N -230 130 250 130 {
lab=SEL}
N -230 -80 -230 130 {
lab=SEL}
N 370 130 420 130 {
lab=#net2}
N 420 30 420 130 {
lab=#net2}
N 420 30 500 30 {
lab=#net2}
N 370 -70 410 -70 {
lab=#net3}
N 410 -70 410 10 {
lab=#net3}
N 410 10 500 10 {
lab=#net3}
N 310 -170 310 -130 {
lab=VDD}
N 310 200 310 240 {
lab=VSS}
N 800 10 840 10 {
lab=VDD}
N 800 50 840 50 {
lab=VSS}
N 200 -50 250 -50 {
lab=IN1}
N 200 150 250 150 {
lab=IN2}
N 310 -0 310 20 {
lab=VSS}
N 310 20 340 20 {
lab=VSS}
N 310 50 310 70 {
lab=VDD}
N 280 50 310 50 {
lab=VDD}
N 800 30 880 30 {
lab=VOUT}
N -140 -150 -140 -10 {
lab=SEL}
N -140 -10 -100 -10 {
lab=SEL}
N -140 -150 -100 -150 {
lab=SEL}
N -60 -120 -60 -40 {
lab=#net1}
N -60 20 -60 50 {
lab=VSS}
N -60 -210 -60 -180 {
lab=VDD}
N -170 -80 -140 -80 {
lab=SEL}
N -60 -150 -40 -150 {
lab=VDD}
N -40 -190 -40 -150 {
lab=VDD}
N -60 -190 -40 -190 {
lab=VDD}
N -60 -10 -40 -10 {
lab=VSS}
N -40 -10 -40 30 {
lab=VSS}
N -60 30 -40 30 {
lab=VSS}
N -60 -70 20 -70 {
lab=#net1}
C {AND.sym} 400 -50 0 0 {name=x2}
C {AND.sym} 400 150 0 0 {name=x3}
C {devices/ipin.sym} -260 -80 0 0 {name=p3 lab=SEL}
C {devices/ipin.sym} 200 -50 0 0 {name=p4 lab=IN1}
C {devices/ipin.sym} 200 150 0 0 {name=p5 lab=IN2}
C {devices/lab_wire.sym} 310 -150 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 820 10 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 280 50 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 310 230 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 830 50 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 330 20 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 880 30 0 0 {name=p12 lab=VOUT}
C {devices/iopin.sym} -60 -210 3 0 {name=p13 lab=VDD}
C {symbols/pfet_03v3.sym} -80 -150 0 0 {name=M4
L=0.56u
W=6.72u
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
C {devices/iopin.sym} -60 50 1 0 {name=p16 lab=VSS}
C {symbols/nfet_03v3.sym} -80 -10 0 0 {name=M5
L=0.56u
W=3.36u
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
C {OR.sym} 650 30 0 0 {name=x1}
