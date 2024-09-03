v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1160 760 -1160 790 {
lab=GND}
N -1070 760 -1070 790 {
lab=GND}
N -980 760 -980 790 {
lab=GND}
N -980 660 -980 700 {
lab=VCM}
N -1070 660 -1070 700 {
lab=VDD}
N -1160 660 -1160 700 {
lab=VSS}
N -1440 760 -1440 810 {
lab=GND}
N -1370 720 -1370 770 {
lab=GND}
N -1440 650 -1440 700 {
lab=IN1}
N -1370 610 -1370 660 {
lab=IN2}
N -860 660 -860 700 {
lab=IREF}
N -860 760 -860 800 {
lab=VSS}
N -1060 1010 -1060 1040 {
lab=GND}
N -1060 910 -1060 950 {
lab=A}
N -1210 1110 -1210 1140 {
lab=GND}
N -1210 1010 -1210 1050 {
lab=C}
N -1130 1050 -1130 1080 {
lab=GND}
N -1130 950 -1130 990 {
lab=B}
N -730 400 -730 430 {
lab=OUT2}
N -640 480 -640 520 {
lab=VSS}
N -730 490 -730 530 {
lab=VSS}
N -810 350 -640 350 {
lab=OUT1}
N -640 350 -640 420 {
lab=OUT1}
N -810 370 -730 370 {
lab=OUT2}
N -730 370 -730 400 {
lab=OUT2}
N -900 250 -900 300 {
lab=VDD}
N -900 460 -900 510 {
lab=VSS}
N -930 460 -930 510 {
lab=VCM}
N -930 250 -930 300 {
lab=IREF}
N -1070 350 -1000 350 {
lab=IN1}
N -1070 370 -1000 370 {
lab=IN2}
N -1040 390 -1000 390 {
lab=A}
N -1040 410 -1000 410 {
lab=B}
N -1040 430 -1000 430 {
lab=C}
C {devices/vsource.sym} -1160 730 0 0 {name=V1 value=0}
C {devices/vsource.sym} -1070 730 0 0 {name=V2 value=3.3}
C {devices/vsource.sym} -980 730 0 0 {name=V3 value=1.3}
C {devices/lab_wire.sym} -1160 680 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1070 680 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -1160 790 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -1070 790 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -980 790 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -980 680 0 0 {name=p3 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} -1370 690 0 0 {name=V4 value="sin(1 20m 200k 0 0 180)"}
C {devices/vsource.sym} -1440 730 0 0 {name=V5 value="sin(1 20m 200k 0 0 0)"}
C {devices/gnd.sym} -1370 770 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -1440 810 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -1370 640 0 0 {name=p27 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -1440 680 0 0 {name=p28 sig_type=std_logic lab=IN1}
C {devices/isource.sym} -860 730 0 0 {name=I0 value=30u}
C {devices/lab_wire.sym} -860 680 0 0 {name=p31 sig_type=std_logic lab=IREF}
C {devices/code_shown.sym} -80 -20 0 0 {name=NGSPICE only_toplevel=true
value="
.control
set color0=white
set color1=black
save all

*.options savecurrents
*save @m.xm1.m0[vds] @m.xm2.m0[vds] @m.xm4.m0[vds]
*save @m.x1.xm33.m0[gm]
*save @m.xm10.m0[vds]
*save @m.xm12.m0[vds]
*-@m.xm1.m0[vdsat]
*dc V8 0 3 10m

tran 1n 80u
plot v(out1) v(out2)
plot v(in1) v(in2)
plot v(S1) v(S2)+4 v(S3)+8 v(S4)+12 v(S5)+16 v(S6)+20
*let gain = (maximum(out1)-minimum(out2))/100e-3
*print gain

*plot i(V2)

*ac dec 50 1 1e9
*let tf = OUT1/in2
*let gain = db(tf)
*let phase = (180/pi)*ph(tf)

*plot gain
*plot phase
*let myval=mean(out1)

*print myval
*let my_vect = [123 23 42 12 45 76]
*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 100p 100n


*plot v(in1) v(in2)
*plot v(i1)
*plot vdiff
*let m1vds = minimum(@m.xm1.m0[vds])
*let m2vds = minimum(@m.xm2.m0[vds])
*let m4vds = minimum(@m.xm4.m0[vds])
*let m8vds = maximum(@m.xm8.m0[vds])
*let m10vds = maximum(@m.xm10.m0[vds])
*let m12vds = minimum(@m.xm12.m0[vds])
*print m1vds m2vds m4vds m8vds m10vds m12vds
display all
.endc
"}
C {devices/vsource.sym} -1060 980 0 0 {name=V6 value="pulse(0 3.3 0 100p 100p 40u 80u)"}
C {devices/gnd.sym} -1060 1040 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -1210 1080 0 0 {name=V7 value="pulse(0 3.3 0 100p 100p 10u 20u)"}
C {devices/gnd.sym} -1210 1140 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -1130 1020 0 0 {name=V8 value="pulse(0 3.3 0 100p 100p 20u 40u)"}
C {devices/gnd.sym} -1130 1080 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -860 790 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -640 450 0 0 {name=C3
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -730 460 0 0 {name=C4
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -730 520 0 0 {name=p65 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -640 510 0 0 {name=p66 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -900 280 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -900 490 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -930 490 0 0 {name=p6 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} -930 270 0 0 {name=p7 sig_type=std_logic lab=IREF}
C {devices/lab_wire.sym} -1070 350 0 0 {name=p8 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -1070 370 0 0 {name=p9 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -1040 390 0 0 {name=p10 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} -1040 410 0 0 {name=p11 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} -1040 430 0 0 {name=p12 sig_type=std_logic lab=C}
C {devices/lab_wire.sym} -770 350 0 1 {name=p13 sig_type=std_logic lab=OUT1}
C {devices/lab_wire.sym} -770 370 0 1 {name=p14 sig_type=std_logic lab=OUT2}
C {devices/code_shown.sym} -760 690 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_wire.sym} -1060 930 0 0 {name=p18 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} -1130 970 0 0 {name=p19 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} -1210 1030 0 0 {name=p20 sig_type=std_logic lab=C}
C {PGA_block_ppoly.sym} -900 380 0 0 {name=x1}
