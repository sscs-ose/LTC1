v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -170 190 -110 {
lab=#net1}
N 190 -230 190 -200 {
lab=VDD}
N 190 -50 190 30 {
lab=#net2}
N 440 -170 440 -110 {
lab=OUT}
N 440 -50 440 30 {
lab=#net3}
N 440 -230 440 -200 {
lab=VDD}
N 190 90 190 110 {
lab=VSS}
N 190 110 440 110 {
lab=VSS}
N 440 90 440 110 {
lab=VSS}
N 190 60 190 90 {
lab=VSS}
N 440 60 440 90 {
lab=VSS}
N 370 -200 400 -200 {
lab=#net2}
N 370 -200 370 60 {
lab=#net2}
N 370 60 400 60 {
lab=#net2}
N 190 -10 370 -10 {
lab=#net2}
N 440 -140 570 -140 {
lab=OUT}
N 190 -250 190 -230 {
lab=VDD}
N 190 -250 440 -250 {
lab=VDD}
N 440 -250 440 -230 {
lab=VDD}
N 190 -80 270 -80 {
lab=VDD}
N 440 -80 510 -80 {
lab=VSS}
N 30 -80 150 -80 {
lab=CLK}
N 320 -300 320 -250 {
lab=VDD}
N 320 110 320 160 {
lab=VSS}
N 120 -200 150 -200 {
lab=INP}
N 120 -200 120 60 {
lab=INP}
N 120 60 150 60 {
lab=INP}
N 60 -200 120 -200 {
lab=INP}
N 350 -80 400 -80 {
lab=CLK}
N 350 -80 350 -30 {
lab=CLK}
N 100 -30 350 -30 {
lab=CLK}
N 100 -80 100 -30 {
lab=CLK}
C {symbols/pfet_03v3.sym} 170 -200 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 170 -80 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 170 60 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 420 60 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 420 -80 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 420 -200 0 0 {name=M8
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
C {devices/lab_wire.sym} 500 -80 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -80 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 320 160 1 0 {name=p3 lab=VSS}
C {devices/iopin.sym} 320 -300 3 0 {name=p4 lab=VDD}
C {devices/opin.sym} 570 -140 0 0 {name=p5 lab=OUT}
C {devices/ipin.sym} 60 -200 0 0 {name=p6 lab=INP}
C {devices/ipin.sym} 30 -80 0 0 {name=p7 lab=CLK}
