v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -570 580 -570 600 {
lab=#net1}
N -570 500 -570 520 {
lab=in1}
N -850 560 -850 580 {
lab=GND}
N -750 560 -750 580 {
lab=GND}
N -750 480 -750 500 {
lab=VDD}
N -850 460 -850 500 {
lab=VSS}
N -440 580 -440 600 {
lab=#net1}
N -440 500 -440 520 {
lab=in2}
N -570 600 -440 600 {
lab=#net1}
N -510 600 -510 640 {
lab=#net1}
N -510 700 -510 720 {
lab=GND}
N -310 350 -310 440 {
lab=VSS}
N -310 230 -310 290 {
lab=OUT}
N -310 210 -310 230 {
lab=OUT}
N -660 170 -580 170 {
lab=in1}
N -660 210 -580 210 {
lab=in2}
N -500 70 -500 140 {
lab=VDD}
N -530 70 -530 130 {
lab=VBIAS}
N -500 240 -500 300 {
lab=VSS}
N -970 570 -970 610 {
lab=VSS}
N -970 470 -970 510 {
lab=VBIAS}
N -420 190 -310 190 {
lab=OUT}
N -310 190 -310 210 {
lab=OUT}
C {devices/code_shown.sym} -1070 720 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -60 -60 0 0 {name=NGSPICE only_toplevel=true
value="
.control
*save all
*.options savecurrents
save all 
save @m.x1.xm1.m0[vds]
+ @m.x1.xm1.m0[vdsat]
+ @m.x1.xm4.m0[vds]
+ @m.x1.xm7.m0[vds]
+ @m.x1.xm1.m0[id]
+ @m.x1.xm9.m0[id]
+ @m.x1.xm5.m0[vds]

*tran 1u 2m
dc V1 0 3 10m
plot v(OUT)
plot v(x1.outin)
*print mean(@m.xm2.m0[vds]) mean(@m.xm4.m0[vds]) mean(@m.xm1.m0[vds])

*ac dec 50 1 1e9
*let tf = out_n/in1
*let gain = db(tf)
*let phase = (180/pi)*ph(tf)

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
print minimum(@m.x1.xm9.m0[id]) minimum(@m.x1.xm1.m0[id])
*m10vds m12vds

*plot vdiff
display all
.endc
"}
C {devices/vsource.sym} -570 550 0 0 {name=V3 value=0}
C {devices/lab_pin.sym} -570 500 0 0 {name=p12 sig_type=std_logic lab=in1}
C {devices/vsource.sym} -850 530 0 0 {name=V4 value=0}
C {devices/gnd.sym} -850 580 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -750 530 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} -750 580 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -750 480 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -850 480 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -440 550 0 0 {name=V6 value=0}
C {devices/lab_pin.sym} -440 500 0 0 {name=p16 sig_type=std_logic lab=in2}
C {devices/vsource.sym} -510 670 0 0 {name=V1 value=0}
C {devices/gnd.sym} -510 720 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -310 260 0 0 {name=p42 sig_type=std_logic lab=OUT
}
C {devices/lab_wire.sym} -310 410 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -310 320 0 1 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -500 290 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -530 90 0 0 {name=p5 sig_type=std_logic lab=VBIAS}
C {devices/lab_wire.sym} -500 100 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -660 170 0 0 {name=p7 sig_type=std_logic lab=in1}
C {devices/lab_wire.sym} -660 210 2 0 {name=p8 sig_type=std_logic lab=in2}
C {devices/isource.sym} -970 540 0 0 {name=I0 value=20u}
C {devices/lab_wire.sym} -970 600 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -970 490 0 0 {name=p4 sig_type=std_logic lab=VBIAS}
C {opamp_new_test.sym} -520 190 0 0 {name=x1}
