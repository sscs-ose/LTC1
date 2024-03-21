v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -360 -140 -360 -120 {
lab=GND}
N -360 -220 -360 -200 {
lab=VIN_P1}
N -130 -140 -130 -120 {
lab=GND}
N -30 -140 -30 -120 {
lab=GND}
N -30 -220 -30 -200 {
lab=VDD}
N -130 -240 -130 -200 {
lab=VSS}
N -270 -150 -270 -130 {
lab=GND}
N -270 -230 -270 -210 {
lab=VIN_N1}
N -360 -120 -270 -120 {
lab=GND}
N -270 -130 -270 -120 {
lab=GND}
N -310 -120 -310 -100 {
lab=GND}
N -500 -200 -500 -140 {
lab=IBIAS1}
N -500 -80 -500 -30 {
lab=VSS}
N -10 -350 -10 -340 {
lab=GND}
N -60 -350 -10 -350 {
lab=GND}
N -60 -370 -60 -350 {
lab=GND}
N -10 -350 30 -350 {
lab=GND}
N 30 -370 30 -350 {
lab=GND}
N -60 -450 -60 -430 {
lab=VOUT_P}
N 110 -140 110 -120 {
lab=GND}
N 110 -220 110 -200 {
lab=VCM1}
N -310 -520 -310 -510 {
lab=VIN_P1}
N -320 -490 -310 -490 {
lab=VIN_N1}
N -320 -510 -310 -510 {
lab=VIN_P1}
N -300 -230 -270 -230 {
lab=VIN_N1}
N -230 -610 -230 -580 {
lab=VDD}
N -200 -610 -200 -580 {
lab=IBIAS1}
N -210 -440 -210 -410 {
lab=VSS}
N -190 -440 -190 -410 {
lab=VCM1}
N -130 -530 30 -530 {
lab=VOUT_N}
N 30 -530 30 -430 {
lab=VOUT_N}
N -130 -470 -60 -470 {
lab=VOUT_P}
N -60 -470 -60 -450 {
lab=VOUT_P}
N -310 -520 -270 -520 {
lab=VIN_P1}
N -310 -490 -270 -490 {
lab=VIN_N1}
N -270 -490 -270 -480 {
lab=VIN_N1}
C {devices/vsource.sym} -360 -170 0 0 {name=V3 value="0.5 AC 1u"}
C {devices/vsource.sym} -130 -170 0 0 {name=V4 value=0}
C {devices/gnd.sym} -130 -120 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -30 -170 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} -30 -120 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -30 -220 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -130 -220 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -270 -180 0 0 {name=V6 value="0.5 AC 1u 180"}
C {devices/isource.sym} -500 -110 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} -500 -180 0 0 {name=p8 sig_type=std_logic lab=IBIAS1}
C {devices/gnd.sym} -310 -100 0 0 {name=l3 lab=GND
value=1.5}
C {devices/code_shown.sym} 240 -740 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_Filter_magic.spice"
.control
set color0=white
set color1=black
save all

*.options savecurrents
save @m.x1.xm23.m0[vds] @m.x1.xm24.m0[vds] 
*@m.xm4.m0[vds]
*save @m.xm8.m0[vds]
*save @m.xm10.m0[vds]
*save @m.xm12.m0[vds]
*-@m.xm1.m0[vdsat]
*dc V6 0 0.1 0.01m

*tran 150p 300n
*let gain = (maximum(outp)-minimum(outn))/2e-3
*print gain


*plot v(outp) v(outn) 
*plot v(in1) v(in2)
*plot v(buff_in1) v(buff_in2)

ac dec 50 1 1e9
let tf = VOUT_N/VIN_P1
let gain = db(tf)
let phase = (180/pi)*ph(tf)

*let tf1 = OUTp/IN1
*let gain1 = db(tf1)
*let phase1 = (180/pi)*ph(tf1)

plot gain
plot phase

*plot gain1
*plot phase1
*let myval=mean(out1)

*print myval
*let my_vect = [123 23 42 12 45 76]
*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 100p 100n


*plot v(i1)
*plot vdiff
let m1vds = minimum(@m.x1.xm23.m0[vds])
let m2vds = minimum(@m.x1.xm24.m0[vds])
*let m4vds = minimum(@m.xm4.m0[vds])
*let m8vds = maximum(@m.xm8.m0[vds])
*let m10vds = maximum(@m.xm10.m0[vds])
*let m12vds = minimum(@m.xm12.m0[vds])
*print m1vds m2vds 
*m4vds m8vds m10vds m12vds
*display all
.endc
"}
C {devices/lab_pin.sym} -320 -510 0 0 {name=p1 sig_type=std_logic lab=VIN_P1
}
C {devices/capa.sym} -60 -400 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 30 -400 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -10 -340 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -500 -40 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 -470 0 0 {name=p9 sig_type=std_logic lab=VOUT_P}
C {devices/lab_wire.sym} -70 -530 0 0 {name=p10 sig_type=std_logic lab=VOUT_N}
C {devices/vsource.sym} 110 -170 0 0 {name=V1 value=1.6}
C {devices/gnd.sym} 110 -120 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 110 -220 0 0 {name=p5 sig_type=std_logic lab=VCM1}
C {devices/lab_pin.sym} -315 -490 0 0 {name=p24 sig_type=std_logic lab=VIN_N1
}
C {devices/lab_wire.sym} -210 -420 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -190 -420 0 1 {name=p27 sig_type=std_logic lab=VCM1}
C {devices/lab_wire.sym} -230 -590 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -200 -590 0 1 {name=p31 sig_type=std_logic lab=IBIAS1}
C {devices/code_shown.sym} -560 130 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
C {devices/lab_pin.sym} -360 -210 0 0 {name=p2 sig_type=std_logic lab=VIN_P1
}
C {devices/lab_pin.sym} -285 -230 0 0 {name=p3 sig_type=std_logic lab=VIN_N1
}
C {pex_Filter_magic.sym} -180 -340 0 0 {name=x1}
