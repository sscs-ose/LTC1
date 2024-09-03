v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 -370 -140 -370 {
lab=Vtot}
N -90 -370 -60 -370 {
lab=Vtot}
N 0 -370 40 -370 {
lab=OUT2}
N -280 -370 -230 -370 {
lab=OUT1}
N -110 -370 -90 -370 {
lab=Vtot}
N -110 -430 -110 -370 {
lab=Vtot}
N -140 -370 -110 -370 {
lab=Vtot}
N 150 -550 160 -550 {
lab=VSS}
N 160 -550 160 -510 {
lab=VSS}
N 150 -510 160 -510 {
lab=VSS}
N 150 -520 150 -510 {
lab=VSS}
N 80 -550 110 -550 {
lab=VBB}
N 150 -600 150 -580 {
lab=VBP}
N 150 -650 160 -650 {
lab=VDD}
N 160 -690 160 -650 {
lab=VDD}
N 150 -690 160 -690 {
lab=VDD}
N 150 -690 150 -680 {
lab=VDD}
N 150 -730 150 -690 {
lab=VDD}
N 90 -650 110 -650 {
lab=VBP}
N 90 -650 90 -600 {
lab=VBP}
N 90 -600 150 -600 {
lab=VBP}
N 150 -510 150 -480 {
lab=VSS}
N 150 -620 150 -600 {
lab=VBP}
N 370 -580 370 -570 {
lab=VBB}
N 370 -490 370 -460 {
lab=VSS}
N 370 -630 370 -580 {
lab=VBB}
N 330 -540 370 -540 {
lab=VSS}
N 330 -540 330 -490 {
lab=VSS}
N 330 -490 370 -490 {
lab=VSS}
N 370 -730 370 -690 {
lab=VDD}
N 410 -540 440 -540 {
lab=VBB}
N 440 -580 440 -540 {
lab=VBB}
N 370 -580 440 -580 {
lab=VBB}
N 370 -510 370 -490 {
lab=VSS}
N 300 -330 420 -330 {
lab=#net1}
N 240 -390 240 -360 {
lab=VDD}
N 240 -390 460 -390 {
lab=VDD}
N 460 -390 460 -360 {
lab=VDD}
N 460 -330 480 -330 {
lab=VDD}
N 480 -390 480 -330 {
lab=VDD}
N 460 -390 480 -390 {
lab=VDD}
N 220 -330 240 -330 {
lab=VDD}
N 220 -390 220 -330 {
lab=VDD}
N 220 -390 240 -390 {
lab=VDD}
N 240 -280 240 -250 {
lab=#net1}
N 460 -270 460 -250 {
lab=Vp}
N 300 -330 300 -280 {
lab=#net1}
N 240 -280 300 -280 {
lab=#net1}
N 280 -330 300 -330 {
lab=#net1}
N 240 -300 240 -280 {
lab=#net1}
N 240 -220 460 -220 {
lab=VSS}
N 240 -190 240 -160 {
lab=#net2}
N 360 -160 460 -160 {
lab=#net2}
N 460 -190 460 -160 {
lab=#net2}
N 160 -220 200 -220 {
lab=Vtot}
N 500 -220 540 -220 {
lab=Vref}
N 360 -160 360 -110 {
lab=#net2}
N 360 -80 380 -80 {
lab=VSS}
N 380 -80 380 -30 {
lab=VSS}
N 360 -30 380 -30 {
lab=VSS}
N 360 -50 360 -30 {
lab=VSS}
N 360 -30 360 0 {
lab=VSS}
N 280 -80 320 -80 {
lab=VBB}
N 460 -270 620 -270 {
lab=Vp}
N 240 -160 360 -160 {
lab=#net2}
N 460 -300 460 -270 {
lab=Vp}
C {devices/res.sym} -200 -370 1 0 {name=R2
value=50k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -30 -370 1 0 {name=R4
value=50k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -110 -420 0 0 {name=p95 sig_type=std_logic lab=Vtot}
C {symbols/nfet_03v3.sym} 130 -550 0 0 {name=M59
L=1u
W=4.48u
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
C {symbols/pfet_03v3.sym} 130 -650 0 0 {name=M60
L=0.28u
W=5.96u
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
C {devices/lab_pin.sym} 90 -550 0 0 {name=p115 sig_type=std_logic lab=VBB}
C {devices/lab_pin.sym} 90 -630 0 0 {name=p116 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 150 -720 0 1 {name=p117 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 150 -490 0 0 {name=p120 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -270 -370 0 0 {name=p82 sig_type=std_logic lab=OUT1}
C {devices/lab_pin.sym} 30 -370 0 1 {name=p81 sig_type=std_logic lab=OUT2}
C {devices/ipin.sym} -190 -200 0 0 {name=p1 lab=Vref}
C {devices/ipin.sym} -190 -170 0 0 {name=p2 lab=OUT1}
C {devices/ipin.sym} -190 -140 0 0 {name=p3 lab=OUT2}
C {symbols/nfet_03v3.sym} 390 -540 0 1 {name=M43
L=1u
W=4.48u
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
C {devices/isource.sym} 370 -660 0 0 {name=I0 value=25u}
C {devices/lab_pin.sym} 370 -730 0 0 {name=p61 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 370 -470 0 0 {name=p57 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 440 -560 0 1 {name=p58 sig_type=std_logic lab=VBB}
C {devices/opin.sym} -130 -200 0 0 {name=p4 lab=Vp}
C {devices/iopin.sym} -130 -170 0 0 {name=p5 lab=VDD}
C {devices/iopin.sym} -130 -140 0 0 {name=p6 lab=VSS}
C {devices/opin.sym} -30 -170 0 0 {name=p7 lab=Vtot}
C {symbols/pfet_03v3.sym} 260 -330 0 1 {name=M1
L=0.28u
W=5.96u
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
C {symbols/pfet_03v3.sym} 440 -330 0 0 {name=M2
L=0.28u
W=5.96u
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
C {symbols/nfet_03v3.sym} 220 -220 0 0 {name=M3
L=0.28u
W=4.48u
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
C {symbols/nfet_03v3.sym} 480 -220 0 1 {name=M4
L=0.28u
W=4.48u
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
C {devices/lab_pin.sym} 170 -220 0 0 {name=p8 sig_type=std_logic lab=Vtot}
C {devices/lab_pin.sym} 530 -220 0 1 {name=p9 sig_type=std_logic lab=Vref}
C {symbols/nfet_03v3.sym} 340 -80 0 0 {name=M5
L=1u
W=4.48u
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
C {devices/lab_pin.sym} 360 -10 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -220 3 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 340 -390 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 290 -80 0 0 {name=p13 sig_type=std_logic lab=VBB}
C {devices/lab_pin.sym} 600 -270 3 1 {name=p15 sig_type=std_logic lab=Vp}
