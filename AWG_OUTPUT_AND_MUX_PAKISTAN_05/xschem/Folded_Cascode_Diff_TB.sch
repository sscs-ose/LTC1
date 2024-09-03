v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -160 120 -140 {
lab=GND}
N 120 -250 120 -220 {
lab=VSS}
N 210 -250 210 -220 {
lab=VDD}
N 210 -160 210 -130 {
lab=VSS}
N 40 -250 40 -220 {
lab=VCM}
N 40 -160 40 -130 {
lab=VSS}
N 320 -260 320 -220 {
lab=IBIAS1}
N 320 -160 320 -100 {
lab=VSS}
N 150 -80 150 -50 {
lab=IN_P}
N 150 10 150 40 {
lab=VSS}
N 280 -80 280 -50 {
lab=IN_N}
N 280 10 280 40 {
lab=VSS}
N 220 40 280 40 {
lab=VSS}
N 220 40 220 70 {
lab=VSS}
N 150 40 220 40 {
lab=VSS}
N 970 -400 970 -360 {
lab=OUT_P}
N 970 -300 970 -260 {
lab=VSS}
N 880 -400 880 -360 {
lab=OUT_N}
N 880 -300 880 -260 {
lab=VSS}
N 630 -330 630 -290 {
lab=IBIAS1}
N 690 -330 690 -290 {
lab=VDD}
N 750 -330 750 -290 {
lab=VSS}
N 810 -210 850 -210 {
lab=OUT_N}
N 810 -170 850 -170 {
lab=OUT_P}
N 530 -150 570 -150 {
lab=VCM}
N 530 -190 570 -190 {
lab=IN_P}
N 530 -230 570 -230 {
lab=IN_N}
C {devices/vsource.sym} 120 -190 0 0 {name=V1 value=0}
C {devices/gnd.sym} 120 -140 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 120 -240 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 210 -190 0 0 {name=V2 value=3.3}
C {devices/lab_pin.sym} 210 -240 0 1 {name=p34 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 210 -140 0 1 {name=p35 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 1050 -430 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_Folded_Diff_Op_Amp_Layout.spice"
.control
save all
set color0 = white
set color 1 = black
save all
*.options savecurrents

*tran 100n 50u
*dc V4 0 100m 1m
*plot v(OUT_P) v(OUT_N)

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
C {devices/vsource.sym} 40 -190 0 0 {name=V3 value=1.6}
C {devices/lab_pin.sym} 40 -240 0 1 {name=p20 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 40 -140 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 320 -190 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 320 -120 0 1 {name=p49 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 320 -240 0 1 {name=p50 sig_type=std_logic lab=IBIAS1}
C {devices/vsource.sym} 150 -20 0 0 {name=V4 value="0 AC 1u"}
C {devices/lab_pin.sym} 150 -70 0 1 {name=p64 sig_type=std_logic lab=IN_P}
C {devices/lab_pin.sym} 280 -70 0 1 {name=p65 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 220 60 0 1 {name=p66 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 280 -20 0 0 {name=V5 value="0 AC 1u 180" }
C {devices/capa.sym} 970 -330 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 880 -330 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 970 -270 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 880 -270 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 970 -390 2 0 {name=p16 sig_type=std_logic lab=OUT_P}
C {devices/lab_pin.sym} 880 -390 2 0 {name=p17 sig_type=std_logic lab=OUT_N}
C {devices/lab_pin.sym} 630 -330 1 0 {name=p3 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} 690 -330 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 750 -330 1 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 -150 0 0 {name=p6 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 530 -230 0 0 {name=p18 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 530 -190 0 0 {name=p19 sig_type=std_logic lab=IN_P}
C {devices/opin.sym} 850 -210 0 0 {name=p2 lab=OUT_N}
C {devices/opin.sym} 850 -170 0 0 {name=p23 lab=OUT_P}
C {devices/code_shown.sym} -30 -430 0 0 {name=MODELS1 only_toplevel=true
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
C {Folded_Cascode_Diff_PEX.sym} 720 -150 0 0 {name=x1}
