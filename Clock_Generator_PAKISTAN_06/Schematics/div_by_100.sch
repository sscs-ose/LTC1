v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -30 180 -30 {
lab=#net1}
N 300 -30 380 -30 {
lab=#net2}
N 70 40 70 80 {
lab=VSS}
N 240 40 240 80 {
lab=VSS}
N 440 40 440 70 {
lab=VSS}
N 70 -130 70 -90 {
lab=VDD}
N 240 -130 240 -90 {
lab=VDD}
N 440 -130 440 -90 {
lab=VDD}
N -30 -30 10 -30 {
lab=CLK}
N 520 -240 520 -210 {
lab=GND}
N 520 -330 520 -300 {
lab=VSS}
N 580 -330 580 -300 {
lab=VDD}
N 580 -240 580 -210 {
lab=VSS}
N 650 -330 650 -300 {
lab=CLK}
N 650 -240 650 -210 {
lab=VSS}
N 520 -30 580 -30 {
lab=#net3}
C {divide_by_10.sym} 160 -10 0 0 {name=x1}
C {divide_by_10.sym} 330 -10 0 0 {name=x2}
C {div_by_2.sym} 530 -10 0 0 {name=x3}
C {devices/code_shown.sym} -540 -320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -220 -150 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option savecurrents
.control
save all

tran 100n 10u
set xbrushwidth=2
set xfontsize=3
plot v(CLK) v(OUT)+7
write test 3b_divider_tb.raw
write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 520 -270 0 0 {name=V1 value=0}
C {devices/vsource.sym} 580 -270 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 520 -210 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 520 -320 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 580 -320 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 650 -270 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 650 -320 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 580 -220 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 650 -220 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 -30 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 240 -110 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 70 -110 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 440 -100 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 70 70 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 70 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 60 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -30 0 0 {name=p13 sig_type=std_logic lab=OUT}
