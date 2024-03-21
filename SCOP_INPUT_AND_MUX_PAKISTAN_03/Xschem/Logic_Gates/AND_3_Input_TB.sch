v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 -40 390 -40 {
lab=OUT}
N 190 -60 230 -60 {
lab=A}
N 190 -40 230 -40 {
lab=B}
N 190 -20 230 -20 {
lab=C}
N 280 -130 280 -90 {
lab=VDD}
N 280 10 280 50 {
lab=VSS}
N 230 110 230 140 {
lab=VDD}
N 230 200 230 230 {
lab=VSS}
N 320 110 320 140 {
lab=VSS}
N 320 200 320 230 {
lab=GND}
N 410 110 410 140 {
lab=A}
N 410 200 410 230 {
lab=VSS}
N 630 110 630 140 {
lab=B}
N 630 200 630 230 {
lab=VSS}
N 840 110 840 140 {
lab=C}
N 840 200 840 230 {
lab=VSS}
N 720 -40 760 -40 {
lab=OUTP}
N 560 -60 600 -60 {
lab=A}
N 560 -40 600 -40 {
lab=B}
N 560 -20 600 -20 {
lab=C}
N 650 -130 650 -90 {
lab=VDD}
N 650 10 650 50 {
lab=VSS}
C {devices/lab_pin.sym} 280 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 40 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -60 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 200 -40 0 0 {name=p5 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 200 -20 0 0 {name=p6 sig_type=std_logic lab=C}
C {devices/opin.sym} 390 -40 0 0 {name=p2 lab=OUT}
C {devices/code_shown.sym} 210 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1510 -190 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_AND_3_In_Layout.spice"
.control
set color0 = white
set color1 = black
save all
dc v2 0 3 0.1
*plot v(VIN) v(PH1A) v(PH1) v(PH2)

tran 1n 16u 
plot v(A) v(B)+3.5 v(C)+7 v(OUT)+10.5 v(OUTP)+10.5
*plot v(S1) v(S2)+3.5 v(S3)+7 v(S4)+10.5 v(S5)+14 v(S6)+17.5
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 230 170 0 0 {name=V1 value=3.3}
C {devices/lab_pin.sym} 230 220 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 120 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 320 170 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} 320 120 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 320 230 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 410 170 0 0 {name=V3 value="PULSE(3 0 0 100p 100p 2u 4u)"}
C {devices/lab_pin.sym} 410 220 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 120 0 0 {name=p11 sig_type=std_logic lab=A}
C {devices/vsource.sym} 630 170 0 0 {name=V4 value="PULSE(3 0 0 100p 100p 4u 8u)"}
C {devices/lab_pin.sym} 630 220 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 120 0 0 {name=p13 sig_type=std_logic lab=B}
C {devices/vsource.sym} 840 170 0 0 {name=V5 value="PULSE(3 0 0 100p 100p 8u 16u)"}
C {devices/lab_pin.sym} 840 220 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 120 0 0 {name=p15 sig_type=std_logic lab=C}
C {AND_3_Input_PEX.sym} -140 30 0 0 {name=x1}
C {devices/lab_pin.sym} 650 -120 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 650 40 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 570 -60 0 0 {name=p18 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 570 -40 0 0 {name=p19 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 570 -20 0 0 {name=p20 sig_type=std_logic lab=C}
C {devices/opin.sym} 760 -40 0 0 {name=p21 lab=OUTP}
C {AND_3_Input.sym} 230 30 0 0 {name=x2}
