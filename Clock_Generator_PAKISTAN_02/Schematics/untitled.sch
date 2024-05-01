v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 390 -410 390 -400 {
lab=VSS}
N 390 -490 390 -470 {
lab=VDD}
N 470 -490 470 -470 {
lab=VSS}
N 470 -410 470 -390 {
lab=GND}
N 540 -410 540 -400 {
lab=VSS}
N 540 -490 540 -470 {
lab=CLK}
N 720 -590 740 -590 {
lab=Vdiv}
N 740 -590 750 -590 {
lab=Vdiv}
N 720 -630 730 -630 {
lab=VSS}
N 720 -610 730 -610 {
lab=VDD}
N 400 -630 420 -630 {
lab=RST}
N 150 -260 150 -250 {
lab=VSS}
N 150 -340 150 -320 {
lab=RST}
N 750 -500 750 -480 {
lab=VSS}
N 400 -550 420 -550 {
lab=CLK}
N 750 -590 750 -560 {
lab=Vdiv}
N 150 -620 150 -610 {
lab=VSS}
N 150 -700 150 -680 {
lab=F0}
N 150 -500 150 -490 {
lab=VSS}
N 150 -580 150 -560 {
lab=F1}
N 150 -380 150 -370 {
lab=VSS}
N 150 -460 150 -440 {
lab=F2}
N 400 -570 420 -570 {
lab=F0}
N 400 -590 420 -590 {
lab=F1}
N 400 -610 420 -610 {
lab=F2}
C {devices/vsource.sym} 390 -440 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 470 -440 0 0 {name=V2 value=0}
C {devices/vsource.sym} 540 -440 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 470 -490 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 390 -400 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 390 -490 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 540 -490 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 540 -400 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 470 -390 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 370 -730 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 780 -220 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_Feedback_Divider_mag.spice"
.control
save all
tran 1n 10u
plot v(CLK) v(Vdiv)+3.5 v(RST)+7 v(F0)+10.5 v(F1)+14 v(F2)+17.5
**write Feedback_Divider_TB.raw
.endc
"}
C {devices/capa.sym} 750 -530 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 750 -480 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 730 -630 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 730 -610 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 750 -590 2 0 {name=p13 sig_type=std_logic lab=Vdiv}
C {devices/lab_wire.sym} 400 -550 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 150 -250 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 150 -340 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 400 -630 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 150 -290 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/vsource.sym} 150 -650 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 1u 2u)"}
C {devices/lab_wire.sym} 150 -700 0 0 {name=p9 sig_type=std_logic lab=F0}
C {devices/lab_wire.sym} 150 -610 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 150 -530 0 0 {name=V6 value="pulse(3.3 0 0 100p 100p 2u 4u)"}
C {devices/lab_wire.sym} 150 -580 0 0 {name=p11 sig_type=std_logic lab=F1}
C {devices/lab_wire.sym} 150 -490 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 150 -410 0 0 {name=V7 value="pulse(3.3 0 0 100p 100p 4u 8u)"}
C {devices/lab_wire.sym} 150 -460 0 0 {name=p18 sig_type=std_logic lab=F2}
C {devices/lab_wire.sym} 150 -370 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 400 -570 0 0 {name=p20 sig_type=std_logic lab=F0}
C {devices/lab_wire.sym} 400 -590 0 0 {name=p21 sig_type=std_logic lab=F1}
C {devices/lab_wire.sym} 400 -610 0 0 {name=p22 sig_type=std_logic lab=F2}
C {pex_Feedback_Divider_mag.sym} 570 -590 0 0 {name=x1}
