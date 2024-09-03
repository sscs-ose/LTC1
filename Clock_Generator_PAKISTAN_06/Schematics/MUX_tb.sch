v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1920 -820 -1120 -420 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.52768e-08
x2=2.57352e-08
divx=5
subdivx=1
node=clk
color=18
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -1920 -370 -1120 30 {flags=graph
y1=-0.085
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.52768e-08
x2=2.57352e-08
divx=5
subdivx=1
node=out
color=18
dataset=-1
unitx=1
logx=0
logy=0
}
N 390 -280 390 -250 {
lab=GND}
N 390 -370 390 -340 {
lab=VSS}
N 450 -370 450 -340 {
lab=VDD}
N 450 -280 450 -250 {
lab=VSS}
N 520 -370 520 -340 {
lab=CLK}
N 520 -280 520 -250 {
lab=VSS}
N 740 340 820 340 {
lab=VSS}
N 820 340 820 520 {
lab=VSS}
N 740 520 820 520 {
lab=VSS}
N 650 340 680 340 {
lab=OUT}
N 650 340 650 520 {
lab=OUT}
N 650 520 680 520 {
lab=OUT}
N 400 250 710 250 {
lab=#net1}
N 710 250 710 300 {
lab=#net1}
N 130 240 210 240 {
lab=CLK}
N 730 760 810 760 {
lab=VDD}
N 810 760 810 940 {
lab=VDD}
N 730 940 810 940 {
lab=VDD}
N 640 760 670 760 {
lab=OUT}
N 640 760 640 940 {
lab=OUT}
N 640 940 670 940 {
lab=OUT}
N 460 250 460 1030 {
lab=#net1}
N 460 1030 700 1030 {
lab=#net1}
N 700 980 700 1030 {
lab=#net1}
N 170 240 170 630 {
lab=CLK}
N 170 630 710 630 {
lab=CLK}
N 710 560 710 630 {
lab=CLK}
N 700 630 700 720 {
lab=CLK}
N 580 480 650 480 {
lab=OUT}
N 580 480 580 840 {
lab=OUT}
N 580 840 640 840 {
lab=OUT}
N 110 750 580 750 {
lab=OUT}
N 270 110 270 180 {
lab=VDD}
N 270 320 270 400 {
lab=VSS}
N 710 340 710 390 {
lab=VDD}
N 710 460 710 520 {
lab=VSS}
N 700 760 700 820 {
lab=VDD}
N 700 890 700 940 {
lab=VSS}
C {devices/code_shown.sym} -100 -510 0 1 {name=NGSPICE1 only_toplevel=true
value="
*.option savecurrents
.control
save all

tran 10n 100n
set xbrushwidth=2
set xfontsize=3
plot v(CLK) v(OUT)+3.5
plot v(Q1)
plot v(Q2)
plot v(Q3) v(Q2) v(Q1)
write MUX_tb.raw
*write test_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} -680 -100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 390 -310 0 0 {name=V1 value=0}
C {devices/vsource.sym} 450 -310 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 390 -250 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 390 -360 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 450 -360 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 520 -310 0 0 {name=V3 value="pulse(0 3.3 0 10p 10p 5n 10n)"}
C {devices/lab_wire.sym} 520 -360 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 450 -260 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 -260 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {inverter.sym} 360 260 0 0 {name=x2}
C {symbols/pfet_03v3.sym} 710 320 1 0 {name=M1
L=0.56u
W=2.24u
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
C {symbols/nfet_03v3.sym} 710 540 3 0 {name=M2
L=0.56u
W=2.24u
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
C {symbols/pfet_03v3.sym} 700 740 1 0 {name=M3
L=0.56u
W=2.24u
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
C {symbols/nfet_03v3.sym} 700 960 3 0 {name=M4
L=0.56u
W=2.24u
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
C {devices/lab_wire.sym} 270 150 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 270 380 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 750 0 0 {name=p14 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 140 240 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 820 440 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 810 850 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 710 480 0 0 {name=p18 sig_type=std_logic lab=VSS
L=0.56u
W=2.24u}
C {devices/lab_wire.sym} 710 380 0 0 {name=p19 sig_type=std_logic lab=VDD
L=0.56u
W=2.24u}
C {devices/lab_wire.sym} 700 810 0 0 {name=p20 sig_type=std_logic lab=VDD
L=0.56u
W=2.24u}
C {devices/lab_wire.sym} 700 910 0 0 {name=p21 sig_type=std_logic lab=VSS
L=0.56u
W=2.24u}
