v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -420 -70 -420 -60 {
lab=VSS}
N -420 -150 -420 -130 {
lab=VDD}
N -340 -150 -340 -130 {
lab=VSS}
N -340 -70 -340 -50 {
lab=GND}
N -270 -70 -270 -60 {
lab=VSS}
N -270 -150 -270 -130 {
lab=CLK}
N -90 -250 -70 -250 {
lab=Vdiv}
N -70 -250 -60 -250 {
lab=Vdiv}
N -90 -290 -80 -290 {
lab=VSS}
N -90 -270 -80 -270 {
lab=VDD}
N -410 -290 -390 -290 {
lab=RST}
N -660 80 -660 90 {
lab=VSS}
N -660 0 -660 20 {
lab=RST}
N -60 -160 -60 -140 {
lab=VSS}
N -410 -210 -390 -210 {
lab=CLK}
N -60 -250 -60 -220 {
lab=Vdiv}
N -660 -280 -660 -270 {
lab=VSS}
N -660 -360 -660 -340 {
lab=F0}
N -660 -160 -660 -150 {
lab=VSS}
N -660 -240 -660 -220 {
lab=F1}
N -660 -40 -660 -30 {
lab=VSS}
N -660 -120 -660 -100 {
lab=F2}
N -410 -230 -390 -230 {
lab=F0}
N -410 -250 -390 -250 {
lab=F1}
N -410 -270 -390 -270 {
lab=F2}
C {devices/vsource.sym} -420 -100 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -340 -100 0 0 {name=V2 value=0}
C {devices/vsource.sym} -270 -100 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -340 -150 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -420 -60 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -420 -150 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -270 -150 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -270 -60 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -340 -50 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -440 -390 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -30 120 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 1n 10u
plot v(CLK) v(Vdiv)+3.5 v(RST)+7 v(F0)+10.5 v(F1)+14 v(F2)+17.5
**write Feedback_Divider_TB.raw
.endc
"}
C {devices/capa.sym} -60 -190 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -60 -140 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 -290 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 -270 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -60 -250 2 0 {name=p13 sig_type=std_logic lab=Vdiv}
C {devices/lab_wire.sym} -410 -210 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -660 90 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -660 0 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -410 -290 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -660 50 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {Feedback_Divider.sym} -240 -250 0 0 {name=x1}
C {devices/vsource.sym} -660 -310 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 1u 2u)"}
C {devices/lab_wire.sym} -660 -360 0 0 {name=p9 sig_type=std_logic lab=F0}
C {devices/lab_wire.sym} -660 -270 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -660 -190 0 0 {name=V6 value="pulse(3.3 0 0 100p 100p 2u 4u)"}
C {devices/lab_wire.sym} -660 -240 0 0 {name=p11 sig_type=std_logic lab=F1}
C {devices/lab_wire.sym} -660 -150 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -660 -70 0 0 {name=V7 value="pulse(3.3 0 0 100p 100p 4u 8u)"}
C {devices/lab_wire.sym} -660 -120 0 0 {name=p18 sig_type=std_logic lab=F2}
C {devices/lab_wire.sym} -660 -30 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -410 -230 0 0 {name=p20 sig_type=std_logic lab=F0}
C {devices/lab_wire.sym} -410 -250 0 0 {name=p21 sig_type=std_logic lab=F1}
C {devices/lab_wire.sym} -410 -270 0 0 {name=p22 sig_type=std_logic lab=F2}
