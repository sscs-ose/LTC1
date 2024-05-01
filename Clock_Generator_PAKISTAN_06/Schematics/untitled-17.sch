v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -120 110 -100 {
lab=VDD}
N 90 -120 110 -120 {
lab=VDD}
N 90 70 90 100 {
lab=VSS}
N 60 100 90 100 {
lab=VSS}
N 110 70 110 90 {
lab=CLK}
N 110 90 130 90 {
lab=CLK}
N 180 -40 210 -40 {
lab=Q}
N 180 0 220 -0 {
lab=Q-}
N 0 -50 30 -50 {
lab=LD}
N -20 -30 30 -30 {
lab=DATA}
N -50 -10 30 -10 {
lab=Q-}
N -20 10 30 10 {
lab=CLK}
N -360 -90 -360 -60 {
lab=GND}
N -360 -180 -360 -150 {
lab=VSS}
N -300 -180 -300 -150 {
lab=VDD}
N -300 -90 -300 -60 {
lab=VSS}
N -230 -180 -230 -150 {
lab=CLK}
N -230 -90 -230 -60 {
lab=VSS}
N -350 30 -350 60 {
lab=LD}
N -350 120 -350 150 {
lab=VSS}
N 340 40 340 70 {
lab=DATA}
N 340 130 340 160 {
lab=VSS}
C {MOD_DFF_latest.sym} 180 -10 0 0 {name=x1}
C {devices/lab_pin.sym} 90 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 0 -50 0 0 {name=p2 sig_type=std_logic lab=LD}
C {devices/lab_pin.sym} -20 -30 0 0 {name=p3 sig_type=std_logic lab=DATA}
C {devices/lab_pin.sym} -50 -10 0 0 {name=p4 sig_type=std_logic lab=Q-}
C {devices/lab_pin.sym} -20 10 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 60 100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 130 90 2 0 {name=p7 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 220 0 2 0 {name=p8 sig_type=std_logic lab=Q-}
C {devices/lab_pin.sym} 210 -40 2 0 {name=p9 sig_type=std_logic lab=Q}
C {devices/vsource.sym} -360 -120 0 0 {name=V1 value=0}
C {devices/vsource.sym} -300 -120 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -360 -60 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -360 -170 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -300 -170 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -230 -120 0 0 {name=V3 value="pulse(0 3.3 0 10p 10p 5n 10n)"}
C {devices/lab_wire.sym} -230 -170 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -300 -70 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -230 -70 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -350 90 0 0 {name=V4 value="pulse(0 3.3 0 10p 10p 20n 40n)"}
C {devices/lab_wire.sym} -350 40 0 0 {name=p15 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} -350 140 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 340 100 0 0 {name=V5 value="pulse(0 3.3 0 10p 10p 10n 20n)"}
C {devices/lab_wire.sym} 340 50 0 0 {name=p17 sig_type=std_logic lab=DATA}
C {devices/lab_wire.sym} 340 150 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -150 -610 0 1 {name=NGSPICE1 only_toplevel=true
value="
*.option savecurrents
.control
save all

tran 100n 1u
set xbrushwidth=2
set xfontsize=3
plot v(CLK) v(LD)+4 v(DATA)+8
plot v(Q1)
plot v(Q2)
plot v(Q3) v(Q2) v(Q1)
write 7b_divider_tb.raw
*write test_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} -1130 170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
