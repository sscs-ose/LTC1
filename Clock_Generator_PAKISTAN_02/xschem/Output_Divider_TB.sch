v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -400 -120 -400 -110 {
lab=VSS}
N -400 -200 -400 -180 {
lab=VDD}
N -320 -200 -320 -180 {
lab=VSS}
N -320 -120 -320 -100 {
lab=GND}
N -250 -120 -250 -110 {
lab=VSS}
N -250 -200 -250 -180 {
lab=CLK}
N -70 -300 -50 -300 {
lab=Vdiv}
N -50 -300 -40 -300 {
lab=Vdiv}
N -70 -340 -60 -340 {
lab=VSS}
N -70 -320 -60 -320 {
lab=VDD}
N -390 -340 -370 -340 {
lab=RST}
N -640 30 -640 40 {
lab=VSS}
N -640 -50 -640 -30 {
lab=RST}
N -40 -210 -40 -190 {
lab=VSS}
N -390 -280 -370 -280 {
lab=CLK}
N -40 -300 -40 -270 {
lab=Vdiv}
N -640 -210 -640 -200 {
lab=VSS}
N -640 -290 -640 -270 {
lab=P1}
N -640 -90 -640 -80 {
lab=VSS}
N -640 -170 -640 -150 {
lab=P0}
N -390 -300 -370 -300 {
lab=P0}
N -390 -320 -370 -320 {
lab=P1}
C {devices/vsource.sym} -400 -150 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -320 -150 0 0 {name=V2 value=0}
C {devices/vsource.sym} -250 -150 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2n 4n)"}
C {devices/lab_wire.sym} -320 -200 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -400 -110 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -400 -200 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -250 -200 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -250 -110 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -320 -100 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -420 -440 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -10 70 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 1n 200n
plot v(CLK) v(Vdiv)+3.5 v(RST)+7 v(P0)+10.5 v(P1)+14
write Output_Divider_TB.raw
.endc
"}
C {devices/capa.sym} -40 -240 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -40 -190 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -60 -340 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -60 -320 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -40 -300 2 0 {name=p13 sig_type=std_logic lab=Vdiv}
C {devices/lab_wire.sym} -390 -280 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -640 40 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -640 -50 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -390 -340 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -640 0 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/vsource.sym} -640 -240 0 0 {name=V6 value="pulse(3.3 0 0 100p 100p 80n 160n)"}
C {devices/lab_wire.sym} -640 -290 0 0 {name=p11 sig_type=std_logic lab=P1}
C {devices/lab_wire.sym} -640 -200 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -640 -120 0 0 {name=V7 value="pulse(3.3 0 0 100p 100p 40n 80n)"}
C {devices/lab_wire.sym} -640 -170 0 0 {name=p18 sig_type=std_logic lab=P0}
C {devices/lab_wire.sym} -640 -80 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -320 0 0 {name=p20 sig_type=std_logic lab=P1}
C {devices/lab_wire.sym} -390 -300 0 0 {name=p21 sig_type=std_logic lab=P0}
C {Output_Divider.sym} -220 -310 0 0 {name=x1}
