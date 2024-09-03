v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 210 -210 230 {
lab=GND}
N -210 130 -210 150 {
lab=VDD}
N -700 -30 -700 -10 {
lab=GND}
N -700 -110 -700 -90 {
lab=VINP}
N -570 -30 -570 -10 {
lab=GND}
N -570 -110 -570 -90 {
lab=VINN}
N -700 -10 -570 -10 {
lab=GND}
N -640 -10 -640 10 {
lab=GND}
N -700 -160 -700 -110 {
lab=VINP}
N -700 -170 -700 -160 {
lab=VINP}
N -700 -170 -500 -170 {
lab=VINP}
N -570 -150 -500 -150 {
lab=VINN}
N -570 -150 -570 -110 {
lab=VINN}
N -290 -160 -230 -160 {
lab=OUT}
N -380 -80 -380 -30 {
lab=IBIAS}
N -380 -30 -330 -30 {
lab=IBIAS}
N -410 -270 -410 -230 {
lab=VDD}
N -360 -270 -360 -250 {
lab=VSS}
N -390 -270 -360 -270 {
lab=VSS}
N -390 -270 -390 -230 {
lab=VSS}
N -360 210 -360 230 {
lab=GND}
N -360 130 -360 150 {
lab=VSS}
N -460 210 -460 250 {
lab=VSS}
N -460 110 -460 150 {
lab=IBIAS}
N -430 -80 -430 -30 {
lab=VBS2}
N -410 -80 -410 -30 {
lab=VBS3}
N -110 -40 -110 10 {
lab=VSS}
N -230 -160 -210 -160 {
lab=OUT}
N -640 10 -640 50 {
lab=GND}
N -450 -80 -450 -30 {
lab=VBIASN}
N -110 -130 -110 -100 {
lab=OUTo}
N -290 -140 -210 -140 {
lab=OUTo}
C {devices/code_shown.sym} -650 340 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} -10 -210 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_fold_cascode_opamp_mag.spice"
.control
*save all
*.options savecurrents
save all 

*tran 100p 400n
*dc V4 0 3 10m
*plot v(OUTo)
*plot v(IBIAS)
*plot i(V5)

ac dec 50 1 1e9
let tf = outo/vinp
let gain = db(tf)
let phase = (180/pi)*ph(tf)

plot gain
plot phase

*write folded_single_TB_AC.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 1u 2m
*let gain = (maximum(out1)-minimum(out2) )* 1000
*print vbb

*plot vdiff
.endc
"}
C {devices/vsource.sym} -210 180 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} -210 230 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -210 130 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -700 -60 0 0 {name=V2 value="0 AC 1m"}
C {devices/gnd.sym} -640 50 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -410 -250 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -590 -170 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} -350 -30 0 1 {name=p7 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} -360 -260 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -360 180 0 0 {name=V1 value=0}
C {devices/gnd.sym} -360 230 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -360 130 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/isource.sym} -460 180 0 0 {name=I1 value=50u}
C {devices/lab_wire.sym} -460 240 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -460 130 0 1 {name=p10 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} -410 -40 1 1 {name=p11 sig_type=std_logic lab=VBS3}
C {devices/lab_wire.sym} -430 -40 1 1 {name=p12 sig_type=std_logic lab=VBS2}
C {devices/capa.sym} -110 -70 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -110 -10 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -450 -40 1 1 {name=p22 sig_type=std_logic lab=VBIASN}
C {devices/vsource.sym} -570 -60 0 0 {name=V3 value="0 AC 1m 180"}
C {devices/lab_wire.sym} -570 -120 0 0 {name=p4 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} -220 -160 0 0 {name=p23 sig_type=std_logic lab=OUT
}
C {devices/lab_wire.sym} -110 -120 0 0 {name=p8 sig_type=std_logic lab=OUTo
}
C {devices/lab_wire.sym} -220 -140 0 0 {name=p15 sig_type=std_logic lab=OUTo
}
C {pex_fold_cascode_opamp_mag.sym} -400 -160 0 0 {name=x1}
