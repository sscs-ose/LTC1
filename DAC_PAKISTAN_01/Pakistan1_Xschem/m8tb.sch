v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -310 280 -265 {
lab=#net1}
N 180 -230 240 -230 {
lab=#net2}
N 280 -230 295 -230 {
lab=GND}
N 295 -230 295 -195 {
lab=GND}
N 280 -195 295 -195 {
lab=GND}
N -60 -180 -60 -135 {
lab=#net3}
N -160 -100 -100 -100 {
lab=#net4}
N -60 -100 -45 -100 {
lab=GND}
N -45 -100 -45 -65 {
lab=GND}
N -60 -65 -45 -65 {
lab=GND}
N -60 -135 -60 -130 {
lab=#net3}
N -60 -70 -60 -65 {
lab=GND}
N -70 -560 -70 -515 {
lab=#net5}
N -170 -480 -110 -480 {
lab=#net6}
N -70 -480 -55 -480 {
lab=GND}
N -55 -480 -55 -445 {
lab=GND}
N -70 -445 -55 -445 {
lab=GND}
N 110 -550 110 -505 {
lab=#net7}
N 10 -470 70 -470 {
lab=#net8}
N 110 -470 125 -470 {
lab=GND}
N 125 -470 125 -435 {
lab=GND}
N 110 -435 125 -435 {
lab=GND}
N 290 -550 290 -505 {
lab=#net9}
N 190 -470 250 -470 {
lab=#net10}
N 290 -470 305 -470 {
lab=GND}
N 305 -470 305 -435 {
lab=GND}
N 290 -435 305 -435 {
lab=GND}
N 460 -550 460 -505 {
lab=#net11}
N 360 -470 420 -470 {
lab=#net12}
N 460 -470 475 -470 {
lab=GND}
N 475 -470 475 -435 {
lab=GND}
N 460 -435 475 -435 {
lab=GND}
N 660 -550 660 -505 {
lab=#net13}
N 560 -470 620 -470 {
lab=#net14}
N 660 -470 675 -470 {
lab=GND}
N 675 -470 675 -435 {
lab=GND}
N 660 -435 675 -435 {
lab=GND}
N -270 -570 -270 -525 {
lab=#net15}
N -370 -490 -310 -490 {
lab=#net16}
N -270 -490 -255 -490 {
lab=GND}
N -255 -490 -255 -455 {
lab=GND}
N -270 -455 -255 -455 {
lab=GND}
C {devices/vsource.sym} 180 -200 0 0 {name=V1 value=3}
C {devices/vsource.sym} 280 -340 2 0 {name=V2 value=3}
C {devices/gnd.sym} 180 -170 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 280 -195 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 280 -370 2 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -290 -355 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 955 -340 0 1 {name=NGSPICE only_toplevel=true
value="
*.options savecurrents
.control
save all
op

tran 1000p 1u
plot i(V2) i(V4) i(V16) i(V6) i(V8) i(V10) i(V12) i(V14)
*write DAC_12Bit_TB_v1.raw
.endc
"}
C {devices/vsource.sym} -160 -70 0 0 {name=V3 value=3}
C {devices/vsource.sym} -60 -210 2 0 {name=V4 value=3}
C {devices/gnd.sym} -160 -40 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -60 -65 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -60 -240 2 0 {name=l6 lab=GND}
C {symbols/nfet_03v3.sym} -80 -100 0 0 {name=M1
L=0.28u
W=0.22u
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
C {nfet_03V3_m128.sym} 280 -230 0 0 {name=x1}
C {devices/vsource.sym} -170 -450 0 0 {name=V5 value=3}
C {devices/vsource.sym} -70 -590 2 0 {name=V6 value=3}
C {devices/gnd.sym} -170 -420 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -70 -445 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -70 -620 2 0 {name=l9 lab=GND}
C {devices/vsource.sym} 10 -440 0 0 {name=V7 value=3}
C {devices/vsource.sym} 110 -580 2 0 {name=V8 value=3}
C {devices/gnd.sym} 10 -410 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 110 -435 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 110 -610 2 0 {name=l12 lab=GND}
C {devices/vsource.sym} 190 -440 0 0 {name=V9 value=3}
C {devices/vsource.sym} 290 -580 2 0 {name=V10 value=3}
C {devices/gnd.sym} 190 -410 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 290 -435 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 290 -610 2 0 {name=l15 lab=GND}
C {devices/vsource.sym} 360 -440 0 0 {name=V11 value=3}
C {devices/vsource.sym} 460 -580 2 0 {name=V12 value=3}
C {devices/gnd.sym} 360 -410 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 460 -435 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 460 -610 2 0 {name=l18 lab=GND}
C {devices/vsource.sym} 560 -440 0 0 {name=V13 value=3}
C {devices/vsource.sym} 660 -580 2 0 {name=V14 value=3}
C {devices/gnd.sym} 560 -410 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 660 -435 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 660 -610 2 0 {name=l21 lab=GND}
C {nfet_03V3_m2.sym} -135 -405 0 0 {name=x2}
C {nfet_03V3_m4.sym} 35 -350 0 0 {name=x3}
C {nfet_03V3_m8.sym} 230 -400 0 0 {name=x4}
C {nfet_03V3_m16.sym} 385 -380 0 0 {name=x5}
C {nfet_03V3_m32.sym} 660 -470 0 0 {name=x6}
C {nfet_03V3_m64.sym} -270 -490 0 0 {name=x7}
C {devices/vsource.sym} -370 -460 0 0 {name=V15 value=3}
C {devices/vsource.sym} -270 -600 2 0 {name=V16 value=3}
C {devices/gnd.sym} -370 -430 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} -270 -455 0 0 {name=l23 lab=GND}
C {devices/gnd.sym} -270 -630 2 0 {name=l24 lab=GND}
