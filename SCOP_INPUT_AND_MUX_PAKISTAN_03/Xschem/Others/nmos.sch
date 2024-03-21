v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 80 120 80 {
lab=#net1}
N 100 110 100 140 {
lab=#net1}
N 120 80 120 110 {
lab=#net1}
N 120 110 120 120 {
lab=#net1}
N 100 120 120 120 {
lab=#net1}
N 10 80 10 100 {
lab=#net2}
N 10 80 60 80 {
lab=#net2}
N 220 20 220 50 {
lab=#net3}
N 100 20 220 20 {
lab=#net3}
N 100 20 100 50 {
lab=#net3}
N 100 180 220 180 {
lab=#net1}
N 100 140 100 160 {
lab=#net1}
N 10 160 10 180 {
lab=#net1}
N 10 180 100 180 {
lab=#net1}
N 100 160 100 180 {
lab=#net1}
N 220 160 220 180 {
lab=#net1}
N 220 130 220 160 {
lab=#net1}
N 220 50 220 70 {
lab=#net3}
C {symbols/nfet_03v3.sym} 80 80 0 0 {name=M1
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
model=nfet_03v3
spiceprefix=X
}
C {devices/vsource.sym} 220 100 0 0 {name=VDS value=0.4}
C {devices/vsource.sym} 10 130 0 0 {name=VGS value=1.5}
C {devices/code_shown.sym} 690 10 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all @m.xm1.m0[gm]  @m.xm1.m0[gds]
dc VDS 0 3.0 1m
let gm = @m.xm1.m0[gm]
*plot gm
let gds = @m.xm1.m0[gds]
*plot gds
plot -i(VDS)
*write test_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} 0 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
