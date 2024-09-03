v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 240 -50 260 {
lab=GND}
N -50 160 -50 180 {
lab=VDD}
N -540 0 -540 20 {
lab=GND}
N -540 -80 -540 -60 {
lab=VINP}
N -410 -80 -410 -60 {
lab=OUTo}
N -540 -130 -540 -80 {
lab=VINP}
N -540 -140 -540 -130 {
lab=VINP}
N -540 -140 -340 -140 {
lab=VINP}
N -410 -120 -340 -120 {
lab=OUTo}
N -410 -120 -410 -80 {
lab=OUTo}
N -130 -130 -70 -130 {
lab=OUT}
N -220 -50 -220 0 {
lab=IBIAS}
N -220 0 -170 0 {
lab=IBIAS}
N -250 -240 -250 -200 {
lab=VDD}
N -200 -240 -200 -220 {
lab=VSS}
N -230 -240 -200 -240 {
lab=VSS}
N -230 -240 -230 -200 {
lab=VSS}
N -200 240 -200 260 {
lab=GND}
N -200 160 -200 180 {
lab=VSS}
N -300 240 -300 280 {
lab=VSS}
N -300 140 -300 180 {
lab=IBIAS}
N -270 -50 -270 0 {
lab=VBS2}
N -250 -50 -250 0 {
lab=VBS3}
N 50 -10 50 40 {
lab=VSS}
N -70 -130 -50 -130 {
lab=OUT}
N -480 100 -480 140 {
lab=GND}
N -290 -50 -290 0 {
lab=VBIASN}
N 50 -100 50 -70 {
lab=OUTo}
N -130 -110 -50 -110 {
lab=OUTo}
N -480 20 -480 100 {
lab=GND}
N -540 20 -480 20 {
lab=GND}
N -410 -60 -410 70 {
lab=OUTo}
N -410 70 -20 70 {
lab=OUTo}
N -20 -110 -20 70 {
lab=OUTo}
N -50 -110 -20 -110 {
lab=OUTo}
C {devices/code_shown.sym} 150 -180 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_fold_cascode_opamp_mag.spice"
.control
*save all
*.options savecurrents
save all 

tran 100p 200n
*dc V4 0 3 10m
*plot v(IBIAS)
plot i(V5)
plot v(OUTo) v(VINP)

*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 1u 2m
*let gain = (maximum(out1)-minimum(out2) )* 1000
*print vbb

*plot vdiff
*display all
.endc
"}
C {devices/vsource.sym} -50 210 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} -50 260 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -50 160 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -540 -30 0 0 {name=V2 value="pulse(0.2 1.6 0 100p 100p 50n 100n)"}
C {devices/gnd.sym} -480 140 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -250 -220 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -430 -140 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} -190 0 0 1 {name=p7 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} -200 -230 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -200 210 0 0 {name=V1 value=0}
C {devices/gnd.sym} -200 260 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -200 160 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/isource.sym} -300 210 0 0 {name=I1 value=50u}
C {devices/lab_wire.sym} -300 270 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -300 160 0 1 {name=p10 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} -250 -10 1 1 {name=p11 sig_type=std_logic lab=VBS3}
C {devices/lab_wire.sym} -270 -10 1 1 {name=p12 sig_type=std_logic lab=VBS2}
C {devices/capa.sym} 50 -40 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 50 20 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 -10 1 1 {name=p22 sig_type=std_logic lab=VBIASN}
C {devices/lab_wire.sym} -60 -130 0 0 {name=p23 sig_type=std_logic lab=OUT
}
C {devices/lab_wire.sym} 50 -90 0 0 {name=p8 sig_type=std_logic lab=OUTo
}
C {devices/lab_wire.sym} -60 -110 0 0 {name=p15 sig_type=std_logic lab=OUTo
}
C {pex_fold_cascode_opamp_mag.sym} -240 -130 0 0 {name=x1}
C {devices/code_shown.sym} 150 350 0 0 {name=MODELS1 only_toplevel=true
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
