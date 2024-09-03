v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -560 760 -560 780 {
lab=GND}
N -560 680 -560 700 {
lab=in1}
N -790 770 -790 790 {
lab=GND}
N -690 770 -690 790 {
lab=GND}
N -690 690 -690 710 {
lab=VDD}
N -790 670 -790 710 {
lab=VSS}
N -440 750 -440 770 {
lab=GND}
N -440 670 -440 690 {
lab=i2}
N -560 780 -560 800 {
lab=GND}
N -560 800 -440 800 {
lab=GND}
N -440 770 -440 800 {
lab=GND}
N -500 800 -500 830 {
lab=GND}
N -500 890 -500 910 {
lab=GND}
N -410 530 -410 620 {
lab=VSS}
N -410 410 -410 470 {
lab=OUT}
N -410 390 -410 410 {
lab=OUT}
N -760 350 -680 350 {
lab=in1}
N -760 390 -680 390 {
lab=OUT}
N -600 250 -600 320 {
lab=VDD}
N -630 250 -630 310 {
lab=VBIAS}
N -600 420 -600 480 {
lab=VSS}
N -790 960 -790 1000 {
lab=VSS}
N -790 860 -790 900 {
lab=VBIAS}
N -520 370 -410 370 {
lab=OUT}
N -410 370 -410 390 {
lab=OUT}
N -760 390 -760 520 {
lab=OUT}
N -760 520 -460 520 {
lab=OUT}
N -460 370 -460 520 {
lab=OUT}
C {devices/code_shown.sym} 40 840 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 340 20 0 0 {name=NGSPICE only_toplevel=true
value="
.control
*save all
*.options savecurrents
save all 
*@m.xm1.m0[vdsat]
*-@m.xm1.m0[vdsat]

*dc V6 0.9 1.1 0.1m
*plot v(OUT_N) v(OUT_P)

*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]

tran 100p 200n
plot v(OUT)
plot v(x1.vinp) v(x1.vinn)
plot v(x1.outin)
plot i(V5)
*let gain = (maximum(out_p)-minimum(out_n))/1e-3
*print gain
plot i(V5)
*ac dec 50 1 1e9
*let tf = OUT_N/i1
*let gain = db(tf)
*let phase = (180/pi)*ph(tf)

*plot gain
*plot phase

*let gain = (maximum(out1)-minimum(out2) )* 1000
*print vbb

*plot vdiff
display all
.endc
"}
C {devices/vsource.sym} -560 730 0 0 {name=V3 value="pulse(0.5 2 0 100p 100p 50n 100n)"}
C {devices/lab_pin.sym} -560 680 0 0 {name=p12 sig_type=std_logic lab=in1}
C {devices/vsource.sym} -790 740 0 0 {name=V4 value=0}
C {devices/gnd.sym} -790 790 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -690 740 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} -690 790 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -690 690 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -790 690 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -440 720 0 0 {name=V6 value="pulse(0 0.5 0 100p 100p 50n 100n)"}
C {devices/lab_pin.sym} -440 670 0 0 {name=p16 sig_type=std_logic lab=i2}
C {devices/gnd.sym} -500 910 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -500 830 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -410 440 0 0 {name=p42 sig_type=std_logic lab=OUT
}
C {devices/lab_wire.sym} -410 590 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -410 500 0 1 {name=C4
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/isource.sym} -790 930 0 0 {name=I0 value=30u}
C {devices/lab_wire.sym} -600 470 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -790 990 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -790 880 0 0 {name=p4 sig_type=std_logic lab=VBIAS}
C {devices/lab_wire.sym} -630 270 0 0 {name=p5 sig_type=std_logic lab=VBIAS}
C {devices/lab_wire.sym} -600 280 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -760 350 0 0 {name=p7 sig_type=std_logic lab=in1}
C {Folded_opamp_single.sym} -630 370 0 0 {name=x1}
