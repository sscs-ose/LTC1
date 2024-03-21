v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 -10 -200 -10 {
lab=VOUT}
N -420 -10 -400 -10 {
lab=VIN}
N -380 -80 -380 -60 {
lab=VDD}
N -250 -80 -250 -60 {
lab=VSS}
N -310 10 -310 30 {
lab=CLK}
N 150 -10 170 -10 {
lab=VOUTP}
N -50 -10 -30 -10 {
lab=VIN}
N -10 -80 -10 -60 {
lab=VDD}
N 120 -80 120 -60 {
lab=VSS}
N 60 10 60 30 {
lab=CLK}
N -380 -240 -380 -210 {
lab=VDD}
N -380 -150 -380 -120 {
lab=VSS}
N -290 -240 -290 -210 {
lab=VSS}
N -290 -150 -290 -120 {
lab=GND}
N -200 -240 -200 -210 {
lab=CLK}
N -200 -150 -200 -120 {
lab=VSS}
N 0 -240 0 -210 {
lab=VIN}
N 0 -150 0 -120 {
lab=VSS}
C {devices/lab_pin.sym} -420 -10 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -310 30 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -380 -80 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -250 -80 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -50 -10 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 60 30 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -10 -80 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 120 -80 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {Transmission_Gate.sym} 450 0 0 0 {name=x2}
C {devices/vsource.sym} -380 -180 0 0 {name=V1 value=3}
C {devices/lab_pin.sym} -380 -130 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -380 -230 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -290 -180 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} -290 -230 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -290 -120 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -200 -180 0 0 {name=V3 value="PULSE(3 0 0 1u 1u 1s 2s)"}
C {devices/lab_pin.sym} -200 -130 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -200 -230 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 0 -180 0 0 {name=V4 value=3}
C {devices/lab_pin.sym} 0 -130 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -230 0 0 {name=p17 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} -440 -350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 970 -360 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_Transmission_Gate_Layout.spice"
.control
set color0 = white
set color1 = black
save all
**dc v2 0 3 0.1
*plot v(VIN) v(PH1A) v(PH1) v(PH2)

tran 10m 4 
plot v(CLK) v(VIN)+3.5 v(VOUT)+7 v(VOUTP)+10.5
*plot v(S1) v(S2)+3.5 v(S3)+7 v(S4)+10.5 v(S5)+14 v(S6)+17.5
*write test_nfet_03v3.raw
.endc
"}
C {Transmission_Gate_PEX.sym} 80 0 0 0 {name=x1}
C {devices/opin.sym} -200 -10 0 0 {name=p5 lab=VOUT}
C {devices/opin.sym} 170 -10 0 0 {name=p10 lab=VOUTP}
