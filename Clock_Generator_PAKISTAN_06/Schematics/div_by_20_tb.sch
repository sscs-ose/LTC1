v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -30 220 -30 {
lab=#net1}
N 110 -120 110 -90 {
lab=VDD}
N 280 -120 280 -90 {
lab=VDD}
N 360 -30 400 -30 {
lab=OUT}
N 110 40 110 70 {
lab=VSS}
N 280 40 280 70 {
lab=VSS}
N 10 -30 50 -30 {
lab=CLK}
N 630 -240 630 -210 {
lab=GND}
N 630 -330 630 -300 {
lab=VSS}
N 690 -330 690 -300 {
lab=VDD}
N 690 -240 690 -210 {
lab=VSS}
N 760 -330 760 -300 {
lab=CLK}
N 760 -240 760 -210 {
lab=VSS}
C {divide_by_10.sym} 200 -10 0 0 {name=x1}
C {div_by_2.sym} 370 -10 0 0 {name=x2}
C {devices/code_shown.sym} -380 -380 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -60 -210 0 1 {name=NGSPICE1 only_toplevel=true
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
C {devices/vsource.sym} 630 -270 0 0 {name=V1 value=0}
C {devices/vsource.sym} 690 -270 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 630 -210 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 630 -320 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -320 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 760 -270 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 760 -320 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 690 -220 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 760 -220 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 60 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 60 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 -100 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 280 -100 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 30 -30 0 0 {name=p10 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 400 -30 0 0 {name=p11 sig_type=std_logic lab=OUT}
