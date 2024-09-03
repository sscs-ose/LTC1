v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -40 210 -40 {
lab=A}
N 180 -20 210 -20 {
lab=B}
N 300 -30 330 -30 {
lab=OUTP}
N 250 -100 250 -70 {
lab=VDD}
N 250 10 250 40 {
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
N 620 110 620 140 {
lab=B}
N 620 200 620 230 {
lab=VSS}
N 450 -40 480 -40 {
lab=A}
N 450 -20 480 -20 {
lab=B}
N 570 -30 600 -30 {
lab=OUT}
N 520 -100 520 -70 {
lab=VDD}
N 520 10 520 40 {
lab=VSS}
C {OR_2_Input.sym} -20 80 0 0 {name=x1}
C {devices/lab_pin.sym} 250 40 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 250 -100 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -40 0 0 {name=p4 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 180 -20 0 0 {name=p5 sig_type=std_logic lab=B}
C {devices/code_shown.sym} 150 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1360 -130 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_OR_2_In_Layout.spice"
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
C {devices/vsource.sym} 230 170 0 0 {name=V1 value=3}
C {devices/lab_pin.sym} 230 220 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 120 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 320 170 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} 320 120 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 320 230 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 410 170 0 0 {name=V3 value="PULSE(3 0 0 100p 100p 2u 4u)"}
C {devices/lab_pin.sym} 410 220 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 120 0 0 {name=p11 sig_type=std_logic lab=A}
C {devices/vsource.sym} 620 170 0 0 {name=V4 value="PULSE(3 0 0 100p 100p 4u 8u)"}
C {devices/lab_pin.sym} 620 220 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 120 0 0 {name=p13 sig_type=std_logic lab=B}
C {devices/opin.sym} 330 -30 0 0 {name=p1 lab=OUTP}
C {devices/lab_pin.sym} 520 40 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 520 -100 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 -40 0 0 {name=p15 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 450 -20 0 0 {name=p16 sig_type=std_logic lab=B}
C {devices/opin.sym} 600 -30 0 0 {name=p17 lab=OUT}
C {OR_2_Input_PEX.sym} 250 80 0 0 {name=x2}
