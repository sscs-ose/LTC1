v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -630 -210 -600 -210 {
lab=OUT}
N -800 -210 -770 -210 {
lab=IN}
N -710 -170 -710 -140 {
lab=VSS}
N -710 -280 -710 -250 {
lab=VDD}
N -760 -60 -760 -30 {
lab=VDD}
N -760 30 -760 60 {
lab=VSS}
N -670 -60 -670 -30 {
lab=VSS}
N -670 30 -670 60 {
lab=GND}
N -580 -60 -580 -30 {
lab=IN}
N -580 30 -580 60 {
lab=VSS}
N -300 -210 -270 -210 {
lab=OUTP}
N -470 -210 -440 -210 {
lab=IN}
N -380 -170 -380 -140 {
lab=VSS}
N -380 -280 -380 -250 {
lab=VDD}
C {devices/lab_pin.sym} -710 -270 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -790 -210 0 0 {name=p2 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} -710 -150 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -690 -360 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 380 -180 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_Inv_16x_Layout.spice"
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
C {devices/vsource.sym} -760 0 0 0 {name=V1 value=3}
C {devices/lab_pin.sym} -760 50 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -760 -50 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -670 0 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} -670 -50 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -670 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -580 0 0 0 {name=V3 value="PULSE(3 0 0 100p 100p 1u 2u)"}
C {devices/lab_pin.sym} -580 50 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -580 -50 0 0 {name=p11 sig_type=std_logic lab=IN}
C {devices/opin.sym} -600 -210 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} -380 -270 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} -460 -210 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} -380 -150 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/opin.sym} -270 -210 0 0 {name=p13 lab=OUTP}
C {INV_16x.sym} -710 -160 0 0 {name=x2}
C {INV_16x_PEX.sym} -1040 -160 0 0 {name=x1}
