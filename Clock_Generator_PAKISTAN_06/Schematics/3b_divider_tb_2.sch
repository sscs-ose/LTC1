v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1010 -890 1810 -490 {flags=graph
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
N 510 -270 510 -240 {
lab=GND}
N 510 -360 510 -330 {
lab=VSS}
N 570 -360 570 -330 {
lab=VDD}
N 570 -270 570 -240 {
lab=VSS}
N 640 -360 640 -330 {
lab=CLK}
N 640 -270 640 -240 {
lab=VSS}
N 730 -180 730 -150 {
lab=D2_1}
N 730 -90 730 -60 {
lab=VSS}
N 620 -170 620 -140 {
lab=D2_2}
N 620 -80 620 -50 {
lab=VSS}
N 500 -180 500 -150 {
lab=D2_3}
N 500 -90 500 -60 {
lab=VSS}
N 60 -140 90 -140 {
lab=D2_1}
N 60 -100 90 -100 {
lab=D2_2}
N 60 -80 90 -80 {
lab=D2_3}
N 170 -250 170 -210 {
lab=VDD}
N 170 0 170 30 {
lab=VSS}
N 280 -170 320 -170 {
lab=P1}
N 280 -150 320 -150 {
lab=P0}
N 280 -130 320 -130 {
lab=LD}
N 280 -110 320 -110 {
lab=OUT1}
N 280 -90 320 -90 {
lab=Q2}
N 280 -70 320 -70 {
lab=Q1}
N 280 -50 320 -50 {
lab=Q3}
N 280 -30 320 -30 {
lab=P2}
N 60 -120 90 -120 {
lab=CLK}
C {3b_divider.sym} 240 -50 0 0 {name=x1}
C {devices/code_shown.sym} -410 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -160 -70 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all

tran 100p 3u
set xbrushwidth=2
set xfontsize=3
plot v(CLK) 
plot v(OUT1)
plot v(Q3)
plot v(Q2)
plot v(LD)
write test 3b_divider_tb_2.raw
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 510 -300 0 0 {name=V1 value=0}
C {devices/vsource.sym} 570 -300 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 510 -240 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 510 -350 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -350 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 640 -300 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 640 -350 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 570 -250 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 640 -250 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 730 -120 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} 730 -170 0 0 {name=p7 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 730 -70 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 620 -110 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} 620 -160 0 0 {name=p11 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 620 -60 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 500 -120 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} 500 -170 0 0 {name=p13 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 500 -70 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -120 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 80 -140 0 0 {name=p15 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 80 -100 0 0 {name=p16 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 80 -80 0 0 {name=p17 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 170 -230 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 170 30 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 310 -170 0 0 {name=p18 sig_type=std_logic lab=P1}
C {devices/lab_wire.sym} 320 -150 0 0 {name=p19 sig_type=std_logic lab=P0}
C {devices/lab_wire.sym} 320 -130 0 0 {name=p20 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} 320 -110 0 0 {name=p21 sig_type=std_logic lab=OUT1}
C {devices/lab_wire.sym} 320 -90 0 0 {name=p22 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 320 -70 0 0 {name=p23 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 320 -50 0 0 {name=p24 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 320 -30 0 0 {name=p25 sig_type=std_logic lab=P2}
