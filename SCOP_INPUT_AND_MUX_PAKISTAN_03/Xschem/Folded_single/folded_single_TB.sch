v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 580 320 600 {
lab=GND}
N 320 500 320 520 {
lab=VDD}
N -170 340 -170 360 {
lab=#net1}
N -170 260 -170 280 {
lab=VINP}
N -40 340 -40 360 {
lab=#net1}
N -40 260 -40 280 {
lab=VINN}
N -170 360 -40 360 {
lab=#net1}
N -110 360 -110 380 {
lab=#net1}
N -170 210 -170 260 {
lab=VINP}
N -170 200 -170 210 {
lab=VINP}
N -170 200 30 200 {
lab=VINP}
N -40 220 30 220 {
lab=VINN}
N -40 220 -40 260 {
lab=VINN}
N 240 210 300 210 {
lab=OUT}
N 150 290 150 340 {
lab=IBIAS}
N 150 340 200 340 {
lab=IBIAS}
N 120 100 120 140 {
lab=VDD}
N 170 100 170 120 {
lab=VSS}
N 140 100 170 100 {
lab=VSS}
N 140 100 140 140 {
lab=VSS}
N 170 580 170 600 {
lab=GND}
N 170 500 170 520 {
lab=VSS}
N 70 580 70 620 {
lab=VSS}
N 70 480 70 520 {
lab=IBIAS}
N 100 290 100 340 {
lab=VBS2}
N 120 290 120 340 {
lab=VBS3}
N 420 330 420 380 {
lab=VSS}
N 300 210 320 210 {
lab=OUT}
N -110 440 -110 480 {
lab=GND}
N 80 290 80 340 {
lab=VBIASN}
N -80 0 -80 50 {
lab=OUT}
N -80 0 -70 0 {
lab=OUT}
N -10 0 80 0 {
lab=#net2}
N 140 0 190 0 {
lab=OUTo}
N 420 240 420 270 {
lab=OUTo}
N 240 230 320 230 {
lab=OUTo}
C {devices/code_shown.sym} -120 710 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 520 160 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_fold_cascode_opamp_mag.spice"
.control
*save all
*.options savecurrents
save all 

*tran 100p 400n
dc V4 0 3 10m
plot v(OUTo)
*plot v(IBIAS)
plot i(V5)

*ac dec 50 1 1e9
let tf = outo/vinp
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

*plot vdiff
display all
.endc
"}
C {devices/vsource.sym} 320 550 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 320 600 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 320 500 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -170 310 0 0 {name=V2 value=0}
C {devices/gnd.sym} -110 480 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 120 120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -60 200 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_wire.sym} 180 340 0 1 {name=p7 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 170 110 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 170 550 0 0 {name=V1 value=0}
C {devices/gnd.sym} 170 600 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 170 500 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 70 550 0 0 {name=I1 value=50u}
C {devices/lab_wire.sym} 70 610 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 70 500 0 1 {name=p10 sig_type=std_logic lab=IBIAS}
C {devices/lab_wire.sym} 120 330 1 1 {name=p11 sig_type=std_logic lab=VBS3}
C {devices/lab_wire.sym} 100 330 1 1 {name=p12 sig_type=std_logic lab=VBS2}
C {devices/capa.sym} 420 300 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 420 360 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/res.sym} -40 0 1 0 {name=R6
value=800
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 170 0 0 1 {name=p62 sig_type=std_logic lab=OUTo
}
C {devices/capa.sym} 110 0 3 0 {name=C2
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 80 330 1 1 {name=p22 sig_type=std_logic lab=VBIASN}
C {devices/vsource.sym} -40 310 0 0 {name=V3 value=0}
C {devices/lab_wire.sym} -40 250 0 0 {name=p4 sig_type=std_logic lab=VINN}
C {devices/lab_wire.sym} -80 30 0 0 {name=p13 sig_type=std_logic lab=OUT
}
C {devices/lab_wire.sym} 310 210 0 0 {name=p23 sig_type=std_logic lab=OUT
}
C {devices/lab_wire.sym} 420 250 0 0 {name=p8 sig_type=std_logic lab=OUTo
}
C {devices/lab_wire.sym} 310 230 0 0 {name=p15 sig_type=std_logic lab=OUTo
}
C {pex_fold_cascode_opamp_mag.sym} 130 210 0 0 {name=x1}
C {devices/vsource.sym} -110 410 0 0 {name=V4 value=0}
