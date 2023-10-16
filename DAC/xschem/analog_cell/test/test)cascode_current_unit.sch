v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 750 -360 750 -340 {
lab=d3}
N 750 -180 750 -150 {
lab=0}
N 750 -310 860 -310 {
lab=0}
N 750 -210 860 -210 {
lab=0}
N 410 -310 710 -310 {lab=b2}
N 410 -210 710 -210 {lab=b1}
N 370 -280 370 -240 {
lab=b1}
N 370 -250 430 -250 {
lab=b1}
N 430 -250 430 -210 {
lab=b1}
N 370 -180 370 -150 {
lab=0}
N 340 -310 370 -310 {
lab=0}
N 340 -210 370 -210 {
lab=0}
N 370 -450 370 -430 {
lab=#net1}
N 750 -260 750 -240 {
lab=s3}
N 370 -370 370 -340 {
lab=b2}
N 210 -550 210 -520 {
lab=VDD}
N 210 -550 370 -550 {
lab=VDD}
N 370 -550 370 -520 {
lab=VDD}
N 250 -490 330 -490 {
lab=#net2}
N 210 -440 270 -440 {
lab=#net2}
N 270 -490 270 -440 {
lab=#net2}
N 370 -460 370 -450 {
lab=#net1}
N 200 -550 200 -490 {
lab=VDD}
N 370 -490 380 -490 {
lab=VDD}
N 380 -550 380 -490 {
lab=VDD}
N 370 -550 380 -550 {
lab=VDD}
N 750 -280 750 -260 {
lab=s3}
N 750 -380 750 -360 {
lab=d3}
N 210 -460 210 -380 {
lab=#net2}
N 200 -550 210 -550 {
lab=VDD}
N 200 -490 210 -490 {
lab=VDD}
N 290 -610 290 -550 {
lab=VDD}
N 370 -350 430 -350 {
lab=b2}
N 430 -350 430 -310 {
lab=b2}
N 630 -450 630 -430 {
lab=d3}
N 870 -450 870 -430 {
lab=d3}
N 630 -430 870 -430 {
lab=d3}
N 630 -560 630 -510 {
lab=OUT+}
N 870 -540 870 -510 {
lab=OUT-}
N 560 -480 590 -480 {
lab=IN+}
N 630 -480 710 -480 {
lab=0}
N 800 -480 870 -480 {
lab=0}
N 630 -680 630 -630 {
lab=OUT+}
N 630 -570 630 -560 {
lab=OUT+}
N 630 -630 630 -570 {
lab=OUT+}
N 870 -620 870 -550 {
lab=OUT-}
N 740 -680 1100 -680 {lab=OUT+}
N 630 -680 740 -680 {
lab=OUT+}
N 870 -550 870 -540 {
lab=OUT-}
N 910 -480 940 -480 {lab=IN-}
N 870 -620 1100 -620 {lab=OUT-}
N 750 -430 750 -380 {
lab=d3}
N 1200 -820 1200 -790 {
lab=VDD}
N 1400 -820 1400 -790 {
lab=VDD}
N 210 -320 210 -280 {
lab=#net3}
N 70 -290 70 -240 {
lab=#net4}
N 70 -180 70 -150 {
lab=0}
N 30 -210 70 -210 {
lab=0}
N 110 -210 170 -210 {
lab=#net4}
N 70 -260 120 -260 {
lab=#net4}
N 120 -260 120 -210 {
lab=#net4}
N 210 -280 210 -240 {
lab=#net3}
N 210 -210 240 -210 {
lab=0}
N 210 -180 210 -150 {
lab=0}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Junbeom Ethan Park"}
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
V0 VDD 0 3.3
*V1 IN+ 0 3
*V2 IN- 0 0

.options savecurrents
.param Wn=0.3u
.param Wp=1.8u
.param Mn=1

.control
	dc I0 1u 4u 0.1u
	*tran 1u 100u

	plot v(d3)
 	plot v(b2)-v(s3)-@m.xm3.m0[vth] v(b1)-@m.xm4.m0[vth]
	plot @m.xm3.m0[vth] @m.xm4.m0[vth]
	plot V(IN+) V(IN-)
	plot i(Vmeas1) i(Vmeas2)

.endc

.save all @m.xm1.m0[vth] @m.xm2.m0[vth] @m.xm3.m0[vth] @m.xm4.m0[vth]
"}
C {devices/lab_pin.sym} 860 -210 0 1 {name=p10 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 750 -150 0 1 {name=p11 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} 730 -310 0 0 {name=M3
L=0.4u
W=Wn
nf=1
m=Mn
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 730 -210 0 0 {name=M4
L=0.4u
W=Wn
nf=1
m=Mn
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 590 -310 3 0 {name=p3 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} 590 -210 1 1 {name=p4 sig_type=std_logic lab=b1}
C {symbols/nfet_03v3.sym} 390 -310 0 1 {name=M5
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
C {symbols/nfet_03v3.sym} 390 -210 0 1 {name=M6
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
C {devices/lab_pin.sym} 370 -150 0 1 {name=p16 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 340 -310 0 0 {name=p22 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 340 -210 0 0 {name=p23 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 290 -610 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 750 -400 0 0 {name=p18 sig_type=std_logic lab=d3}
C {devices/ammeter.sym} 370 -400 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} 860 -310 0 1 {name=p1 sig_type=std_logic lab=0}
C {symbols/pfet_03v3.sym} 230 -490 0 1 {name=M1
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
C {symbols/pfet_03v3.sym} 350 -490 0 0 {name=M2
L=0.28u
W=Wp
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
C {devices/lab_pin.sym} 710 -480 0 1 {name=p12 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 800 -480 0 0 {name=p13 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} 610 -480 0 0 {name=M7
L=0.3u
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
C {symbols/nfet_03v3.sym} 890 -480 0 1 {name=M8
L=0.3u
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
C {devices/lab_pin.sym} 1100 -680 0 1 {name=p7 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 1100 -620 0 1 {name=p5 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 940 -480 0 1 {name=p6 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} 560 -480 0 0 {name=p8 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} 1200 -670 0 1 {name=p9 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 1400 -670 0 1 {name=p14 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 1200 -820 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1400 -820 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/res.sym} 1200 -760 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1400 -760 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/ammeter.sym} 1200 -700 0 0 {name=Vmeas2}
C {devices/ammeter.sym} 1400 -700 0 0 {name=Vmeas4}
C {devices/lab_pin.sym} 750 -260 0 0 {name=p20 sig_type=std_logic lab=s3}
C {devices/vsource.sym} 1240 -330 0 0 {name=VIN1
value=3.3
*value="pulse 0 3.3 0 1u 1u 8u 20u"}
C {devices/vsource.sym} 1240 -210 0 0 {name=VIN2 
value=0
*value="pulse 0 3.3 10u 1u 1u 8u 20u"}
C {devices/lab_pin.sym} 1240 -360 0 0 {name=p21 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} 1240 -240 0 1 {name=p24 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} 1240 -300 0 1 {name=p25 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1240 -180 0 1 {name=p26 sig_type=std_logic lab=0}
C {devices/isource.sym} 70 -320 0 0 {name=I0 value=1.9u}
C {devices/lab_pin.sym} 210 -150 0 1 {name=p27 sig_type=std_logic lab=0}
C {devices/ammeter.sym} 210 -350 0 0 {name=Vmeas5}
C {devices/lab_pin.sym} 70 -350 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 90 -210 0 1 {name=M9
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
C {devices/lab_pin.sym} 70 -150 0 1 {name=p29 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 30 -210 0 0 {name=p30 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} 190 -210 0 0 {name=M10
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
C {devices/lab_pin.sym} 240 -210 0 1 {name=p31 sig_type=std_logic lab=0}
