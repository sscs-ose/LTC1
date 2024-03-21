v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -10 140 -10 {
lab=OUT}
N -60 -10 -30 -10 {
lab=IN}
N 30 30 30 60 {
lab=VSS}
N 30 -80 30 -50 {
lab=VDD}
N -20 140 -20 170 {
lab=VDD}
N -20 230 -20 260 {
lab=VSS}
N 70 140 70 170 {
lab=VSS}
N 70 230 70 260 {
lab=GND}
N 160 140 160 170 {
lab=IN}
N 160 230 160 260 {
lab=VSS}
N 440 -10 470 -10 {
lab=OUT}
N 270 -10 300 -10 {
lab=IN}
N 360 30 360 60 {
lab=VSS}
N 360 -80 360 -50 {
lab=VDD}
C {devices/lab_pin.sym} 30 -70 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -50 -10 0 0 {name=p2 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 30 50 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 50 -160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1120 20 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_Inverter_Layout.spice"
.control
set color0 = white
set color1 = black
save all
dc v2 0 3 0.1
*plot v(VIN) v(PH1A) v(PH1) v(PH2)

tran 100p 4u 
plot v(IN) v(OUT)+3.5 v(OUTP)+3.5
*plot v(S1) v(S2)+3.5 v(S3)+7 v(S4)+10.5 v(S5)+14 v(S6)+17.5
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -20 200 0 0 {name=V1 value=3}
C {devices/lab_pin.sym} -20 250 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -20 150 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 70 200 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} 70 150 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 70 260 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 160 200 0 0 {name=V3 value="PULSE(3 0 0 100p 100p 1u 2u)"}
C {devices/lab_pin.sym} 160 250 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 160 150 0 0 {name=p11 sig_type=std_logic lab=IN}
C {devices/opin.sym} 140 -10 0 0 {name=p5 lab=OUT}
C {Inverter_PEX.sym} 60 60 0 0 {name=x1}
C {devices/lab_pin.sym} 360 -70 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 280 -10 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 360 50 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 470 -10 0 0 {name=p13 lab=OUTP}
C {Inverter.sym} 390 60 0 0 {name=x2}
