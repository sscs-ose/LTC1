v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -300 380 -270 {
lab=GND}
N 380 -390 380 -360 {
lab=VSS}
N 440 -390 440 -360 {
lab=VDD}
N 440 -300 440 -270 {
lab=VSS}
N 510 -390 510 -360 {
lab=CLK}
N 510 -300 510 -270 {
lab=VSS}
N 80 -140 80 -80 {
lab=VDD}
N 80 50 80 120 {
lab=VSS}
N -30 -20 20 -20 {
lab=CLK}
N 140 -30 200 -30 {
lab=OUT}
C {divide_by_5.sym} 170 0 0 0 {name=x1}
C {devices/code_shown.sym} -480 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -50 30 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option savecurrents
.control
save all

tran 100n 5u
set xbrushwidth=2
set xfontsize=3
plot v(CLK) v(OUT)+7
write test 3b_divider_tb.raw
write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 380 -330 0 0 {name=V1 value=0}
C {devices/vsource.sym} 440 -330 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 380 -270 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 380 -380 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 -380 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 510 -330 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 510 -380 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 440 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 510 -280 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -110 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 80 90 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 -20 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 190 -30 0 0 {name=p7 sig_type=std_logic lab=OUT}
