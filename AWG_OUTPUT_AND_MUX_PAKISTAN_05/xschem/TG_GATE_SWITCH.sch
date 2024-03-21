v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 140 -30 140 {
lab=CLK1}
N -130 10 -130 140 {
lab=CLK1}
N -130 10 -30 10 {
lab=CLK1}
N 10 40 10 110 {
lab=CLKB}
N 10 140 120 140 {
lab=VSS}
N 120 140 120 210 {
lab=VSS}
N 10 210 120 210 {
lab=VSS}
N 10 170 10 210 {
lab=VSS}
N 10 10 90 10 {
lab=VDD}
N 90 -70 90 10 {
lab=VDD}
N 10 -70 90 -70 {
lab=VDD}
N 10 -70 10 -20 {
lab=VDD}
N 10 70 110 70 {
lab=CLKB}
N 370 -70 450 -70 {
lab=B}
N 450 -70 450 200 {
lab=B}
N 370 200 450 200 {
lab=B}
N 250 -70 310 -70 {
lab=A}
N 250 -70 250 200 {
lab=A}
N 250 200 310 200 {
lab=A}
N 340 -70 340 0 {
lab=VSS}
N 340 140 340 200 {
lab=VDD}
N 340 240 340 290 {
lab=CLKB}
N 340 -150 340 -110 {
lab=CLK1}
N 200 70 250 70 {
lab=A}
N 450 70 500 70 {
lab=B}
N -320 0 -280 0 {
lab=CLK}
N -320 130 -280 130 {
lab=CLK}
N -320 0 -320 130 {
lab=CLK}
N -240 30 -240 100 {
lab=CLK1}
N -240 80 -130 80 {
lab=CLK1}
N -240 0 -210 0 {
lab=VDD}
N -210 -70 -210 0 {
lab=VDD}
N -240 -70 -210 -70 {
lab=VDD}
N -240 -70 -240 -30 {
lab=VDD}
N -240 160 -240 210 {
lab=VSS}
N -240 210 -210 210 {
lab=VSS}
N -210 130 -210 210 {
lab=VSS}
N -240 130 -210 130 {
lab=VSS}
N -350 60 -320 60 {
lab=CLK}
C {symbols/nfet_03v3.sym} -10 140 0 0 {name=M4
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
C {symbols/pfet_03v3.sym} -10 10 0 0 {name=M6
L=0.28u
W=4u
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
C {devices/iopin.sym} 50 -70 3 0 {name=p6 lab=VDD}
C {devices/iopin.sym} 60 210 1 0 {name=p7 lab=VSS}
C {devices/opin.sym} 490 70 0 0 {name=p9 lab=B}
C {devices/lab_wire.sym} 110 70 0 1 {name=p13 sig_type=std_logic lab=CLKB}
C {symbols/nfet_03v3.sym} 340 -90 1 0 {name=M1
L=0.28u
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
C {symbols/pfet_03v3.sym} 340 220 3 0 {name=M2
L=0.28u
W=24u
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
C {devices/lab_pin.sym} 340 -140 0 0 {name=p3 sig_type=std_logic lab=CLK1}
C {devices/lab_wire.sym} 340 270 0 1 {name=p4 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} 340 -10 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 340 160 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -350 60 0 0 {name=p8 lab=CLK}
C {devices/ipin.sym} 200 70 0 0 {name=p15 lab=A}
C {symbols/nfet_03v3.sym} -260 130 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} -260 0 0 0 {name=M5
L=0.28u
W=4u
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
C {devices/lab_wire.sym} -230 -70 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -210 190 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -110 10 1 0 {name=p10 sig_type=std_logic lab=CLK1}
