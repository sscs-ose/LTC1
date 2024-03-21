v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 810 40 810 60 {
lab=GND}
N 810 -50 810 -20 {
lab=VSS}
N 900 -50 900 -20 {
lab=VDD}
N 900 40 900 70 {
lab=VSS}
N 370 -40 370 -10 {
lab=VCM}
N 370 50 370 80 {
lab=VSS}
N 480 -60 480 -20 {
lab=IBIAS1}
N 480 40 480 100 {
lab=VSS}
N 560 -50 560 -20 {
lab=IN_P}
N 560 40 560 70 {
lab=VSS}
N 690 -50 690 -20 {
lab=IN_N}
N 690 40 690 70 {
lab=VSS}
N 630 70 690 70 {
lab=VSS}
N 630 70 630 100 {
lab=VSS}
N 560 70 630 70 {
lab=VSS}
N 1460 -230 1460 -190 {
lab=OUT_P}
N 1460 -130 1460 -90 {
lab=VSS}
N 1370 -230 1370 -190 {
lab=OUT_N}
N 1370 -130 1370 -90 {
lab=VSS}
N 1160 -140 1160 -100 {
lab=IBIAS1}
N 1220 -140 1220 -100 {
lab=VDD}
N 1280 -140 1280 -100 {
lab=VSS}
N 1340 -20 1380 -20 {
lab=OUT_N}
N 1340 20 1380 20 {
lab=OUT_P}
N 1060 40 1100 40 {
lab=VCM}
N 1060 0 1100 0 {
lab=IN_P}
N 1060 -40 1100 -40 {
lab=IN_N}
C {devices/lab_pin.sym} 1160 -130 1 0 {name=p3 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} 1220 -140 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1280 -140 1 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1060 40 0 0 {name=p6 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 810 10 0 0 {name=V1 value=0}
C {devices/gnd.sym} 810 60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 810 -40 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 900 10 0 0 {name=V2 value=3.3}
C {devices/lab_pin.sym} 900 -40 0 1 {name=p34 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 900 60 0 1 {name=p35 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 1560 -420 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_Folded_Diff_Op_Amp_Layout.spice"
.control
save all 
set color0 = white
set color 1 = black
save all
*.options savecurrents

tran 100n 50u
*dc V4 0 100m 1m
plot v(OUT_P) v(OUT_N)
*print mean(@m.xm2.m0[vds]) mean(@m.xm4.m0[vds]) mean(@m.xm7.m0[vds])

ac dec 50 1 1e9
let tf = OUT_P/IN_P
let gain = db(tf)
let phase = (180/pi)*ph(tf)
plot gain
plot phase 

*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 1u 2m
*let gain = (maximum(out1)-minimum(out2) )* 1000
*print vbb



*plot vdiff
display all
.endc
"}
C {devices/vsource.sym} 370 20 0 0 {name=V3 value=1.6}
C {devices/lab_pin.sym} 370 -30 0 1 {name=p20 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 370 70 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 480 10 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 480 80 0 1 {name=p49 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -40 0 1 {name=p50 sig_type=std_logic lab=IBIAS1}
C {devices/vsource.sym} 560 10 0 0 {name=V4 value="0 AC 1u"}
C {devices/lab_pin.sym} 560 -40 0 1 {name=p64 sig_type=std_logic lab=IN_P}
C {devices/lab_pin.sym} 690 -40 0 1 {name=p65 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 630 90 0 1 {name=p66 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 690 10 0 0 {name=V5 value="0 AC 1u 180"}
C {devices/capa.sym} 1460 -160 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1370 -160 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1460 -100 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1370 -100 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1460 -220 2 0 {name=p16 sig_type=std_logic lab=OUT_P}
C {devices/lab_pin.sym} 1370 -220 2 0 {name=p17 sig_type=std_logic lab=OUT_N}
C {devices/lab_pin.sym} 1060 -40 0 0 {name=p18 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 1060 0 0 0 {name=p19 sig_type=std_logic lab=IN_P}
C {devices/opin.sym} 1380 -20 0 0 {name=p2 lab=OUT_N}
C {devices/opin.sym} 1380 20 0 0 {name=p22 lab=OUT_P}
C {devices/code_shown.sym} 620 -350 0 0 {name=MODELS2 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {Folded_Cascode_Diff.sym} 1250 40 0 0 {name=x1}
