v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -170 540 -140 {
lab=0}
N 540 -200 650 -200 {
lab=0}
N 200 -200 500 -200 {lab=b1}
N 160 -270 160 -230 {
lab=b1}
N 160 -240 220 -240 {
lab=b1}
N 220 -240 220 -200 {
lab=b1}
N 160 -170 160 -140 {
lab=0}
N 130 -200 160 -200 {
lab=0}
N 160 -440 160 -420 {
lab=#net1}
N 540 -250 540 -230 {
lab=s3}
N 160 -360 160 -330 {
lab=b1}
N 160 -330 160 -270 {
lab=b1}
N 540 -450 540 -390 {
lab=#net2}
N 540 -390 540 -310 {
lab=#net2}
N 540 -600 540 -510 {
lab=VDD}
N 160 -560 160 -510 {
lab=VDD}
N -0 -510 160 -510 {
lab=VDD}
N 40 -480 120 -480 {
lab=CG}
N 60 -480 60 -440 {
lab=CG}
N 0 -440 60 -440 {
lab=CG}
N -50 -480 0 -480 {
lab=VDD}
N -50 -510 -50 -480 {
lab=VDD}
N -50 -510 0 -510 {
lab=VDD}
N 160 -480 200 -480 {
lab=VDD}
N 200 -510 200 -480 {
lab=VDD}
N 160 -510 200 -510 {
lab=VDD}
N 160 -450 160 -440 {
lab=#net1}
N 0 -170 0 -140 {
lab=0}
N 200 -510 540 -510 {
lab=VDD}
N 540 -480 570 -480 {
lab=VDD}
N 570 -510 570 -480 {
lab=VDD}
N 540 -510 570 -510 {
lab=VDD}
N 390 -480 500 -480 {
lab=CG}
N -0 -440 0 -390 {
lab=CG}
N -0 -330 0 -230 {
lab=#net3}
N -0 -450 0 -440 {
lab=CG}
C {devices/lab_pin.sym} 650 -200 0 1 {name=p10 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 540 -140 0 1 {name=p11 sig_type=std_logic lab=0}
C {symbols/nfet_03v3.sym} 520 -200 0 0 {name=M2
L=0.4u
W=Wn1
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 540 -600 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 380 -200 1 1 {name=p4 sig_type=std_logic lab=b1}
C {symbols/nfet_03v3.sym} 180 -200 0 1 {name=M1
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

.options savecurrents
.save @m.xm1.m0[vth] @m.xm2.m0[vth] @m.xm3.m0[vth] @m.xm4.m0[vth]
.param Wn=0.3u
.param Wn1=0.3u

.control
	*dc V0 2.9 3.2 0.01
	tran 1u 30u
	plot v(s3)
	plot i(Vmeas3) i(Vmeas1) i(Vmeas2)
	plot @m.xm2.m0[vth] @m.xm1.m0[vth]
 	plot v(b1)-@m.xm2.m0[vth] v(b1)-@m.xm1.m0[vth]
	plot v(b1) v(s3)
.endc

.save all
"}
C {devices/lab_pin.sym} 130 -200 0 0 {name=p23 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 160 -560 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 540 -250 0 0 {name=p18 sig_type=std_logic lab=s3}
C {devices/ammeter.sym} 540 -280 0 0 {name=Vmeas2}
C {devices/ammeter.sym} 160 -390 0 0 {name=Vmeas1}
C {devices/isource.sym} 0 -200 0 0 {name=I0 value=2.9u}
C {symbols/pfet_03v3.sym} 140 -480 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 20 -480 0 1 {name=M4
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
C {devices/lab_pin.sym} 0 -140 0 1 {name=p1 sig_type=std_logic lab=0}
C {symbols/pfet_03v3.sym} 520 -480 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 60 -440 2 0 {name=p2 sig_type=std_logic lab=CG}
C {devices/lab_pin.sym} 390 -480 2 1 {name=p3 sig_type=std_logic lab=CG}
C {devices/ammeter.sym} 0 -360 0 0 {name=Vmeas3}
