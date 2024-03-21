v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -280 430 -250 {
lab=GND}
N 430 -370 430 -340 {
lab=VSS}
N 490 -370 490 -340 {
lab=VDD}
N 490 -280 490 -250 {
lab=VSS}
N 560 -370 560 -340 {
lab=CLK}
N 560 -280 560 -250 {
lab=VSS}
N 650 -190 650 -160 {
lab=D2_1}
N 650 -100 650 -70 {
lab=VSS}
N 540 -180 540 -150 {
lab=D2_2}
N 540 -90 540 -60 {
lab=VSS}
N 420 -190 420 -160 {
lab=D2_3}
N 420 -100 420 -70 {
lab=VSS}
N 540 0 540 30 {
lab=D2_5}
N 540 90 540 120 {
lab=VSS}
N 420 -10 420 20 {
lab=D2_4}
N 420 80 420 110 {
lab=VSS}
N 60 -230 60 -190 {
lab=VDD}
N 70 110 70 150 {
lab=VSS}
N -80 -100 -40 -100 {
lab=D2_3}
N -80 -80 -40 -80 {
lab=D2_5}
N -80 -60 -40 -60 {
lab=D2_4}
N -80 -40 -40 -40 {
lab=D2_2}
N -80 -20 -40 -20 {
lab=D2_1}
N -80 -0 -40 -0 {
lab=CLK}
N 170 -140 220 -140 {
lab=OUT1}
N 170 -120 220 -120 {
lab=LD}
N 170 -100 220 -100 {
lab=Q5}
N 170 -80 220 -80 {
lab=Q4}
N 170 -60 220 -60 {
lab=Q2}
N 170 -40 220 -40 {
lab=Q3}
N 170 -20 220 -20 {
lab=Q1}
N 170 0 220 0 {
lab=P2}
N 220 -140 270 -140 {
lab=OUT1}
C {5b_divider.sym} 110 -10 0 0 {name=x1}
C {devices/code_shown.sym} -760 -280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -440 -110 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option savecurrents
.control
save all

tran 10n 100n
set xbrushwidth=2
set xfontsize=3
plot v(CLK) v(x1.P1)+3.5 v(x1.OUT2)+7 v(x1.P3)+10.5 v(Q3)+14 v(Q2)+17.5 v(Q1)+21 v(LD)+24.5
plot v(LD)
plot v(Q1)
plot v(Q2)
plot v(Q3) v(Q2) v(Q1)
plot v(Q4)
plot v(OUT1)
write test 3b_divider_tb.raw
write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 430 -310 0 0 {name=V1 value=0}
C {devices/vsource.sym} 490 -310 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 430 -250 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 430 -360 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 490 -360 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 560 -310 0 0 {name=V3 value="pulse(0 3.3 0 10p 10p 2.5n 5n)"}
C {devices/lab_wire.sym} 560 -360 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 490 -260 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 560 -260 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 650 -130 0 0 {name=V4 value=3.3}
C {devices/lab_wire.sym} 650 -180 0 0 {name=p7 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 650 -80 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 540 -120 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} 540 -170 0 0 {name=p11 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 540 -70 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 420 -130 0 0 {name=V6 value=0}
C {devices/lab_wire.sym} 420 -180 0 0 {name=p13 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 420 -80 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 540 60 0 0 {name=V8 value=0}
C {devices/lab_wire.sym} 540 10 0 0 {name=p17 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 540 110 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 420 50 0 0 {name=V9 value=0}
C {devices/lab_wire.sym} 420 0 0 0 {name=p19 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 420 100 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 60 -210 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 70 140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -60 -20 0 0 {name=p5 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} -60 -40 0 0 {name=p15 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} -60 -60 0 0 {name=p16 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} -60 -80 0 0 {name=p21 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} -70 -100 0 0 {name=p22 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} -60 0 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 210 -140 0 0 {name=p24 sig_type=std_logic lab=OUT1}
C {devices/lab_wire.sym} 210 -120 0 0 {name=p25 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} 210 -100 0 0 {name=p26 sig_type=std_logic lab=Q5}
C {devices/lab_wire.sym} 210 -80 0 0 {name=p27 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} 210 -60 0 0 {name=p28 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 210 -40 0 0 {name=p29 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 210 -20 0 0 {name=p30 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 210 0 0 0 {name=p31 sig_type=std_logic lab=P2}
