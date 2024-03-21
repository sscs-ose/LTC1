v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 635 -285 805 -285 {
lab=#net1}
N 730 -265 805 -265 {
lab=#net2}
N 540 -415 870 -415 {
lab=VDD}
N 870 -415 875 -415 {
lab=VDD}
N 875 -415 875 -325 {
lab=VDD}
N 1005 -265 1070 -265 {
lab=G3_1}
N 1005 -365 1005 -285 {
lab=G3_2}
N 1005 -365 1070 -365 {
lab=G3_2}
N 1110 -365 1120 -365 {
lab=GND}
N 1120 -365 1120 -265 {
lab=GND}
N 1110 -265 1120 -265 {
lab=GND}
N 1110 -265 1110 -235 {
lab=GND}
N 1110 -235 1110 -205 {
lab=GND}
N 1110 -335 1110 -295 {
lab=#net3}
N 875 -395 935 -395 {
lab=VDD}
N 995 -395 1110 -395 {
lab=#net4}
N 465 -415 540 -415 {
lab=VDD}
N 465 -355 465 -330 {
lab=#net1}
N 410 -300 425 -300 {
lab=#net1}
N 410 -335 410 -300 {
lab=#net1}
N 410 -335 465 -335 {
lab=#net1}
N 405 -200 425 -200 {
lab=#net2}
N 405 -240 405 -200 {
lab=#net2}
N 405 -240 465 -240 {
lab=#net2}
N 465 -240 465 -230 {
lab=#net2}
N 465 -240 465 -230 {
lab=#net2}
N 465 -270 465 -240 {
lab=#net2}
N 465 -300 480 -300 {
lab=GND}
N 480 -300 480 -200 {
lab=GND}
N 465 -200 480 -200 {
lab=GND}
N 465 -200 465 -170 {
lab=GND}
N 410 -285 635 -285 {
lab=#net1}
N 410 -300 410 -285 {
lab=#net1}
N 405 -265 730 -265 {
lab=#net2}
N 405 -265 405 -240 {
lab=#net2}
C {devices/vsource.sym} 540 -385 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 540 -355 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 735 -540 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1580 -420 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_CM_32.spice"
.options savecurrents

.control
save all
tran 10n 1u 

plot v(G3_2) v(G3_1) 
*write test_nfet_03v3.raw
.endc
"}
C {pex_CM_32.sym} 885 -245 0 0 {name=x1}
C {devices/gnd.sym} 935 -205 0 0 {name=l4 lab=GND}
C {symbols/nfet_03v3.sym} 1090 -365 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 1090 -265 0 0 {name=M2
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
C {devices/res.sym} 965 -395 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1050 -365 0 0 {name=p3 sig_type=std_logic lab=G3_2}
C {devices/lab_pin.sym} 1050 -265 0 0 {name=p4 sig_type=std_logic lab=G3_1}
C {devices/lab_pin.sym} 790 -415 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1110 -205 0 0 {name=l5 lab=GND}
C {devices/isource.sym} 465 -385 0 0 {name=I0 value=20u}
C {symbols/nfet_03v3.sym} 445 -300 0 0 {name=M3
L=0.5u
W=4.8u
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
C {symbols/nfet_03v3.sym} 445 -200 0 0 {name=M4
L=0.5u
W=4.8u
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
C {devices/gnd.sym} 465 -170 0 0 {name=l2 lab=GND}
