v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 0 -60 10 {
lab=VSS}
N -60 -80 -60 -60 {
lab=VDD}
N 20 -80 20 -60 {
lab=VSS}
N 20 0 20 20 {
lab=GND}
N 90 0 90 10 {
lab=VSS}
N 90 -80 90 -60 {
lab=CLK}
N 540 -160 560 -160 {
lab=Q0}
N 560 -160 570 -160 {
lab=Q0}
N 570 -160 570 -70 {
lab=Q0}
N 540 -140 640 -140 {
lab=Q1}
N 640 -140 640 -70 {
lab=Q1}
N 720 -120 720 -70 {
lab=Vdiv5}
N 570 -10 640 -10 {
lab=VSS}
N 640 -10 720 -10 {
lab=VSS}
N 540 -200 550 -200 {
lab=VSS}
N 540 -180 550 -180 {
lab=VDD}
N 220 -200 240 -200 {
lab=RST}
N 220 -180 240 -180 {
lab=CLK}
N -240 0 -240 10 {
lab=VSS}
N -240 -80 -240 -60 {
lab=RST}
N 540 -120 720 -120 {
lab=Vdiv5}
N 540 -100 770 -100 {
lab=Q2}
N 780 -100 780 -70 {
lab=Q2}
N 770 -100 780 -100 {
lab=Q2}
N 720 -10 780 -10 {
lab=VSS}
C {devices/vsource.sym} -60 -30 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 20 -30 0 0 {name=V2 value=0}
C {devices/vsource.sym} 90 -30 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 20 -80 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -60 10 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -60 -80 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 90 -80 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 90 10 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 20 20 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -290 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 750 -390 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv5)+3.5 v(Q0)+7 v(Q1)+10.5 v(Q2)+14 v(RST)+17.5
write CLK_div_5_TB.raw
.endc
"}
C {devices/capa.sym} 570 -40 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 640 -40 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 720 -40 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 680 -10 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 550 -200 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 550 -180 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 570 -160 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 640 -140 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 720 -120 2 0 {name=p13 sig_type=std_logic lab=Vdiv5}
C {devices/lab_wire.sym} 220 -180 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -240 10 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -240 -80 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 220 -200 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -240 -30 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_5.sym} 390 -150 0 0 {name=x1}
C {devices/capa.sym} 780 -40 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 780 -100 2 0 {name=p11 sig_type=std_logic lab=Q2}
