v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -10 -240 -10 {
lab=#net1}
N -140 -100 -140 -50 {
lab=#net1}
N -260 -100 -140 -100 {
lab=#net1}
N -260 -50 -260 -40 {
lab=#net1}
N -260 60 -140 60 {
lab=#net2}
N -140 10 -140 60 {
lab=#net2}
N -240 -50 -240 -10 {
lab=#net1}
N -260 -50 -240 -50 {
lab=#net1}
N -260 -100 -260 -50 {
lab=#net1}
N -340 -20 -340 -10 {
lab=#net3}
N -340 -10 -300 -10 {
lab=#net3}
N -340 -100 -340 -80 {
lab=#net1}
N -340 -100 -260 -100 {
lab=#net1}
N -260 20 -260 60 {
lab=#net2}
C {devices/vsource.sym} -140 -20 0 0 {name=VDS value=0.3}
C {devices/vsource.sym} -340 -50 0 1 {name=VGS value=1.5}
C {devices/code_shown.sym} 410 -120 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all @m.xm1.m0[gm] @m.xm1.m0[gds]
dc VDS 0 3 1m
let gm = @m.xm1.m0[gm]
*plot gm
let gds = @m.xm1.m0[gds]
*plot gds
plot -i(VDS)
*write test_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} -360 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/pfet_03v3.sym} -280 -10 0 0 {name=M1
L=0.28u
W=5u
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
