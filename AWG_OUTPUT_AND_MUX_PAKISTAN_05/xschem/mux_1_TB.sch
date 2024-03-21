v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -610 -760 -610 -740 {
lab=GND}
N -510 -760 -510 -740 {
lab=VSS}
N -510 -840 -510 -820 {
lab=VDD}
N -610 -860 -610 -820 {
lab=VSS}
N -1240 -900 -1240 -840 {
lab=VDD}
N -1250 -580 -1250 -520 {
lab=VSS}
N -1450 -730 -1340 -730 {
lab=VOUT1}
N -1170 -750 -1110 -750 {
lab=A0}
N -1170 -730 -1110 -730 {
lab=A1}
N -1170 -710 -1110 -710 {
lab=A2}
N -1170 -690 -1110 -690 {
lab=A3}
N -1170 -670 -1110 -670 {
lab=A4}
N -1170 -650 -1110 -650 {
lab=A5}
N -1170 -630 -1110 -630 {
lab=A6}
N -1170 -610 -1110 -610 {
lab=A7}
N -1390 -680 -1330 -680 {
lab=S0}
N -1390 -660 -1330 -660 {
lab=S1}
N -1390 -640 -1330 -640 {
lab=S2}
N -850 -640 -850 -620 {
lab=A0}
N -850 -560 -850 -530 {
lab=VSS}
N -760 -630 -760 -610 {
lab=A1}
N -760 -550 -760 -520 {
lab=VSS}
N -680 -630 -680 -610 {
lab=A2}
N -680 -550 -680 -520 {
lab=VSS}
N -620 -630 -620 -610 {
lab=A3}
N -620 -550 -620 -520 {
lab=VSS}
N -540 -630 -540 -610 {
lab=A4}
N -540 -550 -540 -520 {
lab=VSS}
N -480 -620 -480 -600 {
lab=A5}
N -480 -540 -480 -510 {
lab=VSS}
N -420 -620 -420 -600 {
lab=A6}
N -420 -540 -420 -510 {
lab=VSS}
N -340 -620 -340 -600 {
lab=A7}
N -340 -540 -340 -510 {
lab=VSS}
N -840 -490 -840 -470 {
lab=S0}
N -840 -410 -840 -380 {
lab=VSS}
N -630 -490 -630 -470 {
lab=S1}
N -630 -410 -630 -380 {
lab=VSS}
N -430 -490 -430 -470 {
lab=S2}
N -430 -410 -430 -380 {
lab=VSS}
N -1450 -670 -1450 -590 {
lab=VSS}
N -1340 -730 -1330 -730 {
lab=VOUT1}
N -1390 -620 -1330 -620 {
lab=ENA}
N -990 -630 -990 -610 {
lab=ENA}
N -990 -550 -990 -520 {
lab=VSS}
N -990 -450 -990 -430 {
lab=#net1}
N -990 -370 -990 -340 {
lab=VSS}
N -1070 -450 -1070 -430 {
lab=#net2}
N -1070 -370 -1070 -340 {
lab=VSS}
N -1160 -450 -1160 -430 {
lab=#net3}
N -1160 -370 -1160 -340 {
lab=VSS}
C {mux_1.sym} -1180 -710 0 0 {name=x1}
C {devices/vsource.sym} -610 -790 0 0 {name=V4 value=0}
C {devices/gnd.sym} -610 -740 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -510 -790 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} -510 -840 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -610 -840 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1240 -870 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1250 -530 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -510 -750 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -850 -590 0 0 {name=V2 value=50m}
C {devices/lab_wire.sym} -850 -540 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1120 -750 0 0 {name=p7 sig_type=std_logic lab=A0}
C {devices/lab_wire.sym} -1120 -730 0 0 {name=p8 sig_type=std_logic lab=A1}
C {devices/lab_wire.sym} -1120 -710 0 0 {name=p9 sig_type=std_logic lab=A2}
C {devices/lab_wire.sym} -1120 -690 0 0 {name=p10 sig_type=std_logic lab=A3}
C {devices/lab_wire.sym} -1120 -670 0 0 {name=p11 sig_type=std_logic lab=A4}
C {devices/lab_wire.sym} -1120 -650 0 0 {name=p12 sig_type=std_logic lab=A5}
C {devices/lab_wire.sym} -1120 -610 0 0 {name=p14 sig_type=std_logic lab=A7}
C {devices/lab_wire.sym} -1340 -680 0 0 {name=p15 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} -1340 -660 0 0 {name=p16 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} -1340 -640 0 0 {name=p17 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} -1120 -630 0 0 {name=p18 sig_type=std_logic lab=A6}
C {devices/lab_wire.sym} -850 -630 0 0 {name=p2 sig_type=std_logic lab=A0}
C {devices/vsource.sym} -760 -580 0 0 {name=V3 value=100m}
C {devices/lab_wire.sym} -760 -530 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -760 -620 0 0 {name=p19 sig_type=std_logic lab=A1}
C {devices/vsource.sym} -680 -580 0 0 {name=V6 value=200m}
C {devices/lab_wire.sym} -680 -530 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -680 -620 0 0 {name=p21 sig_type=std_logic lab=A2}
C {devices/vsource.sym} -620 -580 0 0 {name=V7 value=300m}
C {devices/lab_wire.sym} -620 -530 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -620 -620 0 0 {name=p23 sig_type=std_logic lab=A3}
C {devices/vsource.sym} -540 -580 0 0 {name=V8 value=400m}
C {devices/lab_wire.sym} -540 -530 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -540 -620 0 0 {name=p25 sig_type=std_logic lab=A4}
C {devices/vsource.sym} -480 -570 0 0 {name=V9 value=500m}
C {devices/lab_wire.sym} -480 -520 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -480 -610 0 0 {name=p27 sig_type=std_logic lab=A5}
C {devices/vsource.sym} -420 -570 0 0 {name=V10 value=600m}
C {devices/lab_wire.sym} -420 -520 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -340 -570 0 0 {name=V11 value=700m}
C {devices/lab_wire.sym} -340 -520 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -340 -610 0 0 {name=p33 sig_type=std_logic lab=A7}
C {devices/lab_wire.sym} -420 -610 0 0 {name=p31 sig_type=std_logic lab=A6}
C {devices/vsource.sym} -840 -440 0 0 {name=V12 value="(pulse(0 3.3 0 10p 10p 4u 8u))"}
C {devices/lab_wire.sym} -840 -390 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -840 -480 0 0 {name=p35 sig_type=std_logic lab=S0}
C {devices/vsource.sym} -630 -440 0 0 {name=V13 value="(pulse(0 3.3 0 10p 10p 2u 4u))"}
C {devices/lab_wire.sym} -630 -390 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -630 -480 0 0 {name=p37 sig_type=std_logic lab=S1}
C {devices/vsource.sym} -430 -440 0 0 {name=V14 value="(pulse(0 3.3 0 10p 10p 1u 2u))"}
C {devices/lab_wire.sym} -430 -390 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -430 -480 0 0 {name=p39 sig_type=std_logic lab=S2}
C {devices/code_shown.sym} -1020 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -1760 -670 0 0 {name=NGSPICE only_toplevel=true
value="

.control
*set color0=white
*set color1=black
save all

tran 1u 16u
plot v(S0) v(S1) v(S2)
plot v(A0) v(A1) v(A2)
Plot v(VOUT1)

.endc
"}
C {devices/lab_wire.sym} -1430 -730 0 0 {name=p5 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} -1450 -620 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1350 -620 0 0 {name=p41 sig_type=std_logic lab=ENA}
C {devices/vsource.sym} -990 -580 0 0 {name=V1 value=0}
C {devices/lab_wire.sym} -990 -530 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -990 -620 0 0 {name=p43 sig_type=std_logic lab=ENA}
C {devices/vsource.sym} -990 -400 0 0 {name=V15 value=3}
C {devices/lab_wire.sym} -990 -350 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1070 -400 0 0 {name=V16 value=3}
C {devices/lab_wire.sym} -1070 -350 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1160 -400 0 0 {name=V17 value=3}
C {devices/lab_wire.sym} -1160 -350 0 0 {name=p48 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -1450 -700 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
