v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1360 -1070 -1280 -1070 {
lab=IN2}
N -1280 -1070 -1280 -890 {
lab=IN2}
N -1360 -890 -1280 -890 {
lab=IN2}
N -1450 -1070 -1420 -1070 {
lab=SEL}
N -1450 -1070 -1450 -890 {
lab=SEL}
N -1450 -890 -1420 -890 {
lab=SEL}
N -1700 -1160 -1390 -1160 {
lab=#net1}
N -1390 -1160 -1390 -1110 {
lab=#net1}
N -1970 -1170 -1890 -1170 {
lab=SEL}
N -1370 -650 -1290 -650 {
lab=IN1}
N -1290 -650 -1290 -470 {
lab=IN1}
N -1370 -470 -1290 -470 {
lab=IN1}
N -1460 -650 -1430 -650 {
lab=SEL}
N -1460 -650 -1460 -470 {
lab=SEL}
N -1460 -470 -1430 -470 {
lab=SEL}
N -1640 -1160 -1640 -380 {
lab=#net1}
N -1640 -380 -1400 -380 {
lab=#net1}
N -1400 -430 -1400 -380 {
lab=#net1}
N -1930 -1170 -1930 -780 {
lab=SEL}
N -1930 -780 -1390 -780 {
lab=SEL}
N -1390 -850 -1390 -780 {
lab=SEL}
N -1400 -780 -1400 -690 {
lab=SEL}
N -1520 -930 -1450 -930 {
lab=SEL}
N -1520 -930 -1520 -570 {
lab=SEL}
N -1520 -570 -1460 -570 {
lab=SEL}
N -1990 -660 -1520 -660 {
lab=SEL}
N -1830 -1300 -1830 -1230 {
lab=VDD}
N -1830 -1090 -1830 -1010 {
lab=VSS}
N -1390 -1070 -1390 -1020 {
lab=VDD}
N -1390 -950 -1390 -890 {
lab=VSS}
N -1400 -650 -1400 -590 {
lab=VDD}
N -1400 -520 -1400 -470 {
lab=VSS}
C {inverter.sym} -1740 -1150 0 0 {name=x2}
C {symbols/pfet_03v3.sym} -1390 -1090 1 0 {name=M1
L=0.56u
W=2.24u
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
C {symbols/nfet_03v3.sym} -1390 -870 3 0 {name=M2
L=0.56u
W=2.24u
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
C {symbols/pfet_03v3.sym} -1400 -670 1 0 {name=M3
L=0.56u
W=2.24u
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
C {symbols/nfet_03v3.sym} -1400 -450 3 0 {name=M4
L=0.56u
W=2.24u
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
C {devices/lab_wire.sym} -1390 -930 0 0 {name=p18 sig_type=std_logic lab=VSS
L=0.56u
W=2.24u}
C {devices/lab_wire.sym} -1390 -1030 0 0 {name=p19 sig_type=std_logic lab=VDD
L=0.56u
W=2.24u}
C {devices/lab_wire.sym} -1400 -600 0 0 {name=p20 sig_type=std_logic lab=VDD
L=0.56u
W=2.24u}
C {devices/lab_wire.sym} -1400 -500 0 0 {name=p21 sig_type=std_logic lab=VSS
L=0.56u
W=2.24u}
C {devices/iopin.sym} -1830 -1300 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -1830 -1010 1 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -1970 -1170 0 0 {name=p3 lab=SEL}
C {devices/ipin.sym} -1280 -970 2 0 {name=p4 lab=IN2}
C {devices/ipin.sym} -1290 -560 2 0 {name=p5 lab=IN1}
C {devices/opin.sym} -1990 -660 2 0 {name=p6 lab=OUT}
