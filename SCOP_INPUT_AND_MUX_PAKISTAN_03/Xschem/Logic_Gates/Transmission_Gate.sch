v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -18170 -21990 -18170 -21980 {
lab=CLK_B}
N -18200 -21850 -18200 -21740 {
lab=VIN}
N -18140 -21850 -18140 -21740 {
lab=VOUT}
N -18170 -21940 -18170 -21870 {
lab=VDD}
N -18170 -21810 -18170 -21740 {
lab=VSS}
N -18170 -21700 -18170 -21670 {
lab=CLK}
N -18270 -21850 -18200 -21850 {
lab=VIN}
N -18140 -21850 -18070 -21850 {
lab=VOUT}
N -18200 -21940 -18200 -21850 {
lab=VIN}
N -18140 -21940 -18140 -21850 {
lab=VOUT}
N -18580 -21870 -18580 -21810 {
lab=CLK_B}
N -18580 -21750 -18580 -21730 {
lab=VSS}
N -18580 -21950 -18580 -21930 {
lab=VDD}
N -18640 -21900 -18620 -21900 {
lab=CLK}
N -18640 -21900 -18640 -21780 {
lab=CLK}
N -18640 -21780 -18620 -21780 {
lab=CLK}
N -18580 -21840 -18540 -21840 {
lab=CLK_B}
N -18680 -21840 -18640 -21840 {
lab=CLK}
N -18580 -21900 -18550 -21900 {
lab=VDD}
N -18550 -21940 -18550 -21900 {
lab=VDD}
N -18580 -21940 -18550 -21940 {
lab=VDD}
N -18580 -21780 -18550 -21780 {
lab=VSS}
N -18550 -21780 -18550 -21740 {
lab=VSS}
N -18580 -21740 -18550 -21740 {
lab=VSS}
N -18170 -22020 -18170 -21990 {
lab=CLK_B}
C {symbols/pfet_03v3.sym} -18170 -21960 3 1 {name=M1
L=0.28u
W=60u
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
C {symbols/nfet_03v3.sym} -18170 -21720 1 1 {name=M2
L=0.28u
W=30u
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
C {devices/lab_pin.sym} -18670 -21840 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {devices/iopin.sym} -18270 -21850 0 1 {name=p4 lab=VIN

}
C {devices/iopin.sym} -18070 -21850 0 0 {name=p5 lab=VOUT}
C {devices/ipin.sym} -18170 -21670 3 0 {name=p6 lab=CLK

}
C {devices/lab_pin.sym} -18170 -21880 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -18170 -21780 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} -18600 -21900 0 0 {name=M3
L=0.28u
W=7.5u
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
C {symbols/nfet_03v3.sym} -18600 -21780 0 0 {name=M4
L=0.28u
W=3.75u
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
C {devices/lab_pin.sym} -18580 -21950 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -18580 -21730 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -18440 -22010 0 0 {name=p15 lab=VDD}
C {devices/iopin.sym} -18380 -21710 0 0 {name=p16 lab=VSS}
C {devices/lab_pin.sym} -18550 -21840 0 1 {name=p1 sig_type=std_logic lab=CLK_B}
C {devices/lab_pin.sym} -18170 -22010 0 1 {name=p2 sig_type=std_logic lab=CLK_B}
