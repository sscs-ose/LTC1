v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -18390 -21990 -18170 -21990 {
lab=#net1}
N -18170 -21990 -18170 -21980 {
lab=#net1}
N -18200 -21940 -18200 -21740 {
lab=VIN}
N -18140 -21940 -18140 -21740 {
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
N -18470 -21950 -18470 -21920 {
lab=VSS}
N -18470 -22070 -18470 -22030 {
lab=VDD}
N -18560 -21990 -18530 -21990 {
lab=CLK}
C {symbols/pfet_03v3.sym} -18170 -21960 3 1 {name=M1
L=0.28u
W=5u
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
W=3u
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
C {devices/iopin.sym} -18470 -22070 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -18470 -21920 1 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} -18560 -21990 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {devices/iopin.sym} -18070 -21850 0 0 {name=p5 lab=VOUT}
C {devices/ipin.sym} -18170 -21670 3 0 {name=p6 lab=CLK

}
C {devices/lab_pin.sym} -18170 -21870 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -18170 -21790 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} -18270 -21850 2 0 {name=p4 lab=VIN}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/Inverter.sym} -18440 -21920 0 0 {name=x1}
