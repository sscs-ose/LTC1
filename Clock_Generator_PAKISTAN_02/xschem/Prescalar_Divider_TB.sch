v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -730 -350 -730 -340 {
lab=VSS}
N -730 -430 -730 -410 {
lab=VDD}
N -650 -430 -650 -410 {
lab=VSS}
N -650 -350 -650 -330 {
lab=GND}
N -580 -350 -580 -340 {
lab=VSS}
N -580 -430 -580 -410 {
lab=CLK}
N -400 -530 -380 -530 {
lab=Vdiv}
N -380 -530 -370 -530 {
lab=Vdiv}
N -400 -570 -390 -570 {
lab=VSS}
N -400 -550 -390 -550 {
lab=VDD}
N -720 -570 -700 -570 {
lab=RST}
N -970 -200 -970 -190 {
lab=VSS}
N -970 -280 -970 -260 {
lab=RST}
N -370 -440 -370 -420 {
lab=VSS}
N -720 -510 -700 -510 {
lab=CLK}
N -370 -530 -370 -500 {
lab=Vdiv}
N -970 -440 -970 -430 {
lab=VSS}
N -970 -520 -970 -500 {
lab=P1}
N -970 -320 -970 -310 {
lab=VSS}
N -970 -400 -970 -380 {
lab=P0}
N -720 -530 -700 -530 {
lab=P0}
N -720 -550 -700 -550 {
lab=P1}
C {devices/vsource.sym} -730 -380 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -650 -380 0 0 {name=V2 value=0}
C {devices/vsource.sym} -580 -380 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 250n 500n)"}
C {devices/lab_wire.sym} -650 -430 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -730 -340 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -730 -430 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -580 -430 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -580 -340 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -650 -330 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -750 -670 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -340 -160 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 1n 50u
plot v(CLK) v(Vdiv)+3.5 v(RST)+7 v(P0)+10.5 v(P1)+14
**write Prescalar_Divider_TB.raw
.endc
"}
C {devices/capa.sym} -370 -470 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -370 -420 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -570 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -550 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -370 -530 2 0 {name=p13 sig_type=std_logic lab=Vdiv}
C {devices/lab_wire.sym} -720 -510 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -970 -190 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -970 -280 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -720 -570 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -970 -230 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/vsource.sym} -970 -470 0 0 {name=V6 value="pulse(3.3 0 0 100p 100p 20u 40u)"}
C {devices/lab_wire.sym} -970 -520 0 0 {name=p11 sig_type=std_logic lab=P1}
C {devices/lab_wire.sym} -970 -430 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -970 -350 0 0 {name=V7 value="pulse(3.3 0 0 100p 100p 10u 20u)"}
C {devices/lab_wire.sym} -970 -400 0 0 {name=p18 sig_type=std_logic lab=P0}
C {devices/lab_wire.sym} -970 -310 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -720 -550 0 0 {name=p20 sig_type=std_logic lab=P1}
C {devices/lab_wire.sym} -720 -530 0 0 {name=p21 sig_type=std_logic lab=P0}
