v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -180 230 -170 {
lab=VSS}
N 230 -260 230 -240 {
lab=VDD}
N 310 -260 310 -240 {
lab=VSS}
N 310 -180 310 -160 {
lab=GND}
N 380 -180 380 -170 {
lab=VSS}
N 380 -260 380 -240 {
lab=CLK}
N 830 -340 850 -340 {
lab=Q0}
N 850 -340 860 -340 {
lab=Q0}
N 860 -340 860 -250 {
lab=Q0}
N 830 -320 930 -320 {
lab=Q1}
N 930 -320 930 -250 {
lab=Q1}
N 1010 -300 1010 -250 {
lab=Vdiv3}
N 860 -190 930 -190 {
lab=VSS}
N 930 -190 1010 -190 {
lab=VSS}
N 830 -380 840 -380 {
lab=VSS}
N 830 -360 840 -360 {
lab=VDD}
N 510 -380 530 -380 {
lab=RST}
N 510 -360 530 -360 {
lab=CLK}
N 50 -180 50 -170 {
lab=VSS}
N 50 -260 50 -240 {
lab=RST}
N 830 -300 1010 -300 {
lab=Vdiv3}
C {devices/vsource.sym} 230 -210 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 310 -210 0 0 {name=V2 value=0}
C {devices/vsource.sym} 380 -210 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 310 -260 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 230 -170 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 230 -260 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 380 -260 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 380 -170 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 310 -160 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 0 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1040 -570 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv3)+3.5 v(Q0)+7 v(Q1)+10.5 v(RST)+14
write CLK_div_3_TB.raw
.endc
"}
C {devices/capa.sym} 860 -220 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 930 -220 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1010 -220 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 970 -190 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 840 -380 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 840 -360 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 860 -340 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 930 -320 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 1010 -300 2 0 {name=p13 sig_type=std_logic lab=Vdiv3}
C {devices/lab_wire.sym} 510 -360 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 50 -170 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 50 -260 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 510 -380 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 50 -210 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_3.sym} 680 -340 0 0 {name=x1}
