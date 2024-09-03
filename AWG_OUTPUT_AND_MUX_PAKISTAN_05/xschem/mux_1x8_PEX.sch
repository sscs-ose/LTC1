v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -740 -30 -720 {
lab=GND}
N 70 -740 70 -720 {
lab=VSS}
N 70 -820 70 -800 {
lab=VDD}
N -30 -840 -30 -800 {
lab=VSS}
N -700 -820 -700 -760 {
lab=VDD}
N -700 -500 -700 -440 {
lab=VSS}
N -910 -630 -800 -630 {
lab=Vout}
N -590 -730 -530 -730 {
lab=A0}
N -590 -710 -530 -710 {
lab=A1}
N -590 -690 -530 -690 {
lab=A2}
N -590 -670 -530 -670 {
lab=A3}
N -590 -650 -530 -650 {
lab=A4}
N -590 -630 -530 -630 {
lab=A5}
N -590 -610 -530 -610 {
lab=A6}
N -590 -590 -530 -590 {
lab=A7}
N -590 -570 -530 -570 {
lab=S0}
N -590 -550 -530 -550 {
lab=S1}
N -590 -530 -530 -530 {
lab=S2}
N -270 -620 -270 -600 {
lab=A0}
N -270 -540 -270 -510 {
lab=VSS}
N -180 -610 -180 -590 {
lab=A1}
N -180 -530 -180 -500 {
lab=VSS}
N -100 -610 -100 -590 {
lab=A2}
N -100 -530 -100 -500 {
lab=VSS}
N -40 -610 -40 -590 {
lab=A3}
N -40 -530 -40 -500 {
lab=VSS}
N 40 -610 40 -590 {
lab=A4}
N 40 -530 40 -500 {
lab=VSS}
N 100 -600 100 -580 {
lab=A5}
N 100 -520 100 -490 {
lab=VSS}
N 160 -600 160 -580 {
lab=A6}
N 160 -520 160 -490 {
lab=VSS}
N 240 -600 240 -580 {
lab=A7}
N 240 -520 240 -490 {
lab=VSS}
N -260 -470 -260 -450 {
lab=S0}
N -260 -390 -260 -360 {
lab=VSS}
N -50 -470 -50 -450 {
lab=S1}
N -50 -390 -50 -360 {
lab=VSS}
N 150 -470 150 -450 {
lab=S2}
N 150 -390 150 -360 {
lab=VSS}
N -910 -570 -910 -490 {
lab=VSS}
N -700 -400 -700 -340 {
lab=VDD}
N -700 -80 -700 -20 {
lab=VSS}
N -910 -210 -800 -210 {
lab=V1}
N -590 -310 -530 -310 {
lab=A0}
N -590 -290 -530 -290 {
lab=A1}
N -590 -270 -530 -270 {
lab=A2}
N -590 -250 -530 -250 {
lab=A3}
N -590 -230 -530 -230 {
lab=A4}
N -590 -210 -530 -210 {
lab=A5}
N -590 -190 -530 -190 {
lab=A6}
N -590 -170 -530 -170 {
lab=A7}
N -590 -150 -530 -150 {
lab=S0}
N -590 -130 -530 -130 {
lab=S1}
N -590 -110 -530 -110 {
lab=S2}
N -910 -150 -910 -70 {
lab=VSS}
C {devices/vsource.sym} -30 -770 0 0 {name=V4 value=0}
C {devices/gnd.sym} -30 -720 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 70 -770 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} 70 -820 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -30 -820 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -700 -810 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -700 -450 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 70 -730 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -270 -570 0 0 {name=V2 value=50m}
C {devices/lab_wire.sym} -270 -520 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -540 -730 0 0 {name=p7 sig_type=std_logic lab=A0}
C {devices/lab_wire.sym} -540 -710 0 0 {name=p8 sig_type=std_logic lab=A1}
C {devices/lab_wire.sym} -540 -690 0 0 {name=p9 sig_type=std_logic lab=A2}
C {devices/lab_wire.sym} -540 -670 0 0 {name=p10 sig_type=std_logic lab=A3}
C {devices/lab_wire.sym} -540 -650 0 0 {name=p11 sig_type=std_logic lab=A4}
C {devices/lab_wire.sym} -540 -630 0 0 {name=p12 sig_type=std_logic lab=A5}
C {devices/lab_wire.sym} -540 -590 0 0 {name=p14 sig_type=std_logic lab=A7}
C {devices/lab_wire.sym} -540 -570 0 0 {name=p15 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} -540 -550 0 0 {name=p16 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} -540 -530 0 0 {name=p17 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} -540 -610 0 0 {name=p18 sig_type=std_logic lab=A6}
C {devices/lab_wire.sym} -270 -610 0 0 {name=p2 sig_type=std_logic lab=A0}
C {devices/vsource.sym} -180 -560 0 0 {name=V3 value=100m}
C {devices/lab_wire.sym} -180 -510 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -180 -600 0 0 {name=p19 sig_type=std_logic lab=A1}
C {devices/vsource.sym} -100 -560 0 0 {name=V6 value=200m}
C {devices/lab_wire.sym} -100 -510 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -100 -600 0 0 {name=p21 sig_type=std_logic lab=A2}
C {devices/vsource.sym} -40 -560 0 0 {name=V7 value=300m}
C {devices/lab_wire.sym} -40 -510 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -40 -600 0 0 {name=p23 sig_type=std_logic lab=A3}
C {devices/vsource.sym} 40 -560 0 0 {name=V8 value=400m}
C {devices/lab_wire.sym} 40 -510 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 40 -600 0 0 {name=p25 sig_type=std_logic lab=A4}
C {devices/vsource.sym} 100 -550 0 0 {name=V9 value=500m}
C {devices/lab_wire.sym} 100 -500 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 100 -590 0 0 {name=p27 sig_type=std_logic lab=A5}
C {devices/vsource.sym} 160 -550 0 0 {name=V10 value=600m}
C {devices/lab_wire.sym} 160 -500 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 240 -550 0 0 {name=V11 value=700m}
C {devices/lab_wire.sym} 240 -500 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -590 0 0 {name=p33 sig_type=std_logic lab=A7}
C {devices/lab_wire.sym} 160 -590 0 0 {name=p31 sig_type=std_logic lab=A6}
C {devices/vsource.sym} -260 -420 0 0 {name=V12 value="(pulse(0 3.3 0 10p 10p 4u 8u))"}
C {devices/lab_wire.sym} -260 -370 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -260 -460 0 0 {name=p35 sig_type=std_logic lab=S0}
C {devices/vsource.sym} -50 -420 0 0 {name=V13 value="(pulse(0 3.3 0 10p 10p 2u 4u))"}
C {devices/lab_wire.sym} -50 -370 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -50 -460 0 0 {name=p37 sig_type=std_logic lab=S1}
C {devices/vsource.sym} 150 -420 0 0 {name=V14 value="(pulse(0 3.3 0 10p 10p 1u 2u))"}
C {devices/lab_wire.sym} 150 -370 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 150 -460 0 0 {name=p39 sig_type=std_logic lab=S2}
C {devices/code_shown.sym} -440 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -1180 -650 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_MUX_1x8.spice"
.control
*set color0=white
*set color1=black
save all

