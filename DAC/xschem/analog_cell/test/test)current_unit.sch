v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -350 560 -330 {
lab=#net1}
N 560 -170 560 -140 {
lab=0}
N 560 -300 670 -300 {
lab=0}
N 560 -200 670 -200 {
lab=0}
N 220 -300 520 -300 {lab=b2}
N 220 -200 520 -200 {lab=b1}
N 180 -270 180 -230 {
lab=b1}
N 180 -240 240 -240 {
lab=b1}
N 240 -240 240 -200 {
lab=b1}
N 180 -170 180 -140 {
lab=0}
N 150 -300 180 -300 {
lab=0}
N 150 -200 180 -200 {
lab=0}
N 180 -440 180 -420 {
lab=#net2}
N 560 -250 560 -230 {
lab=s3}
N 180 -360 180 -330 {
lab=b2}
N 20 -540 20 -510 {
lab=VDD}
N 20 -540 180 -540 {
lab=VDD}
N 180 -540 180 -510 {
lab=VDD}
N 60 -480 140 -480 {
lab=#net3}
N 20 -430 80 -430 {
lab=#net3}
N 80 -480 80 -430 {
lab=#net3}
N 180 -450 180 -440 {
lab=#net2}
N 10 -540 10 -480 {
lab=VDD}
N 180 -480 190 -480 {
lab=VDD}
N 190 -540 190 -480 {
lab=VDD}
N 180 -540 190 -540 {
lab=VDD}
N 560 -270 560 -250 {
lab=s3}
N 560 -370 560 -350 {
lab=#net1}
N 20 -450 20 -370 {
lab=#net3}
N 10 -540 20 -540 {
lab=VDD}
N 10 -480 20 -480 {
lab=VDD}
N 100 -600 100 -540 {
lab=VDD}
N 180 -340 240 -340 {
lab=b2}
N 240 -340 240 -300 {
lab=b2}
N 440 -440 440 -420 {
lab=#net1}
N 680 -440 680 -420 {
lab=#net1}
N 440 -420 680 -420 {
lab=#net1}
N 440 -550 440 -500 {
lab=OUT+}
N 680 -530 680 -500 {
lab=OUT-}
N 370 -470 400 -470 {
lab=IN+}
N 440 -470 520 -470 {
lab=0}
N 610 -470 680 -470 {
lab=0}
N 440 -670 440 -620 {
lab=OUT+}
N 440 -560 440 -550 {
lab=OUT+}
N 440 -620 440 -560 {
lab=OUT+}
N 680 -610 680 -540 {
lab=OUT-}
N 550 -670 910 -670 {lab=OUT+}
N 440 -670 550 -670 {
lab=OUT+}
N 680 -540 680 -530 {
lab=OUT-}
N 720 -470 750 -470 {lab=IN-}
N 680 -610 910 -610 {lab=OUT-}
N 560 -420 560 -370 {
lab=#net1}
N 20 -310 20 -270 {
lab=#net4}
N -120 -280 -120 -230 {
lab=#net5}
N -120 -170 -120 -140 {
lab=0}
N -160 -200 -120 -200 {
lab=0}
N -80 -200 -20 -200 {
lab=#net5}
N -120 -250 -70 -250 {
lab=#net5}
N -70 -250 -70 -200 {
lab=#net5}
N 20 -270 20 -230 {
lab=#net4}
N 20 -200 50 -200 {
lab=0}
N 20 -170 20 -140 {
lab=0}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Junbeom Park"}
C {devices/code_shown.sym} -650 -490 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code.sym} -650 -305 0 0 {name=COMMANDS
only_toplevel=false
value="
V0 VDD 0 3
V1 IN+ 0 3
V2 IN- 0 0

.options savecurrents
.param Wn=0.3u
.param Wn1=0.3u
.control
	dc I0 1u 4u 0.1u
	plot v(d3)
	plot i(Vmeas1) i(Vmeas2)
	*tran 1u 100u
 	plot v(b2)-v(s3)-@m.xm3.m0[vth]
	plot v(b1)-@m.xm4.m0[vth]
	plot @m.xm3.m0[vth]
	plot @m.xm4.m0[vth]
.endc

.save all @m.xm1.m0[vth] @m.xm2.m0[vth] @m.xm3.m0[vth] @m.xm4.m0[vth]
"}
C {devices/lab_pin.sym} 670 -200 0 1 {name=p10 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 560 -140 0 1 {name=p11 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} 540 -300 0 0 {name=M3
L=0.4u
W=Wn1
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 540 -200 0 0 {name=M4
L=0.4u
W=Wn1
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 400 -300 3 0 {name=p3 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} 400 -200 1 1 {name=p4 sig_type=std_logic lab=b1}
C {symbols/nfet_03v3.sym} 200 -300 0 1 {name=M5
L=0.4u
W=Wn
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
C {symbols/nfet_03v3.sym} 200 -200 0 1 {name=M6
L=0.4u
W=Wn
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
C {devices/lab_pin.sym} 180 -140 0 1 {name=p16 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 150 -300 0 0 {name=p22 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 150 -200 0 0 {name=p23 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 100 -600 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 -250 0 0 {name=p18 sig_type=std_logic lab=s3}
C {devices/ammeter.sym} 180 -390 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} 670 -300 0 1 {name=p1 sig_type=std_logic lab=0}
C {symbols/pfet_03v3.sym} 40 -480 0 1 {name=M1
L=0.28u
W=0.4u
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
C {symbols/pfet_03v3.sym} 160 -480 0 0 {name=M2
L=0.28u
W=0.8u
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
C {devices/lab_pin.sym} 520 -470 0 1 {name=p12 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 610 -470 0 0 {name=p13 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} 420 -470 0 0 {name=M7
L=0.3u
W=Wn1
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
C {symbols/nfet_03v3.sym} 700 -470 0 1 {name=M8
L=0.3u
W=Wn1
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
C {devices/lab_pin.sym} 910 -670 0 1 {name=p7 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 910 -610 0 1 {name=p5 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 750 -470 0 1 {name=p6 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} 370 -470 0 0 {name=p8 sig_type=std_logic lab=IN+}
C {devices/isource.sym} -120 -310 0 0 {name=I1 value=1.9u}
C {devices/lab_pin.sym} 20 -140 0 1 {name=p9 sig_type=std_logic lab=0}
C {devices/ammeter.sym} 20 -340 0 0 {name=Vmeas2}
C {devices/lab_pin.sym} -120 -340 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -100 -200 0 1 {name=M9
L=0.4u
W=0.28u
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
C {devices/lab_pin.sym} -120 -140 0 1 {name=p15 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -160 -200 0 0 {name=p19 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} 0 -200 0 0 {name=M10
L=0.4u
W=0.28u
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
C {devices/lab_pin.sym} 50 -200 0 1 {name=p20 sig_type=std_logic lab=0}