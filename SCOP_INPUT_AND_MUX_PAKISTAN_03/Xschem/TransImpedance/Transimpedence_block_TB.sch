v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -380 730 -380 750 {
lab=GND}
N -280 730 -280 750 {
lab=GND}
N -280 650 -280 670 {
lab=VDD}
N -380 630 -380 670 {
lab=VSS}
N -490 820 -490 880 {
lab=IREF2}
N -490 940 -490 990 {
lab=VSS}
N -180 650 -180 690 {
lab=SEL}
N -180 750 -180 760 {
lab=GND}
N -770 730 -770 750 {
lab=GND}
N -770 650 -770 670 {
lab=VCM}
N -680 730 -680 750 {
lab=GND}
N -680 650 -680 670 {
lab=#net1}
N -970 760 -970 810 {
lab=GND}
N -890 720 -890 770 {
lab=GND}
N -970 650 -970 700 {
lab=IN_P}
N -890 620 -890 660 {
lab=#net2}
N -620 270 -620 330 {
lab=VDD}
N -620 470 -620 540 {
lab=VSS}
N -660 290 -660 330 {
lab=IREF2}
N -790 380 -740 380 {
lab=IN_P}
N -790 400 -740 400 {
lab=IN_N}
N -790 440 -740 440 {
lab=SEL}
N -530 380 -460 380 {
lab=OUT_N}
N -530 400 -460 400 {
lab=OUT_P}
N -380 400 -380 430 {
lab=OUT_P}
N -460 400 -380 400 {
lab=OUT_P}
N -460 380 -280 380 {
lab=OUT_N}
N -280 380 -280 430 {
lab=OUT_N}
N -380 490 -380 540 {
lab=VSS}
N -280 490 -280 550 {
lab=VSS}
N -380 540 -380 550 {
lab=VSS}
N -660 470 -660 510 {
lab=VCM}
N -1160 350 -1160 390 {
lab=#net3}
N -1160 450 -1160 460 {
lab=GND}
N -990 360 -990 400 {
lab=#net4}
N -990 460 -990 470 {
lab=GND}
N -640 290 -640 330 {
lab=IREF1}
N -680 290 -680 330 {
lab=IREF3}
N -620 260 -620 270 {
lab=VDD}
N -620 260 -550 260 {
lab=VDD}
N -410 810 -410 870 {
lab=IREF3}
N -410 930 -410 980 {
lab=VSS}
N -570 810 -570 870 {
lab=IREF1}
N -570 930 -570 980 {
lab=VSS}
C {devices/vsource.sym} -380 700 0 0 {name=V4 value=0}
C {devices/gnd.sym} -380 750 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -280 700 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} -280 750 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -280 650 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -380 650 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/isource.sym} -490 910 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} -490 830 0 0 {name=p23 sig_type=std_logic lab=IREF2}
C {devices/gnd.sym} -180 760 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -180 660 0 0 {name=p24 sig_type=std_logic lab=SEL}
C {devices/vsource.sym} -180 720 0 0 {name=V2 value=3.3}
C {devices/vsource.sym} -770 700 0 0 {name=V3 value=1.3}
C {devices/gnd.sym} -770 750 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -680 700 0 0 {name=V6 value=1.4}
C {devices/gnd.sym} -680 750 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} -870 -50 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} -80 -10 0 0 {name=NGSPICE only_toplevel=true
value="
.control
*save all
*.options savecurrents
save all 
save @m.x1.xm1.m0[vds]
+ @m.x1.xm4.m0[vds]
+ @m.x1.xm7.m0[vds]
+ @m.x1.xm5.m0[vds]

tran 100n 1m
*dc V1 0 3 10m
plot v(OUT_P) v(OUT_N)
plot v(in_p)
*plot v(x1.net7) v(x1.net8)
*print mean(@m.xm2.m0[vds]) mean(@m.xm4.m0[vds]) mean(@m.xm7.m0[vds])

*ac dec 50 1 1e9
let tf = x1.net8/in_n
let gain = db(tf)
let phase = (180/pi)*ph(tf)

*plot gain
*plot phase

*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 1u 2m
*let gain = (maximum(out1)-minimum(out2) )* 1000
*print vbb

let m1vds = minimum(@m.x1.xm1.m0[vds])
let m4vds = minimum(@m.x1.xm4.m0[vds])
let m5vds = minimum(@m.x1.xm5.m0[vds])
let m7vds = minimum(@m.x1.xm7.m0[vds])
*let m10vds = maximum(@m.xm10.m0[vds])
*let m12vds = minimum(@m.xm12.m0[vds])
print m1vds m4vds m5vds m7vds 
*m10vds m12vds

*plot vdiff
display all
.endc
"}
C {devices/isource.sym} -970 730 2 0 {name=I0 value="sin(0 20u 1k 0 0 0)"}
C {devices/isource.sym} -890 690 0 0 {name=I2 value=100u}
C {devices/gnd.sym} -890 770 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -970 810 0 0 {name=l8 lab=GND}
C {transimpedence_block.sym} -630 400 0 0 {name=x1}
C {devices/lab_wire.sym} -580 260 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -620 530 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -660 310 3 1 {name=p4 sig_type=std_logic lab=IREF2}
C {devices/lab_wire.sym} -790 380 0 0 {name=p5 sig_type=std_logic lab=IN_P}
C {devices/lab_wire.sym} -780 440 0 0 {name=p6 sig_type=std_logic lab=SEL}
C {devices/lab_wire.sym} -470 380 0 1 {name=p7 sig_type=std_logic lab=OUT_N}
C {devices/lab_wire.sym} -470 400 0 1 {name=p8 sig_type=std_logic lab=OUT_P}
C {devices/capa.sym} -380 460 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -280 460 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -380 530 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -280 530 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -770 660 0 0 {name=p11 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} -660 500 0 0 {name=p12 sig_type=std_logic lab=VCM}
C {devices/gnd.sym} -1160 460 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1160 420 0 0 {name=V1 value="SIN(1 1 1k 0 0 0)"}
C {devices/gnd.sym} -990 470 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -990 430 0 0 {name=V7 value="SIN(1 1 1k 0 0 180)" }
C {devices/lab_wire.sym} -640 320 3 1 {name=p16 sig_type=std_logic lab=IREF1}
C {devices/lab_wire.sym} -680 300 3 1 {name=p17 sig_type=std_logic lab=IREF3}
C {devices/isource.sym} -410 900 0 0 {name=I3 value=20u}
C {devices/lab_wire.sym} -410 840 0 0 {name=p18 sig_type=std_logic lab=IREF3}
C {devices/isource.sym} -570 900 0 0 {name=I4 value=20u}
C {devices/lab_wire.sym} -570 840 0 0 {name=p20 sig_type=std_logic lab=IREF1}
C {devices/lab_wire.sym} -790 400 0 0 {name=p14 sig_type=std_logic lab=IN_N}
C {devices/lab_wire.sym} -410 970 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -490 970 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -570 960 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -970 670 0 0 {name=p15 sig_type=std_logic lab=IN_P}
