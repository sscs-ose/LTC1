v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -220 340 -120 {
lab=#net1}
N 340 -60 340 10 {
lab=VSS}
N 160 -90 300 -90 {
lab=G_SINK_DOWN}
N 160 -250 300 -250 {
lab=G_SINK_UP}
N 340 -250 360 -250 {
lab=VSS}
N 340 -90 370 -90 {
lab=VSS}
N 370 -90 370 -60 {
lab=VSS}
N 340 -60 370 -60 {
lab=VSS}
N 360 -250 400 -250 {
lab=VSS}
N 340 -370 340 -280 {
lab=#net2}
N 310 -400 340 -400 {
lab=VDD}
N 310 -450 310 -400 {
lab=VDD}
N 340 -450 340 -430 {
lab=VDD}
N 310 -450 340 -450 {
lab=VDD}
N 380 -400 420 -400 {
lab=#net2}
N 420 -400 420 -350 {
lab=#net2}
N 340 -350 420 -350 {
lab=#net2}
N 530 -410 570 -410 {
lab=VDD}
N 570 -460 570 -410 {
lab=VDD}
N 530 -460 570 -460 {
lab=VDD}
N 530 -460 530 -440 {
lab=VDD}
N 340 -450 530 -450 {
lab=VDD}
N 530 -380 530 -330 {
lab=IOUT}
N 420 -410 490 -410 {
lab=#net2}
N 420 -410 420 -400 {
lab=#net2}
N 560 -80 590 -80 {
lab=VSS}
N 590 -80 590 -40 {
lab=VSS}
N 560 -40 590 -40 {
lab=VSS}
N 560 -50 560 -40 {
lab=VSS}
N 560 -50 560 -40 {
lab=VSS}
N 500 -40 560 -40 {
lab=VSS}
N 500 -80 500 -40 {
lab=VSS}
N 500 -80 520 -80 {
lab=VSS}
N 500 -80 520 -80 {
lab=VSS}
N 500 -130 500 -80 {
lab=VSS}
N 500 -130 560 -130 {
lab=VSS}
N 560 -130 560 -110 {
lab=VSS}
N 540 -240 570 -240 {
lab=VDD}
N 570 -290 570 -240 {
lab=VDD}
N 540 -290 570 -290 {
lab=VDD}
N 540 -290 540 -270 {
lab=VDD}
N 540 -290 540 -270 {
lab=VDD}
N 490 -290 540 -290 {
lab=VDD}
N 490 -290 490 -240 {
lab=VDD}
N 490 -240 500 -240 {
lab=VDD}
N 490 -240 500 -240 {
lab=VDD}
N 490 -240 490 -200 {
lab=VDD}
N 490 -200 540 -200 {
lab=VDD}
N 540 -210 540 -200 {
lab=VDD}
C {symbols/nfet_03v3.sym} 320 -250 0 0 {name=M5
L=0.5u
W=36u
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
C {symbols/nfet_03v3.sym} 320 -90 0 0 {name=M7
L=0.5u
W=36u
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
C {devices/lab_wire.sym} 400 -250 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 360 -400 0 1 {name=M2
L=1u
W=9u
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
C {symbols/pfet_03v3.sym} 510 -410 0 0 {name=M1
L=1u
W=63u
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
C {devices/lab_wire.sym} 400 -450 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 680 -400 0 0 {name=p65 lab=VDD}
C {devices/iopin.sym} 680 -370 0 0 {name=p66 lab=VSS}
C {devices/iopin.sym} 680 -310 0 0 {name=p69 lab=G_SINK_UP}
C {devices/iopin.sym} 680 -280 0 0 {name=p70 lab=G_SINK_DOWN}
C {devices/lab_wire.sym} 340 -20 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 670 -240 0 0 {name=p3 lab=IOUT}
C {devices/lab_wire.sym} 530 -340 0 0 {name=p4 sig_type=std_logic lab=IOUT}
C {devices/lab_wire.sym} 250 -250 0 0 {name=p5 sig_type=std_logic lab=G_SINK_UP}
C {devices/lab_wire.sym} 240 -90 0 0 {name=p6 sig_type=std_logic lab=G_SINK_DOWN}
C {symbols/nfet_03v3.sym} 540 -80 0 0 {name=M3
L=0.5u
W=12u
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
C {symbols/pfet_03v3.sym} 520 -240 0 0 {name=M4
L=1u
W=18u
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
C {devices/lab_wire.sym} 500 -50 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 490 -260 0 0 {name=p9 sig_type=std_logic lab=VDD}
