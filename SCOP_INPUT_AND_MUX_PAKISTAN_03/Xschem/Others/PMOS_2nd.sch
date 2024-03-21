v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -180 180 -90 {
lab=O2}
N 180 -210 190 -210 {
lab=VDD}
N 190 -250 190 -210 {
lab=VDD}
N 180 -250 190 -250 {
lab=VDD}
N 180 -250 180 -240 {
lab=VDD}
N 180 -280 180 -250 {
lab=VDD}
N 180 -60 190 -60 {
lab=VSS}
N 190 -60 190 -20 {
lab=VSS}
N 180 -20 190 -20 {
lab=VSS}
N 180 -30 180 -20 {
lab=VSS}
N 100 -60 140 -60 {
lab=OUT1}
N 100 -210 140 -210 {
lab=VBP}
N 180 -130 230 -130 {
lab=O2}
N 180 -20 180 0 {
lab=VSS}
N 440 -180 440 -90 {
lab=O1}
N 440 -210 450 -210 {
lab=VDD}
N 450 -250 450 -210 {
lab=VDD}
N 440 -250 450 -250 {
lab=VDD}
N 440 -250 440 -240 {
lab=VDD}
N 440 -280 440 -250 {
lab=VDD}
N 440 -60 450 -60 {
lab=VSS}
N 450 -60 450 -20 {
lab=VSS}
N 440 -20 450 -20 {
lab=VSS}
N 440 -30 440 -20 {
lab=VSS}
N 360 -60 400 -60 {
lab=OUT2}
N 360 -210 400 -210 {
lab=VBP}
N 440 -130 490 -130 {
lab=O1}
N 440 -20 440 0 {
lab=VSS}
N 660 -210 660 -200 {
lab=VBB}
N 660 -120 660 -90 {
lab=VSS}
N 660 -260 660 -210 {
lab=VBB}
N 620 -170 660 -170 {
lab=VSS}
N 620 -170 620 -120 {
lab=VSS}
N 620 -120 660 -120 {
lab=VSS}
N 660 -360 660 -320 {
lab=VDD}
N 700 -170 730 -170 {
lab=VBB}
N 730 -210 730 -170 {
lab=VBB}
N 660 -210 730 -210 {
lab=VBB}
N 660 -140 660 -120 {
lab=VSS}
N 910 -140 920 -140 {
lab=VSS}
N 920 -140 920 -100 {
lab=VSS}
N 910 -100 920 -100 {
lab=VSS}
N 910 -110 910 -100 {
lab=VSS}
N 840 -140 870 -140 {
lab=VBB}
N 910 -190 910 -170 {
lab=VBP}
N 910 -240 920 -240 {
lab=VDD}
N 920 -280 920 -240 {
lab=VDD}
N 910 -280 920 -280 {
lab=VDD}
N 910 -280 910 -270 {
lab=VDD}
N 910 -320 910 -280 {
lab=VDD}
N 850 -240 870 -240 {
lab=VBP}
N 850 -240 850 -190 {
lab=VBP}
N 850 -190 910 -190 {
lab=VBP}
N 910 -100 910 -70 {
lab=VSS}
N 910 -210 910 -190 {
lab=VBP}
N 710 -10 710 20 {
lab=OUT1}
N 710 80 710 110 {
lab=VSS}
N 880 -10 880 20 {
lab=OUT2}
N 880 80 880 110 {
lab=VSS}
N 290 -380 290 -350 {
lab=VDD}
N 290 -470 290 -440 {
lab=VSS}
N 310 70 310 110 {
lab=VSS}
N 310 170 310 190 {
lab=GND}
C {symbols/nfet_03v3.sym} 160 -60 0 0 {name=M48
L=0.56u
W=3.125u
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
C {symbols/pfet_03v3.sym} 160 -210 0 0 {name=M49
L=0.56u
W=13.6u
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
C {devices/lab_pin.sym} 110 -210 0 0 {name=p89 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 180 -270 0 0 {name=p90 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 0 0 0 {name=p91 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 -130 0 1 {name=p96 sig_type=std_logic lab=O2}
C {devices/lab_pin.sym} 110 -60 0 0 {name=p1 sig_type=std_logic lab=OUT1}
C {symbols/nfet_03v3.sym} 420 -60 0 0 {name=M1
L=0.56u
W=3.125u
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
C {symbols/pfet_03v3.sym} 420 -210 0 0 {name=M2
L=0.56u
W=13.6u
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
C {devices/lab_pin.sym} 370 -210 0 0 {name=p2 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 440 -270 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 440 0 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 480 -130 0 1 {name=p5 sig_type=std_logic lab=O1}
C {devices/lab_pin.sym} 370 -60 0 0 {name=p6 sig_type=std_logic lab=OUT2}
C {symbols/nfet_03v3.sym} 680 -170 0 1 {name=M43
L=0.56u
W=0.39u
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
C {devices/isource.sym} 660 -290 0 0 {name=I0 value=25u}
C {devices/lab_pin.sym} 660 -360 0 0 {name=p61 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 660 -100 0 0 {name=p57 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 -190 0 1 {name=p58 sig_type=std_logic lab=VBB}
C {symbols/nfet_03v3.sym} 890 -140 0 0 {name=M59
L=0.56u
W=0.39u
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
C {symbols/pfet_03v3.sym} 890 -240 0 0 {name=M60
L=0.56u
W=1.7u
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
C {devices/lab_pin.sym} 850 -140 0 0 {name=p115 sig_type=std_logic lab=VBB}
C {devices/lab_pin.sym} 850 -220 0 0 {name=p116 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 910 -310 0 1 {name=p117 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 910 -80 0 0 {name=p120 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 710 50 0 0 {name=V1 value= "SIN(1.5 1 10k 0 0 0)"}
C {devices/lab_pin.sym} 710 0 0 0 {name=p75 sig_type=std_logic lab=OUT1}
C {devices/lab_pin.sym} 710 100 0 0 {name=p76 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 880 50 0 0 {name=V2 value="SIN(1.5 1 10k 0 0 180)"}
C {devices/lab_pin.sym} 880 0 0 0 {name=p77 sig_type=std_logic lab=OUT2}
C {devices/lab_pin.sym} 880 100 0 0 {name=p78 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 290 -410 2 0 {name=VDD value=3}
C {devices/lab_pin.sym} 290 -460 0 0 {name=p62 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 290 -360 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 310 140 0 0 {name=VSS value=0}
C {devices/gnd.sym} 310 190 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 310 90 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 1070 -160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1600 0 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all @m.xm23.m0[id] @m.xm48.m0[id] @m.xm25.m0[id] 
save all @m.xm1.m0[id]
dc V1 1.3 1.7 1m
*ac dec 50 1 100e9
let tf = OUT1/IN1
let gain = db(tf)
let phase = (180/pi)*ph(tf)
*plot gain
*plot phase
let id23 = @m.xm23.m0[id]
let gds48 = @m.xm48.m0[id]
let id25 = @m.xm25.m0[id]
let id1 = @m.xm1.m0[id]
*plot gds48
*let gds = @m.xm1.m0[gds]
*plot gds
*plot v(OUT1) V(OUT2) v(Vtot)
plot v(O1) v(O2) 
*write test_nfet_03v3.raw
.endc
"}
