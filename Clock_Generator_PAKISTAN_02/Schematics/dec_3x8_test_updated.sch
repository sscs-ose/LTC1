v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 440 -820 440 -810 {
lab=VSS}
N 440 -900 440 -880 {
lab=VDD}
N 520 -900 520 -880 {
lab=VSS}
N 520 -820 520 -800 {
lab=GND}
N 590 -820 590 -810 {
lab=VSS}
N 590 -900 590 -880 {
lab=IN1}
N 80 -700 100 -700 {
lab=IN1}
N 80 -680 100 -680 {
lab=IN3}
N 180 -820 180 -800 {
lab=VDD}
N 280 -670 290 -670 {
lab=D4}
N 440 -970 440 -960 {
lab=VSS}
N 440 -1040 440 -1030 {
lab=IN2}
N 280 -650 290 -650 {
lab=D5}
N 280 -630 290 -630 {
lab=D6}
N 280 -610 290 -610 {
lab=D7}
N 280 -750 290 -750 {
lab=D0}
N 280 -730 290 -730 {
lab=D1}
N 280 -710 290 -710 {
lab=D2}
N 280 -690 290 -690 {
lab=D3}
N 180 -560 180 -540 {
lab=VSS}
N 80 -660 100 -660 {
lab=IN2}
N 150 -980 150 -970 {
lab=VSS}
N 150 -1050 150 -1040 {
lab=IN3}
C {dec_3x8.sym} 60 -560 0 0 {name=x1}
C {devices/vsource.sym} 440 -850 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 520 -850 0 0 {name=V2 value=0}
C {devices/vsource.sym} 590 -850 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 200n 400n)"}
C {devices/vsource.sym} 440 -1000 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 520 -900 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 -810 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 440 -900 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 590 -900 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 590 -810 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -700 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 80 -680 0 0 {name=p8 sig_type=std_logic lab=IN3}
C {devices/lab_wire.sym} 180 -820 1 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 290 -670 2 0 {name=p11 sig_type=std_logic lab=D4}
C {devices/lab_wire.sym} 440 -1040 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 440 -960 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 520 -800 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 600 -1140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1960 -720 0 1 {name=NGSPICE1 only_toplevel=true
value="
.control
save all
tran 50p 500n 
plot v(IN1) v(IN2)+3.5 v(IN3)+7 v(D0)+10.5 v(D1)+14 v(D2)+17.5 v(D3)+21 v(D4)+24.5 v(D5)+28 v(D6)+31.5 v(D7)+35



*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 290 -650 2 0 {name=p2 sig_type=std_logic lab=D5}
C {devices/lab_wire.sym} 290 -630 2 0 {name=p14 sig_type=std_logic lab=D6}
C {devices/lab_wire.sym} 290 -610 2 0 {name=p15 sig_type=std_logic lab=D7}
C {devices/lab_wire.sym} 290 -750 2 0 {name=p16 sig_type=std_logic lab=D0}
C {devices/lab_wire.sym} 290 -730 2 0 {name=p17 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 290 -710 2 0 {name=p18 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 290 -690 2 0 {name=p19 sig_type=std_logic lab=D3}
C {devices/lab_wire.sym} 180 -540 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -660 0 0 {name=p9 sig_type=std_logic lab=IN2}
C {devices/vsource.sym} 150 -1010 0 0 {name=V5 value="pulse(3.3 0 0 100p 100p 50n 100n)"}
C {devices/lab_wire.sym} 150 -1050 0 0 {name=p21 sig_type=std_logic lab=IN3}
C {devices/lab_wire.sym} 150 -970 0 0 {name=p22 sig_type=std_logic lab=VSS}
