v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 660 -330 700 -330 {
lab=#net1}
N 620 -380 620 -360 {
lab=#net1}
N 740 -380 740 -360 {
lab=VCNTL}
N 740 -380 1060 -380 {
lab=VCNTL}
N 1060 -380 1060 -360 {
lab=VCNTL}
N 1060 -300 1060 -250 {
lab=#net2}
N 1060 -190 1060 -170 {
lab=VSS}
N 920 -170 1060 -170 {
lab=VSS}
N 920 -250 920 -170 {
lab=VSS}
N 920 -380 920 -310 {
lab=VCNTL}
N 740 -300 740 -220 {
lab=#net3}
N 740 -190 760 -190 {
lab=VSS}
N 740 -330 760 -330 {
lab=VSS}
N 740 -160 740 -140 {
lab=VSS}
N 670 -190 700 -190 {
lab=PD}
N 590 -330 620 -330 {
lab=VSS}
N 620 -300 620 -290 {
lab=VSS}
N 620 -290 620 -270 {
lab=VSS}
N 360 -260 360 -220 {
lab=#net4}
N 360 -160 360 -140 {
lab=VCNTL}
N 260 -190 320 -190 {
lab=#net5}
N 270 -340 320 -340 {
lab=#net6}
N 360 -410 360 -370 {
lab=VDD}
N 360 -310 360 -260 {
lab=#net4}
N 260 -340 270 -340 {
lab=#net6}
N 150 -410 150 -390 {
lab=VDD}
N 150 -280 150 -260 {
lab=VSS}
N 80 -340 100 -340 {
lab=PD}
N 220 -240 220 -220 {
lab=VDD}
N 180 -190 220 -190 {
lab=VDD}
N 220 -160 220 -140 {
lab=#net5}
N 220 -140 270 -140 {
lab=#net5}
N 270 -190 270 -140 {
lab=#net5}
N 220 -140 220 -100 {
lab=#net5}
N 670 -380 670 -330 {
lab=#net1}
N 620 -380 670 -380 {
lab=#net1}
N 620 -410 620 -380 {
lab=#net1}
N 590 -470 620 -470 {
lab=VDD}
N 220 -40 220 -20 {
lab=VSS}
N 360 -340 390 -340 {
lab=VDD}
N 360 -190 390 -190 {
lab=VDD}
C {symbols/pfet_03v3_dss.sym} 340 -190 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 720 -190 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} 340 -340 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dss
spiceprefix=X
}
C {symbols/pfet_03v3_dss.sym} 240 -190 0 1 {name=M3
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3_dss
spiceprefix=X
}
C {inv_my.sym} -340 -210 0 0 {name=x1}
C {symbols/nfet_03v3.sym} 720 -330 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 640 -330 0 1 {name=M6
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/capa.sym} 1060 -220 0 0 {name=C1
m=1
value=119p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 920 -280 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1060 -330 0 0 {name=R1
value=148k
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} 620 -440 0 0 {name=I0 value=20u}
C {devices/isource.sym} 220 -70 0 0 {name=I1 value=20u}
C {devices/lab_pin.sym} 150 -410 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 -260 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 -20 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -330 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 -270 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 740 -140 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 760 -190 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 760 -330 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 990 -170 1 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 -190 0 0 {name=p10 sig_type=std_logic lab=PD}
C {devices/lab_pin.sym} 80 -340 0 0 {name=p11 sig_type=std_logic lab=PU}
C {devices/lab_pin.sym} 190 -190 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 390 -190 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 390 -340 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -410 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 -240 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 590 -470 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1060 -380 0 1 {name=p18 sig_type=std_logic lab=VCNTL}
C {devices/lab_pin.sym} 360 -140 0 1 {name=p19 sig_type=std_logic lab=VCNTL}
C {devices/iopin.sym} 310 -570 0 0 {name=p20 lab=VDD}
C {devices/iopin.sym} 410 -570 0 0 {name=p21 lab=VSS
}
C {devices/ipin.sym} 510 -570 0 0 {name=p22 lab=PU}
C {devices/opin.sym} 750 -570 0 0 {name=p23 lab=VCNTL}
C {devices/ipin.sym} 660 -570 0 0 {name=p24 lab=PD}
