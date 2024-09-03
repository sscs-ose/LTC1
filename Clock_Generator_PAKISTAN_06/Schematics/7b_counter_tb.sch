v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -190 140 -140 {
lab=VDD}
N 150 140 150 180 {
lab=VSS}
N 440 -120 440 -90 {
lab=GND}
N 440 -210 440 -180 {
lab=VSS}
N 500 -210 500 -180 {
lab=VDD}
N 500 -120 500 -90 {
lab=VSS}
N 570 -210 570 -180 {
lab=CLK}
N 570 -120 570 -90 {
lab=VSS}
N -10 70 50 70 {
lab=CLK}
N 10 -70 50 -70 {
lab=D2_7}
N 10 -50 50 -50 {
lab=D2_6}
N 10 -30 50 -30 {
lab=D2_5}
N 10 -10 50 -10 {
lab=D2_4}
N 10 10 50 10 {
lab=D2_3}
N 10 30 50 30 {
lab=D2_2}
N 10 50 50 50 {
lab=D2_1}
N 240 -70 290 -70 {
lab=LD}
N 240 -50 290 -50 {
lab=Q1}
N 240 -30 290 -30 {
lab=Q2}
N 240 -10 290 -10 {
lab=Q3}
N 240 10 290 10 {
lab=Q4}
N 240 30 290 30 {
lab=Q5}
N 240 50 290 50 {
lab=Q6}
N 240 70 290 70 {
lab=Q7}
N 870 20 870 50 {
lab=D2_1}
N 870 110 870 140 {
lab=VSS}
N 760 30 760 60 {
lab=D2_2}
N 760 120 760 150 {
lab=VSS}
N 640 20 640 50 {
lab=D2_3}
N 640 110 640 140 {
lab=VSS}
N 760 210 760 240 {
lab=D2_5}
N 760 300 760 330 {
lab=VSS}
N 640 200 640 230 {
lab=D2_4}
N 640 290 640 320 {
lab=VSS}
N 1030 230 1030 260 {
lab=D2_7}
N 1030 320 1030 350 {
lab=VSS}
N 910 220 910 250 {
lab=D2_6}
N 910 310 910 340 {
lab=VSS}
C {7b_counter_new.sym} 200 20 0 0 {name=x1}
C {devices/code_shown.sym} -70 -300 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option savecurrents
.control
save all

tran 100n 20u
set xbrushwidth=2
set xfontsize=3
plot v(CLK) v(LD)+3.5 v(Q1)+7 v(Q2)+10.5 v(Q3)+14
plot v(Q1)
plot v(Q2)
plot v(Q3) v(Q2) v(Q1)
write test 3b_divider_tb.raw
write test_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} -700 140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 440 -150 0 0 {name=V1 value=0}
C {devices/vsource.sym} 500 -150 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 440 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 440 -200 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 -200 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 570 -150 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 570 -200 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 500 -100 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -100 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -170 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 150 170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 20 70 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 280 -70 0 0 {name=p7 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} 280 -50 0 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 280 -30 0 0 {name=p11 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 280 -10 0 0 {name=p12 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 280 10 0 0 {name=p13 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} 280 30 0 0 {name=p14 sig_type=std_logic lab=Q5}
C {devices/lab_wire.sym} 280 50 0 0 {name=p15 sig_type=std_logic lab=Q6}
C {devices/lab_wire.sym} 280 70 0 0 {name=p16 sig_type=std_logic lab=Q7}
C {devices/vsource.sym} 870 80 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} 870 30 0 0 {name=p17 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 870 130 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 760 90 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} 760 40 0 0 {name=p19 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 760 140 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 640 80 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} 640 30 0 0 {name=p21 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 640 130 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 760 270 0 0 {name=V8 value=0}
C {devices/lab_wire.sym} 760 220 0 0 {name=p23 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 760 320 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 640 260 0 0 {name=V9 value=0}
C {devices/lab_wire.sym} 640 210 0 0 {name=p25 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 640 310 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 40 50 0 0 {name=p27 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 30 30 0 0 {name=p28 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 40 10 0 0 {name=p29 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 30 -10 0 0 {name=p30 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 40 -30 0 0 {name=p31 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 30 -70 0 0 {name=p32 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} 30 -50 0 0 {name=p33 sig_type=std_logic lab=D2_6}
C {devices/vsource.sym} 1030 290 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} 1030 240 0 0 {name=p34 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} 1030 340 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 910 280 0 0 {name=V10 value=0}
C {devices/lab_wire.sym} 910 230 0 0 {name=p36 sig_type=std_logic lab=D2_6}
C {devices/lab_wire.sym} 910 330 0 0 {name=p37 sig_type=std_logic lab=VSS}
