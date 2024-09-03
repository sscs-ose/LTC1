v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -160 50 -140 {
lab=OUT}
N 50 -160 270 -160 {
lab=OUT}
N 270 -160 270 -140 {
lab=OUT}
N 270 -80 270 -60 {
lab=IN}
N 50 -60 270 -60 {
lab=IN}
N 50 -80 50 -60 {
lab=IN}
N -70 -110 10 -110 {
lab=#net1}
N 310 -110 330 -110 {
lab=S}
N -250 -110 -230 -110 {
lab=S}
N -180 -180 -180 -160 {
lab=VDD}
N -180 -50 -180 -30 {
lab=VSS}
N 250 -110 270 -110 {
lab=VSS}
N 50 -110 70 -110 {
lab=VDD}
C {inv_my.sym} -670 20 0 0 {name=x1}
C {devices/lab_pin.sym} -180 -180 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -180 -30 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} -250 -110 0 0 {name=p3 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 330 -110 2 0 {name=p4 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 170 -160 1 0 {name=p5 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 170 -60 3 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/iopin.sym} -70 -270 0 0 {name=p7 lab=IN}
C {devices/iopin.sym} 0 -270 0 0 {name=p8 lab=OUT}
C {devices/ipin.sym} 110 -270 0 0 {name=p9 lab=S}
C {devices/iopin.sym} -150 -270 0 0 {name=p11 lab=VSS}
C {devices/iopin.sym} -230 -270 0 0 {name=p12 lab=VDD}
C {symbols/pfet_03v3.sym} 30 -110 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 290 -110 2 0 {name=M2
L=0.28u
W=0.22u
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
C {devices/lab_pin.sym} 250 -110 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 70 -110 2 0 {name=p13 sig_type=std_logic lab=VDD}
