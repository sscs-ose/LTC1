v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -680 -900 -680 -880 {
lab=GND}
N -580 -900 -580 -880 {
lab=VSS}
N -580 -980 -580 -960 {
lab=VDD}
N -680 -1000 -680 -960 {
lab=VSS}
N -1310 -1040 -1310 -980 {
lab=VDD}
N -1320 -720 -1320 -660 {
lab=VSS}
N -1520 -870 -1410 -870 {
lab=Vout}
N -1240 -890 -1180 -890 {
lab=A0}
N -1240 -870 -1180 -870 {
lab=A1}
N -1240 -850 -1180 -850 {
lab=A2}
N -1240 -830 -1180 -830 {
lab=A3}
N -1240 -810 -1180 -810 {
lab=A4}
N -1240 -790 -1180 -790 {
lab=A5}
N -1240 -770 -1180 -770 {
lab=A6}
N -1240 -750 -1180 -750 {
lab=A7}
N -1460 -820 -1400 -820 {
lab=S0}
N -1460 -800 -1400 -800 {
lab=S1}
N -1460 -780 -1400 -780 {
lab=S2}
N -920 -780 -920 -760 {
lab=A0}
N -920 -700 -920 -670 {
lab=VSS}
N -830 -770 -830 -750 {
lab=A1}
N -830 -690 -830 -660 {
lab=VSS}
N -750 -770 -750 -750 {
lab=A2}
N -750 -690 -750 -660 {
lab=VSS}
N -690 -770 -690 -750 {
lab=A3}
N -690 -690 -690 -660 {
lab=VSS}
N -610 -770 -610 -750 {
lab=A4}
N -610 -690 -610 -660 {
lab=VSS}
N -550 -760 -550 -740 {
lab=A5}
N -550 -680 -550 -650 {
lab=VSS}
N -490 -760 -490 -740 {
lab=A6}
N -490 -680 -490 -650 {
lab=VSS}
N -410 -760 -410 -740 {
lab=A7}
N -410 -680 -410 -650 {
lab=VSS}
N -910 -630 -910 -610 {
lab=#net1}
N -910 -550 -910 -520 {
lab=VSS}
N -700 -630 -700 -610 {
lab=#net2}
N -700 -550 -700 -520 {
lab=VSS}
N -500 -630 -500 -610 {
lab=#net3}
N -500 -550 -500 -520 {
lab=VSS}
N -1520 -810 -1520 -730 {
lab=VSS}
N -1410 -870 -1400 -870 {
lab=Vout}
N -1460 -760 -1400 -760 {
lab=ENA}
N -1060 -770 -1060 -750 {
lab=ENA}
N -1060 -690 -1060 -660 {
lab=VSS}
N -1060 -590 -1060 -570 {
lab=S2}
N -1060 -510 -1060 -480 {
lab=VSS}
N -1140 -590 -1140 -570 {
lab=S1}
N -1140 -510 -1140 -480 {
lab=VSS}
N -1230 -590 -1230 -570 {
lab=S0}
N -1230 -510 -1230 -480 {
lab=VSS}
C {devices/vsource.sym} -680 -930 0 0 {name=V4 value=0}
C {devices/gnd.sym} -680 -880 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -580 -930 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} -580 -980 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -680 -980 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1310 -1010 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1320 -670 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -580 -890 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -920 -730 0 0 {name=V2 value=50m}
C {devices/lab_wire.sym} -920 -680 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1190 -890 0 0 {name=p7 sig_type=std_logic lab=A0}
C {devices/lab_wire.sym} -1190 -870 0 0 {name=p8 sig_type=std_logic lab=A1}
C {devices/lab_wire.sym} -1190 -850 0 0 {name=p9 sig_type=std_logic lab=A2}
C {devices/lab_wire.sym} -1190 -830 0 0 {name=p10 sig_type=std_logic lab=A3}
C {devices/lab_wire.sym} -1190 -810 0 0 {name=p11 sig_type=std_logic lab=A4}
C {devices/lab_wire.sym} -1190 -790 0 0 {name=p12 sig_type=std_logic lab=A5}
C {devices/lab_wire.sym} -1190 -750 0 0 {name=p14 sig_type=std_logic lab=A7}
C {devices/lab_wire.sym} -1410 -820 0 0 {name=p15 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} -1410 -800 0 0 {name=p16 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} -1410 -780 0 0 {name=p17 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} -1190 -770 0 0 {name=p18 sig_type=std_logic lab=A6}
C {devices/lab_wire.sym} -920 -770 0 0 {name=p2 sig_type=std_logic lab=A0}
C {devices/vsource.sym} -830 -720 0 0 {name=V3 value=100m}
C {devices/lab_wire.sym} -830 -670 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -830 -760 0 0 {name=p19 sig_type=std_logic lab=A1}
C {devices/vsource.sym} -750 -720 0 0 {name=V6 value=200m}
C {devices/lab_wire.sym} -750 -670 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -750 -760 0 0 {name=p21 sig_type=std_logic lab=A2}
C {devices/vsource.sym} -690 -720 0 0 {name=V7 value=300m}
C {devices/lab_wire.sym} -690 -670 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -690 -760 0 0 {name=p23 sig_type=std_logic lab=A3}
C {devices/vsource.sym} -610 -720 0 0 {name=V8 value=400m}
C {devices/lab_wire.sym} -610 -670 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -610 -760 0 0 {name=p25 sig_type=std_logic lab=A4}
C {devices/vsource.sym} -550 -710 0 0 {name=V9 value=500m}
C {devices/lab_wire.sym} -550 -660 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -550 -750 0 0 {name=p27 sig_type=std_logic lab=A5}
C {devices/vsource.sym} -490 -710 0 0 {name=V10 value=600m}
C {devices/lab_wire.sym} -490 -660 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -410 -710 0 0 {name=V11 value=700m}
C {devices/lab_wire.sym} -410 -660 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -410 -750 0 0 {name=p33 sig_type=std_logic lab=A7}
C {devices/lab_wire.sym} -490 -750 0 0 {name=p31 sig_type=std_logic lab=A6}
C {devices/vsource.sym} -910 -580 0 0 {name=V12 value="(pulse(0 3.3 0 10p 10p 4u 8u))"}
C {devices/lab_wire.sym} -910 -530 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1230 -580 0 0 {name=p35 sig_type=std_logic lab=S0}
C {devices/vsource.sym} -700 -580 0 0 {name=V13 value="(pulse(0 3.3 0 10p 10p 2u 4u))"}
C {devices/lab_wire.sym} -700 -530 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1140 -580 0 0 {name=p37 sig_type=std_logic lab=S1}
C {devices/vsource.sym} -500 -580 0 0 {name=V14 value="(pulse(0 3.3 0 10p 10p 1u 2u))"}
C {devices/lab_wire.sym} -500 -530 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1060 -580 0 0 {name=p39 sig_type=std_logic lab=S2}
C {devices/code_shown.sym} -1090 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -1830 -810 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_MUX_1x8.spice"
.control
*set color0=white
*set color1=black
save all

tran 1u 16u
plot v(S0) v(S1) v(S2)
plot v(A0) v(A1) v(A2)
Plot v(Vout)

.endc
"}
C {devices/lab_wire.sym} -1500 -870 0 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/lab_wire.sym} -1520 -760 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1420 -760 0 0 {name=p41 sig_type=std_logic lab=ENA}
C {devices/vsource.sym} -1060 -720 0 0 {name=V1 value=3.3}
C {devices/lab_wire.sym} -1060 -670 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1060 -760 0 0 {name=p43 sig_type=std_logic lab=ENA}
C {devices/vsource.sym} -1060 -540 0 0 {name=V15 value=3}
C {devices/lab_wire.sym} -1060 -490 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1140 -540 0 0 {name=V16 value=3}
C {devices/lab_wire.sym} -1140 -490 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1230 -540 0 0 {name=V17 value=3}
C {devices/lab_wire.sym} -1230 -490 0 0 {name=p48 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -1690 -900 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {pex_MUX_1x8.sym} -1250 -850 0 0 {name=x1}
C {devices/res.sym} -1520 -840 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
