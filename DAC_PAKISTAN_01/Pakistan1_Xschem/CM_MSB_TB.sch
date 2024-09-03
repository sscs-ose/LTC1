v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -170 260 -170 {
lab=IM_T}
N 200 -150 260 -150 {
lab=IM}
N 560 -170 650 -170 {
lab=OUT}
N 650 -110 690 -110 {
lab=#net1}
N 690 -340 690 -110 {
lab=#net1}
N 100 -340 690 -340 {
lab=#net1}
N 80 -170 200 -170 {
lab=IM_T}
N 150 -150 200 -150 {
lab=IM}
N 100 -340 100 -320 {
lab=#net1}
N -25 -285 50 -285 {
lab=#net2}
N -25 -225 -25 -200 {
lab=IM_T}
N -80 -170 -65 -170 {
lab=IM_T}
N -80 -205 -80 -170 {
lab=IM_T}
N -80 -205 -25 -205 {
lab=IM_T}
N -85 -70 -65 -70 {
lab=IM}
N -85 -110 -85 -70 {
lab=IM}
N -85 -110 -25 -110 {
lab=IM}
N -25 -110 -25 -100 {
lab=IM}
N -25 -110 -25 -100 {
lab=IM}
N -25 -140 -25 -110 {
lab=IM}
N -25 -170 -10 -170 {
lab=GND}
N -10 -170 -10 -70 {
lab=GND}
N -25 -70 -10 -70 {
lab=GND}
N -25 -70 -25 -40 {
lab=GND}
N 80 -210 80 -170 {
lab=IM_T}
N -25 -210 80 -210 {
lab=IM_T}
N 80 -150 150 -150 {
lab=IM}
N 80 -150 80 -115 {
lab=IM}
N -25 -115 80 -115 {
lab=IM}
N 50 -340 50 -285 {}
N 50 -340 100 -340 {}
C {devices/vsource.sym} 100 -290 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 100 -260 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 280 -480 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1030 -320 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_CM_MSB.spice"
.options savecurrents

.control
save all
tran 10n 1u 

plot v(IM_T) v(IM)
*write test_nfet_03v3.raw
.endc
"}
C {devices/res.sym} 650 -140 0 0 {name=R1
value=200
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 210 -170 0 0 {name=p3 sig_type=std_logic lab=IM_T}
C {devices/lab_wire.sym} 210 -150 0 0 {name=p4 sig_type=std_logic lab=IM}
C {devices/lab_wire.sym} 620 -170 0 0 {name=p9 sig_type=std_logic lab=OUT}
C {devices/gnd.sym} 560 -150 0 0 {name=l2 lab=GND}
C {pex_CM_MSB.sym} 410 -160 0 0 {name=x1}
C {devices/isource.sym} -25 -255 0 0 {name=I0 value=80u}
C {symbols/nfet_03v3.sym} -45 -170 0 0 {name=M3
L=0.5u
W=19.2u
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
C {symbols/nfet_03v3.sym} -45 -70 0 0 {name=M4
L=0.5u
W=19.2u
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
C {devices/gnd.sym} -25 -40 0 0 {name=l3 lab=GND}
