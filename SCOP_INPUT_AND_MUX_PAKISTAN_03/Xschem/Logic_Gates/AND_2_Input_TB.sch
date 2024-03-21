v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -20 190 -20 {
lab=A}
N 160 20 190 20 {
lab=B}
N 310 0 340 0 {
lab=OUT}
N 240 -80 240 -50 {
lab=VDD}
N 240 50 240 80 {
lab=VSS}
N 230 -320 230 -290 {
lab=VDD}
N 230 -230 230 -200 {
lab=VSS}
N 320 -320 320 -290 {
lab=VSS}
N 320 -230 320 -200 {
lab=GND}
N 480 -300 480 -270 {
lab=A}
N 480 -210 480 -180 {
lab=VSS}
N 690 -300 690 -270 {
lab=B}
N 690 -210 690 -180 {
lab=VSS}
N 520 -40 550 -40 {
lab=A}
N 520 0 550 0 {
lab=B}
N 670 -20 700 -20 {
lab=OUTP}
N 600 -100 600 -70 {
lab=VDD}
N 600 30 600 60 {
lab=VSS}
C {devices/lab_pin.sym} 240 -70 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 -20 0 0 {name=p2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 160 20 0 0 {name=p3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 240 70 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 230 -260 0 0 {name=V1 value=3}
C {devices/lab_pin.sym} 230 -210 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -310 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 320 -260 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} 320 -310 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 320 -200 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 480 -240 0 0 {name=V3 value="PULSE(3 0 0 100p 100p 2u 4u)"}
C {devices/lab_pin.sym} 480 -190 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 480 -290 0 0 {name=p10 sig_type=std_logic lab=A}
C {devices/vsource.sym} 690 -240 0 0 {name=V4 value="PULSE(3 0 0 100p 100p 4u 8u)"}
C {devices/lab_pin.sym} 690 -190 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 690 -290 0 0 {name=p12 sig_type=std_logic lab=B}
C {devices/code_shown.sym} 30 -160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1430 -140 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_AND_2_In_Layout.spice"
.control
set color0 = white
set color1 = black
save all
**dc v2 0 3 0.1
*plot v(VIN) v(PH1A) v(PH1) v(PH2)

tran 1n 8u 
plot v(A) v(B)+3.5 v(OUT)+7 v(OUTP)+7
*plot v(S1) v(S2)+3.5 v(S3)+7 v(S4)+10.5 v(S5)+14 v(S6)+17.5
*write test_nfet_03v3.raw
.endc
"}
C {devices/opin.sym} 340 0 0 0 {name=p5 lab=OUT}
C {devices/lab_pin.sym} 600 -90 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 520 -40 0 0 {name=p14 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 520 0 0 0 {name=p15 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 600 50 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 700 -20 0 0 {name=p17 lab=OUTP}
C {AND_2_Input_PEX.sym} -50 0 0 0 {name=x1}
C {AND_2_Input.sym} 310 -20 0 0 {name=x2}
