v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -30 140 -30 {
lab=CLK}
N 210 -140 210 -110 {
lab=VDD}
N 210 40 210 70 {
lab=VSS}
N 300 -40 340 -40 {
lab=OUT}
N 520 -90 520 -60 {
lab=GND}
N 520 -180 520 -150 {
lab=VSS}
N 580 -180 580 -150 {
lab=VDD}
N 580 -90 580 -60 {
lab=VSS}
N 650 -180 650 -150 {
lab=CLK}
N 650 -90 650 -60 {
lab=VSS}
C {div_555.sym} 290 -10 0 0 {name=x1}
C {devices/code_shown.sym} -760 -280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 10 -160 0 1 {name=NGSPICE2 only_toplevel=true
value="
.option savecurrents
.control
save all

tran 100n 2u
set xbrushwidth=2
set xfontsize=3
plot v(CLK) v(OUT)+7
write test 3b_divider_tb.raw
write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 520 -120 0 0 {name=V1 value=0}
C {devices/vsource.sym} 580 -120 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 520 -60 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 520 -170 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 580 -170 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 650 -120 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 650 -170 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 580 -70 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 650 -70 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 60 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 -120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 120 -30 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 330 -40 0 0 {name=p7 sig_type=std_logic lab=OUT}
