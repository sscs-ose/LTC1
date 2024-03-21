v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 560 -220 560 -190 {
lab=GND}
N 560 -310 560 -280 {
lab=VSS}
N 620 -310 620 -280 {
lab=VDD}
N 620 -220 620 -190 {
lab=VSS}
N 690 -310 690 -280 {
lab=CLK}
N 690 -220 690 -190 {
lab=VSS}
N 780 -130 780 -100 {
lab=D2_1}
N 780 -40 780 -10 {
lab=VSS}
N 670 -120 670 -90 {
lab=D2_2}
N 670 -30 670 0 {
lab=VSS}
N 550 -130 550 -100 {
lab=D2_3}
N 550 -40 550 -10 {
lab=VSS}
N 190 -150 190 -110 {
lab=VDD}
N 200 170 200 210 {
lab=VSS}
N 170 -150 170 -110 {
lab=CLK}
N 210 -150 210 -110 {
lab=LD}
N 780 50 780 80 {
lab=D2_6}
N 780 140 780 170 {
lab=VSS}
N 670 60 670 90 {
lab=D2_5}
N 670 150 670 180 {
lab=VSS}
N 550 50 550 80 {
lab=D2_4}
N 550 140 550 170 {
lab=VSS}
N 680 230 680 260 {
lab=D2_8}
N 680 320 680 350 {
lab=VSS}
N 570 240 570 270 {
lab=D2_7}
N 570 330 570 360 {
lab=VSS}
N 40 -40 90 -40 {
lab=D2_1}
N 40 -20 90 -20 {
lab=D2_2}
N 40 0 90 0 {
lab=D2_3}
N 40 20 90 20 {
lab=D2_4}
N 40 40 90 40 {
lab=D2_5}
N 40 60 90 60 {
lab=D2_6}
N 50 80 90 80 {
lab=D2_7}
N 50 100 90 100 {
lab=D2_8}
N 310 -40 360 -40 {
lab=Q1}
N 310 -20 360 -20 {
lab=Q2}
N 310 -0 360 0 {
lab=Q3}
N 310 20 360 20 {
lab=Q4}
N 310 40 360 40 {
lab=Q5}
N 310 60 360 60 {
lab=Q6}
N 310 80 360 80 {
lab=Q7}
N 310 100 360 100 {
lab=Q8}
C {8b_DC.sym} 240 40 0 0 {name=x1}
C {devices/code_shown.sym} -530 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -240 40 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option savecurrents
.control
save all

tran 100n 5u
set xbrushwidth=2
set xfontsize=3
plot v(CLK) 
plot v(LD)
plot v(Q1)
plot v(Q2)
plot v(Q3)
write test 3b_divider_tb.raw
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 560 -250 0 0 {name=V1 value=0}
C {devices/vsource.sym} 620 -250 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 560 -190 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 560 -300 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 620 -300 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 690 -250 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 690 -300 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 620 -200 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -200 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 780 -70 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} 780 -120 0 0 {name=p7 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 780 -20 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 670 -60 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} 670 -110 0 0 {name=p11 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 670 -10 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 550 -70 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} 550 -120 0 0 {name=p13 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 550 -20 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -150 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 170 -120 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 210 -140 2 0 {name=p5 sig_type=std_logic lab=LD}
C {devices/vsource.sym} 780 110 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} 780 60 0 0 {name=p15 sig_type=std_logic lab=D2_6}
C {devices/lab_wire.sym} 780 160 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 670 120 0 0 {name=V8 value=0}
C {devices/lab_wire.sym} 670 70 0 0 {name=p17 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 670 170 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 550 110 0 0 {name=V9 value=0}
C {devices/lab_wire.sym} 550 60 0 0 {name=p19 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 550 160 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 680 290 0 0 {name=V10 value=3.3}
C {devices/lab_wire.sym} 680 240 0 0 {name=p21 sig_type=std_logic lab=D2_8}
C {devices/lab_wire.sym} 680 340 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 570 300 0 0 {name=V11 value=3.3}
C {devices/lab_wire.sym} 570 250 0 0 {name=p23 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} 570 350 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 60 -40 0 0 {name=p25 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 60 -20 0 0 {name=p26 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 60 0 0 0 {name=p27 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 60 20 0 0 {name=p28 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 60 40 0 0 {name=p29 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 60 60 0 0 {name=p30 sig_type=std_logic lab=D2_6}
C {devices/lab_wire.sym} 70 80 0 0 {name=p31 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} 70 100 0 0 {name=p32 sig_type=std_logic lab=D2_8}
C {devices/lab_wire.sym} 350 -40 0 0 {name=p33 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 350 -20 0 0 {name=p34 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 350 0 0 0 {name=p35 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 350 20 0 0 {name=p36 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} 350 40 0 0 {name=p37 sig_type=std_logic lab=Q5}
C {devices/lab_wire.sym} 350 60 0 0 {name=p38 sig_type=std_logic lab=Q6}
C {devices/lab_wire.sym} 350 80 0 0 {name=p39 sig_type=std_logic lab=Q7}
C {devices/lab_wire.sym} 350 100 0 0 {name=p40 sig_type=std_logic lab=Q8}
C {devices/lab_wire.sym} 200 200 0 0 {name=p41 sig_type=std_logic lab=VSS}
