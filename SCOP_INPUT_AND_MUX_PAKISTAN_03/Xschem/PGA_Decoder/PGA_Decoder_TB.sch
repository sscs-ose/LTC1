v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 -30 10 -30 {
lab=A}
N -40 10 10 10 {
lab=B}
N -40 50 10 50 {
lab=C}
N 210 -40 250 -40 {
lab=S1}
N 210 -20 250 -20 {
lab=S2}
N 210 -0 250 -0 {
lab=S3}
N 210 20 250 20 {
lab=S4}
N 210 40 250 40 {
lab=S5}
N 210 60 250 60 {
lab=S6}
N 110 -100 110 -80 {
lab=VDD}
N 110 100 110 120 {
lab=VSS}
N 110 -180 110 -160 {
lab=VSS}
N 110 180 110 200 {
lab=GND}
N 360 30 360 50 {
lab=VSS}
N 360 -50 360 -30 {
lab=A}
N 210 180 210 200 {
lab=VSS}
N 210 100 210 120 {
lab=B}
N 420 180 420 200 {
lab=VSS}
N 420 100 420 120 {
lab=C}
C {devices/opin.sym} 250 -40 0 0 {name=p33 lab=S1}
C {devices/opin.sym} 250 -20 0 0 {name=p1 lab=S2}
C {devices/opin.sym} 250 0 0 0 {name=p2 lab=S3}
C {devices/opin.sym} 250 20 0 0 {name=p3 lab=S4}
C {devices/opin.sym} 250 40 0 0 {name=p4 lab=S5}
C {devices/opin.sym} 250 60 0 0 {name=p5 lab=S6}
C {devices/vsource.sym} 110 150 0 0 {name=V1 value=0}
C {devices/vsource.sym} 110 -130 2 0 {name=V2 value=3}
C {devices/gnd.sym} 110 200 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 110 110 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 110 -170 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 360 0 0 0 {name=V3 value="PULSE(3 0 0 10p 10p 400n 800n)"}
C {devices/lab_pin.sym} 360 50 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -40 0 0 {name=p9 sig_type=std_logic lab=A}
C {devices/vsource.sym} 210 150 0 0 {name=V4 value="PULSE(3 0 0 10p 10p 200n 400n)"}
C {devices/lab_pin.sym} 210 200 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 210 110 0 0 {name=p11 sig_type=std_logic lab=B}
C {devices/vsource.sym} 420 150 0 0 {name=V5 value="PULSE(3 0 0 10p 10p 100n 200n)"}
C {devices/lab_pin.sym} 420 200 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 110 0 0 {name=p13 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} -40 -30 0 0 {name=p14 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -40 10 0 0 {name=p15 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -40 50 0 0 {name=p16 sig_type=std_logic lab=C}
C {devices/code_shown.sym} 230 -160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1250 -70 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_PGA_Dec_Layout.spice"
.control
set color0 = white
set color1 = black
save all
dc v2 0 3.3 0.1
*plot v(VIN) v(PH1A) v(PH1) v(PH2)

tran 100p 800n 
plot v(A)+7 v(B)+3.5 v(C)
plot v(S1) v(S2)+3.5 v(S3)+7 v(S4)+10.5 v(S5)+14 v(S6)+17.5
*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_pin.sym} 110 -90 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {PGA_Decoder_PEX.sym} 110 20 0 0 {name=x1}