tran 1u 16u
plot v(S0) v(S1) v(S2)
plot v(A0) v(A1) v(A2)
Plot v(Vout) v(V1)
.endc
"}
C {devices/lab_wire.sym} -890 -630 0 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/capa.sym} -910 -600 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -910 -520 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {pex_MUX_1x8.sym} -930 -580 0 0 {name=x1}
C {mux_1.sym} -930 -160 0 0 {name=x2}
C {devices/lab_wire.sym} -700 -390 0 0 {name=p41 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -700 -30 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -540 -310 0 0 {name=p43 sig_type=std_logic lab=A0}
C {devices/lab_wire.sym} -540 -290 0 0 {name=p44 sig_type=std_logic lab=A1}
C {devices/lab_wire.sym} -540 -270 0 0 {name=p45 sig_type=std_logic lab=A2}
C {devices/lab_wire.sym} -540 -250 0 0 {name=p46 sig_type=std_logic lab=A3}
C {devices/lab_wire.sym} -540 -230 0 0 {name=p47 sig_type=std_logic lab=A4}
C {devices/lab_wire.sym} -540 -210 0 0 {name=p48 sig_type=std_logic lab=A5}
C {devices/lab_wire.sym} -540 -170 0 0 {name=p49 sig_type=std_logic lab=A7}
C {devices/lab_wire.sym} -540 -150 0 0 {name=p50 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} -540 -130 0 0 {name=p51 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} -540 -110 0 0 {name=p52 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} -540 -190 0 0 {name=p53 sig_type=std_logic lab=A6}
C {devices/lab_wire.sym} -890 -210 0 0 {name=p54 sig_type=std_logic lab=V1}
C {devices/capa.sym} -910 -180 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -910 -100 0 0 {name=p55 sig_type=std_logic lab=VSS}
