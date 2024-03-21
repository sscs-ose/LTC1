v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 740 -350 740 -320 {
lab=GND}
N 740 -440 740 -410 {
lab=VSS}
N 800 -440 800 -410 {
lab=VDD}
N 800 -350 800 -320 {
lab=VSS}
N 870 -440 870 -410 {
lab=CLK}
N 870 -350 870 -320 {
lab=VSS}
N 960 -260 960 -230 {
lab=D2_1}
N 960 -170 960 -140 {
lab=VSS}
N 850 -250 850 -220 {
lab=D2_2}
N 850 -160 850 -130 {
lab=VSS}
N 730 -260 730 -230 {
lab=D2_3}
N 730 -170 730 -140 {
lab=VSS}
N 960 -80 960 -50 {
lab=D2_6}
N 960 10 960 40 {
lab=VSS}
N 850 -70 850 -40 {
lab=D2_5}
N 850 20 850 50 {
lab=VSS}
N 730 -80 730 -50 {
lab=D2_4}
N 730 10 730 40 {
lab=VSS}
N 860 100 860 130 {
lab=D2_8}
N 860 190 860 220 {
lab=VSS}
N 750 110 750 140 {
lab=D2_7}
N 750 200 750 230 {
lab=VSS}
N 190 -260 190 -220 {
lab=VDD}
N 190 20 190 70 {
lab=VSS}
N 50 -180 100 -180 {
lab=CLK}
N 50 -160 100 -160 {
lab=D2_1}
N 50 -140 100 -140 {
lab=D2_2}
N 50 -120 100 -120 {
lab=D2_3}
N 50 -100 100 -100 {
lab=D2_4}
N 60 -80 100 -80 {
lab=D2_5}
N 60 -60 100 -60 {
lab=D2_6}
N 60 -40 100 -40 {
lab=D2_7}
N 60 -20 100 -20 {
lab=D2_8}
N 290 -190 350 -190 {
lab=LD}
N 290 -170 340 -170 {
lab=Q1}
N 290 -150 340 -150 {
lab=Q2}
N 290 -130 340 -130 {
lab=Q3}
N 290 -110 350 -110 {
lab=Q4}
N 290 -90 340 -90 {
lab=Q5}
N 290 -70 340 -70 {
lab=Q6}
N 290 -50 340 -50 {
lab=Q7}
N 290 -30 340 -30 {
lab=Q8}
N 290 -10 340 -10 {
lab=OUT1}
N 220 -260 220 -220 {
lab=P2}
C {8b_divider.sym} 250 -60 0 0 {name=x1}
C {devices/code_shown.sym} -470 -260 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -140 -100 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option savecurrents
.control
save all

tran 100n 1.5u
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
C {devices/vsource.sym} 740 -380 0 0 {name=V1 value=0}
C {devices/vsource.sym} 800 -380 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 740 -320 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 740 -430 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 800 -430 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 870 -380 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 870 -430 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 800 -330 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 870 -330 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 960 -200 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} 960 -250 0 0 {name=p7 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 960 -150 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 850 -190 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} 850 -240 0 0 {name=p11 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 850 -140 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 730 -200 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} 730 -250 0 0 {name=p13 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 730 -150 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 960 -20 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} 960 -70 0 0 {name=p15 sig_type=std_logic lab=D2_6}
C {devices/lab_wire.sym} 960 30 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 850 -10 0 0 {name=V8 value=0}
C {devices/lab_wire.sym} 850 -60 0 0 {name=p17 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 850 40 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 730 -20 0 0 {name=V9 value=0}
C {devices/lab_wire.sym} 730 -70 0 0 {name=p19 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 730 30 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 860 160 0 0 {name=V10 value=0}
C {devices/lab_wire.sym} 860 110 0 0 {name=p21 sig_type=std_logic lab=D2_8}
C {devices/lab_wire.sym} 860 210 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 750 170 0 0 {name=V11 value=0}
C {devices/lab_wire.sym} 750 120 0 0 {name=p23 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} 750 220 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -240 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 190 50 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -160 0 0 {name=p5 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 80 -180 0 0 {name=p25 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 70 -140 0 0 {name=p26 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 70 -120 0 0 {name=p27 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 70 -100 0 0 {name=p28 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} 70 -80 0 0 {name=p29 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} 80 -60 0 0 {name=p30 sig_type=std_logic lab=D2_6}
C {devices/lab_wire.sym} 90 -40 0 0 {name=p31 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} 90 -20 0 0 {name=p32 sig_type=std_logic lab=D2_8}
C {devices/lab_wire.sym} 330 -190 0 0 {name=p33 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} 220 -240 1 0 {name=p34 sig_type=std_logic lab=P2}
C {devices/lab_wire.sym} 330 -170 0 0 {name=p35 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 330 -150 0 0 {name=p36 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 330 -130 0 0 {name=p37 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 330 -110 0 0 {name=p38 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} 330 -90 0 0 {name=p39 sig_type=std_logic lab=Q5}
C {devices/lab_wire.sym} 330 -70 0 0 {name=p40 sig_type=std_logic lab=Q6}
C {devices/lab_wire.sym} 330 -50 0 0 {name=p41 sig_type=std_logic lab=Q7}
C {devices/lab_wire.sym} 330 -30 0 0 {name=p42 sig_type=std_logic lab=Q8}
C {devices/lab_wire.sym} 330 -10 0 0 {name=p43 sig_type=std_logic lab=OUT1}
