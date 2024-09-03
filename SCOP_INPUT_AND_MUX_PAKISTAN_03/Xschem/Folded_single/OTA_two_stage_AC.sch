v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -480 760 -480 780 {
lab=GND}
N -480 680 -480 700 {
lab=in1}
N -690 660 -690 680 {
lab=GND}
N -590 660 -590 680 {
lab=GND}
N -590 580 -590 600 {
lab=VDD}
N -690 560 -690 600 {
lab=VSS}
N -400 700 -400 720 {
lab=GND}
N -400 620 -400 640 {
lab=in2}
N -210 470 -210 560 {
lab=VSS}
N -210 350 -210 410 {
lab=OUT}
N -210 330 -210 350 {
lab=OUT}
N -560 290 -480 290 {
lab=in1}
N -560 330 -480 330 {
lab=in2}
N -400 190 -400 260 {
lab=VDD}
N -430 190 -430 250 {
lab=VBIAS}
N -400 360 -400 420 {
lab=VSS}
N -770 660 -770 700 {
lab=VSS}
N -770 560 -770 600 {
lab=VBIAS}
N -210 310 -210 330 {
lab=OUT}
N -310 310 -210 310 {
lab=OUT}
N -320 310 -310 310 {
lab=OUT}
N -280 310 -280 480 {
lab=OUT}
N -510 330 -510 480 {
lab=in2}
C {devices/code_shown.sym} -1010 790 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -10 190 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_fold_cascode_opamp_mag.spice"
.control
*save all
*.options savecurrents
save all 


*dc V6 0.95 1.05 0.1m
*plot v(OUT)

ac dec 50 1 1e9
let tf = out/in1
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
C {devices/vsource.sym} -480 730 0 0 {name=V3 value="0 AC 1m"}
C {devices/gnd.sym} -480 780 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -480 680 0 0 {name=p12 sig_type=std_logic lab=in1}
C {devices/vsource.sym} -690 630 0 0 {name=V4 value=0}
C {devices/gnd.sym} -690 680 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -590 630 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} -590 680 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -590 580 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -690 580 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -400 670 0 0 {name=V6 value="0 AC 1m 180"}
C {devices/gnd.sym} -400 720 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -400 620 0 0 {name=p16 sig_type=std_logic lab=in2}
C {devices/lab_wire.sym} -210 380 0 0 {name=p42 sig_type=std_logic lab=OUT
}
C {devices/lab_wire.sym} -210 530 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -210 440 0 1 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -400 410 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -430 210 0 0 {name=p5 sig_type=std_logic lab=VBIAS}
C {devices/lab_wire.sym} -400 220 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -560 290 0 0 {name=p7 sig_type=std_logic lab=in1}
C {devices/isource.sym} -770 630 0 0 {name=I0 value=20u}
C {devices/lab_wire.sym} -770 690 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -770 580 0 0 {name=p4 sig_type=std_logic lab=VBIAS}
C {devices/lab_pin.sym} -560 330 0 0 {name=p2 sig_type=std_logic lab=in2}
C {opamp_new_test.sym} -420 310 0 0 {name=x1}
