v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 -110 -170 -80 {
lab=#net1}
N -240 -140 -210 -140 {
lab=CLK}
N -240 -140 -240 -50 {
lab=CLK}
N -240 -50 -210 -50 {
lab=CLK}
N -300 -90 -240 -90 {
lab=CLK}
N -170 -140 -90 -140 {
lab=VDD}
N -90 -200 -90 -140 {
lab=VDD}
N -170 -200 -90 -200 {
lab=VDD}
N -170 -200 -170 -170 {
lab=VDD}
N -170 -200 -170 -170 {
lab=VDD}
N -170 -230 -170 -200 {
lab=VDD}
N -170 -20 -170 20 {
lab=VSS}
N -170 20 -100 20 {
lab=VSS}
N -100 -50 -100 20 {
lab=VSS}
N -170 -50 -100 -50 {
lab=VSS}
N -170 20 -170 60 {
lab=VSS}
N 20 -100 20 -80 {
lab=#net1}
N -170 -100 20 -100 {
lab=#net1}
N -30 -40 -10 -40 {
lab=IN}
N -30 -40 -30 150 {
lab=IN}
N -30 150 -10 150 {
lab=IN}
N 50 -40 80 -40 {
lab=OUT}
N 80 -40 80 150 {
lab=OUT}
N 50 150 80 150 {
lab=OUT}
N 20 190 20 230 {
lab=CLK}
N -50 230 20 230 {
lab=CLK}
N 80 40 150 40 {
lab=OUT}
N -80 50 -30 50 {
lab=IN}
N 20 -40 20 10 {
lab=VDD}
N 20 100 20 150 {
lab=VSS}
C {symbols/pfet_03v3.sym} 20 -60 1 0 {name=M1
L=0.5u
W="3.36u"
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
C {symbols/nfet_03v3.sym} 20 170 3 0 {name=M2
L=0.5u
W="3.36u"
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
C {symbols/pfet_03v3.sym} -190 -140 0 0 {name=M3
L=0.5u
W=3.36u
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
C {symbols/nfet_03v3.sym} -190 -50 0 0 {name=M4
L=0.5u
W=1.68u
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
C {devices/iopin.sym} 170 -160 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 170 -120 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 210 -80 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 160 -210 0 0 {name=p4 lab=OUT}
C {devices/ipin.sym} 230 -40 0 0 {name=p6 lab=CLK}
C {devices/lab_pin.sym} -170 -230 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -170 60 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -300 -90 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -80 50 0 0 {name=p10 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} -50 230 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 150 40 2 0 {name=p12 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 20 10 3 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 20 100 1 0 {name=p14 sig_type=std_logic lab=VSS}
