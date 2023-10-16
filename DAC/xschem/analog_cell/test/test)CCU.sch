v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 650 -670 1010 -670 {lab=OUT+}
N 1110 -810 1110 -780 {
lab=VDD}
N 1310 -810 1310 -780 {
lab=VDD}
N 550 -670 550 -380 {
lab=OUT+}
N 550 -670 650 -670 {
lab=OUT+}
N 550 -340 600 -340 {
lab=OUT-}
N 600 -610 600 -340 {
lab=OUT-}
N 600 -610 790 -610 {
lab=OUT-}
N 790 -610 1010 -610 {
lab=OUT-}
N 120 -340 410 -340 {
lab=#net1}
N 70 -420 70 -370 {
lab=#net1}
N 70 -310 70 -280 {
lab=0}
N 30 -340 70 -340 {
lab=0}
N 70 -390 120 -390 {
lab=#net1}
N 120 -390 120 -340 {
lab=#net1}
N 110 -340 120 -340 {
lab=#net1}
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

.options savecurrents

.control
	*dc I0 1u 4u 0.1u
	tran 0.1u 100u

	*plot v(d3)
 	*plot v(b2)-v(s3)-@m.xm3.m0[vth] v(b1)-@m.xm4.m0[vth]
	*plot @m.xm3.m0[vth] @m.xm4.m0[vth]
	plot V(IN+) V(IN-)
	plot i(Vmeas1) i(Vmeas2)

.endc

.save all
"}
C {devices/lab_pin.sym} 1010 -670 0 1 {name=p7 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 1010 -610 0 1 {name=p5 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 1110 -660 0 1 {name=p9 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 1310 -660 0 1 {name=p14 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 1110 -810 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1310 -810 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/res.sym} 1110 -750 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1310 -750 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/ammeter.sym} 1110 -690 0 0 {name=Vmeas1}
C {devices/ammeter.sym} 1310 -690 0 0 {name=Vmeas2}
C {devices/vsource.sym} 1150 -320 0 0 {name=VIN1 *value=1
value="pulse 0 3.3 0 1u 1u 8u 20u"}
C {devices/vsource.sym} 1150 -200 0 0 {name=VIN2 *value=1
value="pulse 0 3.3 10u 1u 1u 8u 20u"}
C {devices/lab_pin.sym} 1150 -350 0 0 {name=p21 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} 1150 -230 0 1 {name=p24 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} 1150 -290 0 1 {name=p25 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1150 -170 0 1 {name=p26 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 410 -380 0 0 {name=p1 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} 410 -360 0 0 {name=p3 sig_type=std_logic lab=IN-}
C {devices/vsource.sym} 770 -170 0 0 {name=VDD2 value=3}
C {devices/lab_pin.sym} 770 -140 0 1 {name=p6 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 770 -200 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 850 -170 0 0 {name=VSS1
value=0}
C {devices/lab_pin.sym} 850 -140 0 1 {name=p8 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 850 -200 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -430 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 460 -290 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {designs/analog_cell/current_unit.sym} 480 -360 0 0 {name=x1 Mn=1 Wp=0.3u Wn=0.3u}
C {devices/isource.sym} 70 -450 0 0 {name=I1 value=1.9u}
C {devices/lab_pin.sym} 70 -480 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 90 -340 0 1 {name=M9
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
C {devices/lab_pin.sym} 70 -280 0 1 {name=p22 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 30 -340 0 0 {name=p23 sig_type=std_logic lab=0}
