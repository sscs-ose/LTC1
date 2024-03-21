v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -160 -90 -160 -80 {
lab=#net1}
N 40 -150 40 -80 {
lab=#net2}
N -110 -50 0 -50 {
lab=#net1}
N -170 -50 -160 -50 {
lab=VSS}
N -170 -50 -170 -10 {
lab=VSS}
N -170 -10 -160 -10 {
lab=VSS}
N -160 -20 -160 -10 {
lab=VSS}
N 40 -50 50 -50 {
lab=VSS}
N 50 -50 50 -10 {
lab=VSS}
N 40 -10 50 -10 {
lab=VSS}
N 40 -20 40 -10 {
lab=VSS}
N -160 -90 -110 -90 {
lab=#net1}
N -110 -90 -110 -50 {
lab=#net1}
N -160 -10 -160 10 {
lab=VSS}
N 40 -10 40 10 {
lab=VSS}
N 30 -180 40 -180 {
lab=#net3}
N 30 -220 30 -180 {
lab=#net3}
N 30 -220 40 -220 {
lab=#net3}
N 40 -220 40 -210 {
lab=#net3}
N -160 -180 -150 -180 {
lab=#net3}
N -150 -220 -150 -180 {
lab=#net3}
N -160 -220 -150 -220 {
lab=#net3}
N -160 -220 -160 -210 {
lab=#net3}
N -150 -220 30 -220 {
lab=#net3}
N -160 -150 -160 -90 {
lab=#net1}
N -120 -50 -110 -50 {
lab=#net1}
N -60 -250 -60 -220 {
lab=#net3}
N -60 -330 -60 -310 {
lab=VDD}
N -240 -180 -200 -180 {
lab=Vtot}
N 80 -180 120 -180 {
lab=Vref}
N 40 -110 90 -110 {
lab=#net2}
N 90 -110 120 -110 {
lab=#net2}
N 120 -110 120 -60 {
lab=#net2}
N 120 -60 150 -60 {
lab=#net2}
N 190 -30 190 10 {
lab=VSS}
N 190 -60 200 -60 {
lab=VSS}
N 200 -60 200 -20 {
lab=VSS}
N 190 -20 200 -20 {
lab=VSS}
N 190 -120 190 -90 {
lab=Vp}
N -130 80 -130 110 {
lab=Vtot}
N -130 170 -130 200 {
lab=VSS}
N 40 80 40 110 {
lab=Vref}
N 40 170 40 200 {
lab=VSS}
C {symbols/nfet_03v3.sym} 20 -50 0 0 {name=M52
L=0.56u
W=21.2u
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
C {symbols/nfet_03v3.sym} -140 -50 0 1 {name=M53
L=0.56u
W=21.2u
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
C {symbols/pfet_03v3.sym} -180 -180 0 0 {name=M54
L=0.56u
W=23.4u
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
C {symbols/pfet_03v3.sym} 60 -180 0 1 {name=M55
L=0.56u
W=23.4u
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
C {devices/lab_pin.sym} 40 10 0 1 {name=p104 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 10 0 1 {name=p105 sig_type=std_logic lab=VSS}
C {devices/isource.sym} -60 -280 0 0 {name=I8 value=25u}
C {devices/lab_pin.sym} -60 -320 0 0 {name=p106 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -230 -180 0 0 {name=p107 sig_type=std_logic lab=Vtot}
C {devices/lab_pin.sym} 110 -180 0 1 {name=p108 sig_type=std_logic lab=Vref}
C {symbols/nfet_03v3.sym} 170 -60 0 0 {name=M56
L=0.56u
W=21.2u
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
C {devices/lab_pin.sym} 190 0 0 1 {name=p109 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 190 -110 0 1 {name=p110 sig_type=std_logic lab=Vp}
C {devices/code_shown.sym} 670 -240 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all
dc VDS 0 3 1m VGS 0.95 1.05 20m 
*let gm = @m.xm1.m0[gm]
*plot gm
plot -i(VDS)
*write test_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} 30 -340 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -130 140 0 0 {name=V1 value= "SIN(1.5 1 10k 0 0 0)"}
C {devices/lab_pin.sym} -130 90 0 0 {name=p32 sig_type=std_logic lab=Vtot}
C {devices/lab_pin.sym} -130 190 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 40 140 0 0 {name=V2 value=1.5}
C {devices/lab_pin.sym} 40 90 0 0 {name=p34 sig_type=std_logic lab=Vref}
C {devices/lab_pin.sym} 40 190 0 0 {name=p35 sig_type=std_logic lab=VSS}
