v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 390 -450 390 -440 {
lab=VSS}
N 390 -530 390 -510 {
lab=VDD}
N 470 -530 470 -510 {
lab=VSS}
N 470 -450 470 -430 {
lab=GND}
N 540 -450 540 -440 {
lab=VSS}
N 540 -530 540 -510 {
lab=CLK}
N 720 -630 740 -630 {
lab=Vdiv}
N 740 -630 750 -630 {
lab=Vdiv}
N 720 -670 730 -670 {
lab=VSS}
N 720 -650 730 -650 {
lab=VDD}
N 400 -670 420 -670 {
lab=RST}
N 150 -300 150 -290 {
lab=VSS}
N 150 -380 150 -360 {
lab=RST}
N 750 -540 750 -520 {
lab=VSS}
N 400 -610 420 -610 {
lab=CLK}
N 750 -630 750 -600 {
lab=Vdiv}
N 150 -540 150 -530 {
lab=VSS}
N 150 -620 150 -600 {
lab=OPA1}
N 150 -420 150 -410 {
lab=VSS}
N 150 -500 150 -480 {
lab=OPA0}
N 400 -630 420 -630 {
lab=OPA0}
N 400 -650 420 -650 {
lab=OPA1}
C {devices/vsource.sym} 390 -480 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 470 -480 0 0 {name=V2 value=0}
C {devices/vsource.sym} 540 -480 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 470 -530 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 390 -440 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 390 -530 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 540 -530 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 540 -440 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 470 -430 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 370 -770 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1380 -630 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_Output_Div_Mag.spice"
.control
save all
tran 1n 200n
plot v(CLK) v(Vdiv)+3.5 v(RST)+7 v(P0)+10.5 v(P1)+14
**write Output_Divider_TB.raw
.endc
"}
C {devices/capa.sym} 750 -570 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 750 -520 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 730 -670 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 730 -650 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 750 -630 2 0 {name=p13 sig_type=std_logic lab=Vdiv}
C {devices/lab_wire.sym} 400 -610 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 150 -290 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 150 -380 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 400 -670 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 150 -330 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/vsource.sym} 150 -570 0 0 {name=V6 value="pulse(3.3 0 0 100p 100p 80n 160n)"}
C {devices/lab_wire.sym} 150 -530 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 150 -450 0 0 {name=V7 value="pulse(3.3 0 0 100p 100p 40n 80n)"}
C {devices/lab_wire.sym} 150 -410 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 400 -650 0 0 {name=p20 sig_type=std_logic lab=OPA1}
C {devices/lab_wire.sym} 400 -630 0 0 {name=p21 sig_type=std_logic lab=OPA0}
C {pex_Output_Div_Mag.sym} 570 -640 0 0 {name=x1}
C {devices/lab_wire.sym} 150 -620 0 0 {name=p9 sig_type=std_logic lab=OPA1}
C {devices/lab_wire.sym} 150 -490 0 0 {name=p10 sig_type=std_logic lab=OPA0}
