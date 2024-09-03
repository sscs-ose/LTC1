v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 770 180 870 180 {
lab=CLK}
N 770 50 770 180 {
lab=CLK}
N 770 50 870 50 {
lab=CLK}
N 910 80 910 150 {
lab=CLKB}
N 910 180 1020 180 {
lab=VSS}
N 1020 180 1020 250 {
lab=VSS}
N 910 250 1020 250 {
lab=VSS}
N 910 210 910 250 {
lab=VSS}
N 910 50 990 50 {
lab=VDD}
N 990 -30 990 50 {
lab=VDD}
N 910 -30 990 -30 {
lab=VDD}
N 910 -30 910 20 {
lab=VDD}
N 680 110 770 110 {
lab=CLK}
N 910 110 1010 110 {
lab=CLKB}
N 1270 -30 1350 -30 {
lab=B}
N 1350 -30 1350 240 {
lab=B}
N 1270 240 1350 240 {
lab=B}
N 1150 -30 1210 -30 {
lab=A}
N 1150 -30 1150 240 {
lab=A}
N 1150 240 1210 240 {
lab=A}
N 1240 -30 1240 40 {
lab=VSS}
N 1240 180 1240 240 {
lab=VDD}
N 1240 280 1240 330 {
lab=CLKB}
N 1240 -110 1240 -70 {
lab=CLK}
N 1100 110 1150 110 {
lab=A}
N 1350 110 1400 110 {
lab=B}
C {symbols/nfet_03v3.sym} 890 180 0 0 {name=M4
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 890 50 0 0 {name=M6
L=0.28u
W=2u
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
C {devices/iopin.sym} 950 -30 3 0 {name=p6 lab=VDD}
C {devices/iopin.sym} 960 250 1 0 {name=p7 lab=VSS}
C {devices/opin.sym} 1390 110 0 0 {name=p9 lab=B}
C {devices/lab_wire.sym} 1010 110 0 1 {name=p13 sig_type=std_logic lab=CLKB}
C {symbols/nfet_03v3.sym} 1240 -50 1 0 {name=M1
L=0.28u
W=2u
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
C {symbols/pfet_03v3.sym} 1240 260 3 0 {name=M2
L=0.28u
W=2u
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
C {devices/lab_pin.sym} 1240 -100 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 1240 310 0 1 {name=p4 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} 1240 30 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1240 200 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 680 110 0 0 {name=p8 lab=CLK}
C {devices/ipin.sym} 1100 110 0 0 {name=p15 lab=A}
