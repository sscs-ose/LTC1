v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 90 -260 100 {
lab=VSS}
N -260 10 -260 30 {
lab=VDD}
N -180 10 -180 30 {
lab=VSS}
N -180 90 -180 110 {
lab=GND}
N -110 90 -110 100 {
lab=VSS}
N -110 10 -110 30 {
lab=CLK}
N 340 -70 360 -70 {
lab=Q0}
N 360 -70 370 -70 {
lab=Q0}
N 370 -70 370 20 {
lab=Q0}
N 340 -50 440 -50 {
lab=Q1}
N 440 -50 440 20 {
lab=Q1}
N 520 -30 520 20 {
lab=Vdiv7}
N 370 80 440 80 {
lab=VSS}
N 440 80 520 80 {
lab=VSS}
N 340 -110 350 -110 {
lab=VSS}
N 340 -90 350 -90 {
lab=VDD}
N 20 -110 40 -110 {
lab=RST}
N 20 -90 40 -90 {
lab=CLK}
N -440 90 -440 100 {
lab=VSS}
N -440 10 -440 30 {
lab=RST}
N 340 -30 520 -30 {
lab=Vdiv7}
N 340 -10 570 -10 {
lab=Q2}
N 580 -10 580 20 {
lab=Q2}
N 570 -10 580 -10 {
lab=Q2}
N 520 80 580 80 {
lab=VSS}
C {devices/vsource.sym} -260 60 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -180 60 0 0 {name=V2 value=0}
C {devices/vsource.sym} -110 60 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -180 10 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -260 100 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -260 10 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -110 10 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -110 100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -180 110 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -490 -150 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 550 -300 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv7)+3.5 v(Q0)+7 v(Q1)+10.5 v(Q2)+14 v(RST)+17.5
write CLK_div_7_TB.raw
.endc
"}
C {devices/capa.sym} 370 50 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 440 50 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 520 50 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 480 80 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 350 -110 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 350 -90 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 370 -70 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 440 -50 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 520 -30 2 0 {name=p13 sig_type=std_logic lab=Vdiv7}
C {devices/lab_wire.sym} 20 -90 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -440 100 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -440 10 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 20 -110 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -440 60 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/capa.sym} 580 50 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 580 -10 2 0 {name=p11 sig_type=std_logic lab=Q2}
C {CLK_div_7.sym} 190 -60 0 0 {name=x1}
