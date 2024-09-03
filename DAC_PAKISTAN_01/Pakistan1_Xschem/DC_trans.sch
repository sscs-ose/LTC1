v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -140 180 -50 {
lab=GND}
N 60 -170 60 -140 {
lab=#net1}
N 60 -170 140 -170 {
lab=#net1}
N 180 -250 180 -200 {
lab=#net2}
N 180 -250 340 -250 {
lab=#net2}
N 340 -250 340 -230 {
lab=#net2}
N 340 -170 340 -90 {
lab=GND}
N 180 -80 340 -80 {
lab=GND}
N 60 -80 180 -80 {
lab=GND}
N 340 -90 340 -80 {
lab=GND}
N 180 -170 200 -170 {
lab=GND}
N 200 -170 200 -120 {
lab=GND}
N 180 -120 200 -120 {
lab=GND}
N 1070 -390 1070 -280 {
lab=GND}
N 1070 -390 1200 -390 {
lab=GND}
N 1200 -390 1200 -350 {
lab=GND}
N 920 -250 920 -220 {
lab=#net3}
N 920 -250 1030 -250 {
lab=#net3}
N 920 -160 920 -100 {
lab=GND}
N 1070 -120 1070 -90 {
lab=GND}
N 920 -100 1070 -100 {
lab=GND}
N 1070 -220 1070 -180 {
lab=#net4}
N 1070 -250 1100 -250 {
lab=GND}
N 1100 -320 1100 -250 {
lab=GND}
N 1070 -320 1100 -320 {
lab=GND}
C {symbols/nfet_03v3.sym} 160 -170 0 0 {name=M1
L=0.56u
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
C {devices/vsource.sym} 60 -110 0 0 {name=V1 value=1.2}
C {devices/vsource.sym} 340 -200 0 0 {name=VDS value=DC\{vds\}}
C {devices/gnd.sym} 180 -50 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 20 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/pfet_03v3.sym} 1050 -250 0 0 {name=M2
L=0.28u
W=50u
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
C {devices/gnd.sym} 1200 -350 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 920 -190 0 0 {name=V3 value=-1}
C {devices/gnd.sym} 1070 -90 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1070 -150 0 0 {name=V4 value=-1.5}
C {devices/netlist_not_shown.sym} 880 -590 0 1 {name=simulation only_toplevel=false 
value="

*Parameters
.param vds = 3.3

.options TEMP = 50.0


*Data to save
.save all
+ @M.xm1.m0[id]
+ @M.xm2.m0[id]
+ @M.xm1.m0[vds]
+ @M.xm1.m0[vgs]
+ @M.xm1.m0[vth]
+ @M.xm1.m0[cgg]
+ @M.xm1.m0[cgs]
+ @M.xm1.m0[gds]
+ @M.xm1.m0[gm]

*Simulation
.control

dc VDS 0 3.3 0.01
setplot dc1
*plot @M.xm1.m0[id] ylabel Id xlabel Vds
set filetype = binary
write DC_trans.raw

reset
dc V1 0 3.3 0.01
setplot dc2
*plot @M.xm1.m0[id] ylabel Id xlabel Vgs
set filetype = binary
write DC_trans2.raw

reset
op
save all
set filetype = binary
write nmos_char_dc.raw

.endc
.end
"}
