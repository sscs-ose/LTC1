v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -350 540 -330 {
lab=#net1}
N 540 -170 540 -140 {
lab=0}
N 540 -300 650 -300 {
lab=0}
N 540 -200 650 -200 {
lab=0}
N 540 -600 900 -600 {lab=VDD}
N 1050 -630 1050 -600 {
lab=VDD}
N 200 -300 500 -300 {lab=b2}
N 200 -200 500 -200 {lab=b1}
N 160 -270 160 -230 {
lab=b1}
N 160 -240 220 -240 {
lab=b1}
N 220 -240 220 -200 {
lab=b1}
N 160 -170 160 -140 {
lab=0}
N 130 -300 160 -300 {
lab=0}
N 130 -200 160 -200 {
lab=0}
N 160 -440 160 -420 {
lab=#net2}
N 540 -250 540 -230 {
lab=s3}
N 160 -360 160 -330 {
lab=b2}
N 900 -600 1050 -600 {
lab=VDD}
N -0 -540 0 -510 {
lab=VDD}
N 0 -540 160 -540 {
lab=VDD}
N 160 -540 160 -510 {
lab=VDD}
N 40 -480 120 -480 {
lab=#net3}
N 0 -430 60 -430 {
lab=#net3}
N 60 -480 60 -430 {
lab=#net3}
N 160 -450 160 -440 {
lab=#net2}
N -10 -540 -10 -480 {
lab=VDD}
N 160 -480 170 -480 {
lab=VDD}
N 170 -540 170 -480 {
lab=VDD}
N 160 -540 170 -540 {
lab=VDD}
N 540 -270 540 -250 {
lab=s3}
N 540 -370 540 -350 {
lab=#net1}
N 540 -600 540 -430 {
lab=VDD}
N 0 -310 0 -270 {
lab=#net4}
N 0 -450 0 -370 {
lab=#net3}
N -10 -540 -0 -540 {
lab=VDD}
N -10 -480 0 -480 {
lab=VDD}
N 80 -600 80 -540 {
lab=VDD}
N 160 -340 220 -340 {
lab=b2}
N 220 -340 220 -300 {
lab=b2}
N -140 -280 -140 -230 {
lab=#net5}
N -140 -170 -140 -140 {
lab=0}
N -180 -200 -140 -200 {
lab=0}
N -100 -200 -40 -200 {
lab=#net5}
N -140 -250 -90 -250 {
lab=#net5}
N -90 -250 -90 -200 {
lab=#net5}
N -0 -270 -0 -230 {
lab=#net4}
N -0 -200 30 -200 {
lab=0}
N 0 -170 -0 -140 {
lab=0}
C {devices/lab_pin.sym} 650 -200 0 1 {name=p10 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 540 -140 0 1 {name=p11 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} 520 -300 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 520 -200 0 0 {name=M4
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
C {devices/lab_pin.sym} 1050 -630 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 -300 3 0 {name=p3 sig_type=std_logic lab=b2}
C {devices/lab_pin.sym} 380 -200 1 1 {name=p4 sig_type=std_logic lab=b1}
C {symbols/nfet_03v3.sym} 180 -300 0 1 {name=M5
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
C {symbols/nfet_03v3.sym} 180 -200 0 1 {name=M6
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
C {devices/lab_pin.sym} 160 -140 0 1 {name=p16 sig_type=std_logic lab=0}
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
V0 VDD 0 3
V1 IN+ 0 3
V2 IN- 0 0

.options savecurrents
.param Wn=0.3u
.param Wn1=0.3u
.save @m.xm1.m0[vth] @m.xm2.m0[vth] @m.xm3.m0[vth] @m.xm4.m0[vth]
.control
	dc I0 0u 2u 0.1u
	plot v(b1) v(s3)
	plot v(b2) v(VDD)
	*plot v(VDD)-v(s3)-(v(b2)-v(s3)-@m.xm3.m0[vth])
	plot i(Vmeas1) i(Vmeas2) i(Vmeas3)
	*tran 1u 100u
 	plot v(b2)-v(s3)-@m.xm3.m0[vth] v(b1)-@m.xm4.m0[vth]
	*plot v(s3) v(VDD)-V(s3)
	plot @m.xm3.m0[vth] @m.xm4.m0[vth]
.endc

.save all @m.xm1.m0[vth] @m.xm2.m0[vth] @m.xm3.m0[vth] @m.xm4.m0[vth]
"}
C {devices/lab_pin.sym} 130 -300 0 0 {name=p22 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 130 -200 0 0 {name=p23 sig_type=std_logic lab=0}
C {devices/isource.sym} -140 -310 0 0 {name=I0 value=1.9u}
C {devices/lab_pin.sym} 80 -600 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 -250 0 0 {name=p18 sig_type=std_logic lab=s3}
C {devices/ammeter.sym} 540 -400 0 0 {name=Vmeas2}
C {devices/ammeter.sym} 160 -390 0 0 {name=Vmeas1}
C {devices/lab_pin.sym} 650 -300 0 1 {name=p1 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 0 -140 0 1 {name=p2 sig_type=std_logic lab=0}
C {symbols/pfet_03v3.sym} 20 -480 0 1 {name=M1
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
C {symbols/pfet_03v3.sym} 140 -480 0 0 {name=M2
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
C {devices/ammeter.sym} 0 -340 0 0 {name=Vmeas3}
C {devices/lab_pin.sym} -140 -340 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -120 -200 0 1 {name=M7
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
C {devices/lab_pin.sym} -140 -140 0 1 {name=p6 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -180 -200 0 0 {name=p7 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} -20 -200 0 0 {name=M8
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
C {devices/lab_pin.sym} 30 -200 0 1 {name=p8 sig_type=std_logic lab=0}
