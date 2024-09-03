v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 700 -740 1500 -340 {flags=graph
y1=1.1
y2=1.42
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.23156e-07
x2=5.23155e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
}
N -350 50 -350 70 {
lab=GND}
N -350 -40 -350 -10 {
lab=VSS}
N -260 -40 -260 -10 {
lab=VDD}
N -260 50 -260 80 {
lab=VSS}
N -430 -40 -430 -10 {
lab=VCM}
N -430 50 -430 80 {
lab=VSS}
N -150 -50 -150 -10 {
lab=IBIAS1}
N -150 50 -150 110 {
lab=VSS}
N -320 130 -320 160 {
lab=IN1}
N -320 220 -320 250 {
lab=VSS}
N -190 130 -190 160 {
lab=IN2}
N -190 220 -190 250 {
lab=VSS}
N -250 250 -190 250 {
lab=VSS}
N -250 250 -250 280 {
lab=VSS}
N -320 250 -250 250 {
lab=VSS}
N 500 -190 500 -150 {
lab=OUT_P}
N 500 -90 500 -50 {
lab=VSS}
N 410 -190 410 -150 {
lab=OUT_N}
N 410 -90 410 -50 {
lab=VSS}
N 160 -120 160 -80 {
lab=IBIAS1}
N 220 -120 220 -80 {
lab=VDD}
N 280 -120 280 -80 {
lab=VSS}
N 340 0 380 0 {
lab=OUT_N}
N 340 40 380 40 {
lab=OUT_P}
N 60 60 100 60 {
lab=VCM}
N 60 20 100 20 {
lab=IN_P}
N 60 -20 100 -20 {
lab=IN_N}
N 140 -440 220 -440 {
lab=IN1}
N 140 -360 220 -360 {
lab=IN2}
N 280 -440 340 -440 {
lab=IN_N}
N 280 -360 340 -360 {
lab=IN_P}
N 400 -440 480 -440 {
lab=OUT_P}
N 400 -360 480 -360 {
lab=OUT_N}
C {devices/vsource.sym} -350 20 0 0 {name=V1 value=0}
C {devices/gnd.sym} -350 70 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -350 -30 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -260 20 0 0 {name=V2 value=3.3}
C {devices/lab_pin.sym} -260 -30 0 1 {name=p34 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -260 70 0 1 {name=p35 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 580 -220 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_Folded_Diff_Op_Amp_Layout.spice"
.control
save all
set color0 = white
set color 1 = black
save all
.options savecurrents

tran 1n 400n
*dc V4 0 100m 1m
plot v(OUT_P) v(OUT_N)
plot i(v2)


write Folded_Cascode_Diff_TB_SR.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 1u 2m
*let gain = (maximum(out1)-minimum(out2) )* 1000
*print vbb



*plot vdiff
display all
.endc
"}
C {devices/vsource.sym} -430 20 0 0 {name=V3 value=1.6}
C {devices/lab_pin.sym} -430 -30 0 1 {name=p20 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} -430 70 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {devices/isource.sym} -150 20 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} -150 90 0 1 {name=p49 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -150 -30 0 1 {name=p50 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} -320 140 0 1 {name=p64 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -190 140 0 1 {name=p65 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -250 270 0 1 {name=p66 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -190 190 0 0 {name=V5 value="PULSE(1.2 0.1 0 100p 100p 100n 200n)" }
C {devices/capa.sym} 500 -120 0 0 {name=C1
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 410 -120 0 0 {name=C2
m=1
value=15p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 500 -60 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -60 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -180 2 0 {name=p16 sig_type=std_logic lab=OUT_P}
C {devices/lab_pin.sym} 410 -180 2 0 {name=p17 sig_type=std_logic lab=OUT_N}
C {devices/lab_pin.sym} 160 -120 1 0 {name=p3 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} 220 -120 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 -120 1 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 60 60 0 0 {name=p6 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 60 -20 0 0 {name=p18 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 60 20 0 0 {name=p19 sig_type=std_logic lab=IN_P}
C {devices/opin.sym} 380 0 0 0 {name=p2 lab=OUT_N}
C {devices/opin.sym} 380 40 0 0 {name=p23 lab=OUT_P}
C {devices/code_shown.sym} -500 -220 0 0 {name=MODELS1 only_toplevel=true
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
C {devices/res.sym} 250 -440 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 370 -440 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 370 -360 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 250 -360 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 470 -440 2 0 {name=p1 sig_type=std_logic lab=OUT_P}
C {devices/lab_pin.sym} 470 -360 2 0 {name=p7 sig_type=std_logic lab=OUT_N}
C {devices/lab_pin.sym} 320 -440 1 0 {name=p10 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 310 -360 3 0 {name=p11 sig_type=std_logic lab=IN_P}
C {devices/lab_pin.sym} 160 -440 1 1 {name=p12 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 160 -360 1 1 {name=p13 sig_type=std_logic lab=IN2}
C {devices/vsource.sym} -320 190 0 0 {name=V4 value="PULSE(0.1 1.2 0 100p 100p 100n 200n)" }
C {Folded_Cascode_Diff_PEX.sym} 250 60 0 0 {name=x1}
