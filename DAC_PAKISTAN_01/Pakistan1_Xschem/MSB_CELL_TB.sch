v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 -250 -240 -220 {
lab=GND}
N -240 -340 -240 -310 {
lab=VSS}
N -180 -340 -180 -310 {
lab=VDD}
N -180 -250 -180 -220 {
lab=VSS}
N -500 -390 -500 -340 {
lab=IM_T}
N -500 -480 -500 -450 {
lab=VDD}
N -500 -280 -500 -240 {
lab=IM}
N -560 -310 -540 -310 {
lab=IM_T}
N -560 -360 -560 -310 {
lab=IM_T}
N -560 -360 -500 -360 {
lab=IM_T}
N -560 -210 -540 -210 {
lab=IM}
N -560 -260 -560 -210 {
lab=IM}
N -560 -260 -500 -260 {
lab=IM}
N -500 -180 -500 -150 {
lab=VSS}
N -500 -310 -480 -310 {
lab=VSS}
N -480 -310 -480 -170 {
lab=VSS}
N -500 -170 -480 -170 {
lab=VSS}
N -500 -210 -480 -210 {
lab=VSS}
N 160 -190 160 -150 {
lab=IM}
N 140 -190 160 -190 {
lab=IM}
N 200 -190 200 -150 {
lab=VDD}
N 200 -190 220 -190 {
lab=VDD}
N 180 -210 180 -150 {
lab=IM_T}
N 280 -100 330 -100 {
lab=IOUT+}
N 280 -80 330 -80 {
lab=IOUT-}
N 180 -20 180 10 {
lab=VSS}
N -140 -110 100 -110 {
lab=Ri-1}
N -50 -90 100 -90 {
lab=Ri}
N 60 -70 100 -70 {
lab=Ci}
N -140 -110 -140 -80 {
lab=Ri-1}
N -140 -20 -140 10 {
lab=VSS}
N -50 -90 -50 -60 {
lab=Ri}
N -50 0 -50 30 {
lab=VSS}
N 60 -70 60 -40 {
lab=Ci}
N 60 20 60 50 {
lab=VSS}
N 330 -100 380 -100 {
lab=IOUT+}
N 330 -20 330 10 {
lab=VDD}
N 330 10 380 10 {
lab=VDD}
N 380 -40 380 10 {
lab=VDD}
C {devices/vsource.sym} -240 -280 0 0 {name=V1 value=0}
C {devices/vsource.sym} -180 -280 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -240 -220 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -240 -330 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -180 -330 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -180 -230 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 0 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 750 -260 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_MSB_Unit_Cell.spice"
.options savecurrents

.control
save all
tran 10n 20.6u 

plot v(IOUT+) v(IOUT-)
*write test_nfet_03v3.raw
.endc
"}
C {devices/isource.sym} -500 -420 0 0 {name=I0 value=80u}
C {symbols/nfet_03v3.sym} -520 -310 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} -520 -210 0 0 {name=M2
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
C {devices/lab_wire.sym} -500 -160 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -500 -480 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -540 -360 0 0 {name=p5 sig_type=std_logic lab=IM_T}
C {devices/lab_wire.sym} -540 -260 0 0 {name=p6 sig_type=std_logic lab=IM}
C {devices/lab_wire.sym} 140 -190 0 0 {name=p7 sig_type=std_logic lab=IM}
C {devices/lab_wire.sym} 180 -210 0 0 {name=p9 sig_type=std_logic lab=IM_T}
C {devices/lab_wire.sym} 220 -190 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 10 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -140 -50 0 0 {name=V4 value="pulse(0 3.3 0 10p 10p 3200n 6400n )"}
C {devices/lab_wire.sym} -140 -100 0 0 {name=p13 sig_type=std_logic lab=Ri-1}
C {devices/lab_wire.sym} -140 0 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -50 -30 0 0 {name=V3 value="pulse(0 3.3 100n 10p 10p 6400n 12800n)"}
C {devices/lab_wire.sym} -50 -80 0 0 {name=p12 sig_type=std_logic lab=Ri}
C {devices/lab_wire.sym} -50 20 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 60 -10 0 0 {name=V5 value="pulse(0 3.3 200 10p 10p 12800n 25600n)"}
C {devices/lab_wire.sym} 60 -60 0 0 {name=p16 sig_type=std_logic lab=Ci}
C {devices/lab_wire.sym} 60 40 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 320 -100 0 0 {name=p18 sig_type=std_logic lab=IOUT+}
C {devices/lab_wire.sym} 320 -80 0 0 {name=p19 sig_type=std_logic lab=IOUT-}
C {devices/res.sym} 330 -50 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 380 -70 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 360 10 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {pex_MSB_Unit_Cell.sym} 140 -80 0 0 {name=x1}
