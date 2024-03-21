v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -930 -230 -900 -230 {
lab=A}
N -930 -180 -900 -180 {
lab=B}
N -770 -200 -740 -200 {
lab=OUTP}
N -850 -280 -850 -250 {
lab=VDD}
N -850 -140 -850 -110 {
lab=VSS}
N -870 -70 -870 -40 {
lab=VDD}
N -870 20 -870 50 {
lab=VSS}
N -780 -70 -780 -40 {
lab=VSS}
N -780 20 -780 50 {
lab=GND}
N -690 -70 -690 -40 {
lab=A}
N -690 20 -690 50 {
lab=VSS}
N -480 -70 -480 -40 {
lab=B}
N -480 20 -480 50 {
lab=VSS}
N -660 -230 -630 -230 {
lab=A}
N -660 -180 -630 -180 {
lab=B}
N -500 -200 -470 -200 {
lab=OUT}
N -580 -280 -580 -250 {
lab=VDD}
N -580 -140 -580 -110 {
lab=VSS}
C {devices/lab_pin.sym} -850 -110 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -850 -280 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -930 -230 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -930 -180 0 0 {name=p5 sig_type=std_logic lab=B}
C {devices/code_shown.sym} -950 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 260 -310 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_NOR_Layout.spice"
.control
set color0 = white
set color1 = black
save all
dc v2 0 3 0.1
*plot v(VIN) v(PH1A) v(PH1) v(PH2)

tran 100p 8u 
plot v(A) v(B)+3.5 v(OUT)+7 v(OUTP)+7
*plot v(S1) v(S2)+3.5 v(S3)+7 v(S4)+10.5 v(S5)+14 v(S6)+17.5
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -870 -10 0 0 {name=V1 value=3}
C {devices/lab_pin.sym} -870 40 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -870 -60 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -780 -10 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} -780 -60 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -780 50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -690 -10 0 0 {name=V3 value="PULSE(3 0 0 100p 100p 2u 4u)"}
C {devices/lab_pin.sym} -690 40 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -690 -60 0 0 {name=p11 sig_type=std_logic lab=A}
C {devices/vsource.sym} -480 -10 0 0 {name=V4 value="PULSE(3 0 0 100p 100p 4u 8u)"}
C {devices/lab_pin.sym} -480 40 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -480 -60 0 0 {name=p13 sig_type=std_logic lab=B}
C {devices/opin.sym} -740 -200 0 0 {name=p1 lab=OUTP}
C {devices/lab_pin.sym} -580 -110 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -580 -280 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -660 -230 0 0 {name=p15 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -660 -180 0 0 {name=p16 sig_type=std_logic lab=B}
C {devices/opin.sym} -470 -200 0 0 {name=p17 lab=OUT}
C {NOR.sym} -800 -190 0 0 {name=x1}
C {NOR_PEX.sym} -530 -190 0 0 {name=x2}
