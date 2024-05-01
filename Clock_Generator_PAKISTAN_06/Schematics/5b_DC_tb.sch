v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 930 -120 1730 280 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 450 -280 450 -250 {
lab=GND}
N 450 -370 450 -340 {
lab=VSS}
N 510 -370 510 -340 {
lab=VDD}
N 510 -280 510 -250 {
lab=VSS}
N 580 -370 580 -340 {
lab=CLK}
N 580 -280 580 -250 {
lab=VSS}
N 670 -190 670 -160 {
lab=D2_1}
N 670 -100 670 -70 {
lab=VSS}
N 560 -180 560 -150 {
lab=D2_2}
N 560 -90 560 -60 {
lab=VSS}
N 440 -190 440 -160 {
lab=D2_3}
N 440 -100 440 -70 {
lab=VSS}
N 560 0 560 30 {
lab=D2_5}
N 560 90 560 120 {
lab=VSS}
N 440 -10 440 20 {
lab=D2_4}
N 440 80 440 110 {
lab=VSS}
N 180 -520 180 -480 {
lab=VDD}
N 180 -250 180 -220 {
lab=VSS}
N 60 -420 100 -420 {
lab=D2_3}
N 60 -400 100 -400 {
lab=D2_5}
N 60 -380 100 -380 {
lab=D2_2}
N 60 -360 100 -360 {
lab=D2_4}
N 70 -340 100 -340 {
lab=D2_1}
N 70 -320 100 -320 {
lab=CLK}
N 280 -440 310 -440 {
lab=LD}
N 280 -340 310 -340 {
lab=Q5}
N 280 -400 310 -400 {
lab=Q4}
N 280 -420 310 -420 {
lab=Q2}
N 280 -360 310 -360 {
lab=Q3}
N 280 -380 310 -380 {
lab=Q1}
C {devices/code_shown.sym} -80 -250 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option savecurrents
.control
save all

tran 100n 5u
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
C {devices/code_shown.sym} -700 150 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 450 -310 0 0 {name=V1 value=0}
C {devices/vsource.sym} 510 -310 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 450 -250 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 450 -360 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 510 -360 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 580 -310 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 580 -360 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 510 -260 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 580 -260 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 670 -130 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} 670 -180 0 0 {name=p7 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 670 -80 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 560 -120 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} 560 -170 0 0 {name=p11 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 560 -70 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 440 -130 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} 440 -180 0 0 {name=p13 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 440 -80 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 560 60 0 0 {name=V8 value=0}
C {devices/lab_wire.sym} 560 10 0 0 {name=p17 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 560 110 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 440 50 0 0 {name=V9 value=0}
C {devices/lab_wire.sym} 440 0 0 0 {name=p19 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 440 100 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -230 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -420 0 0 {name=p3 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 80 -380 0 0 {name=p5 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 90 -340 0 0 {name=p15 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 80 -360 0 0 {name=p16 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 80 -400 0 0 {name=p21 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 80 -320 0 0 {name=p22 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 180 -500 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 300 -440 0 0 {name=p24 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} 310 -340 0 0 {name=p25 sig_type=std_logic lab=Q5}
C {devices/lab_wire.sym} 310 -400 0 0 {name=p26 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} 310 -360 0 0 {name=p27 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 310 -420 0 0 {name=p28 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 300 -380 0 0 {name=p29 sig_type=std_logic lab=Q1}
C {5b_DC.sym} 250 -350 0 0 {name=x1}
