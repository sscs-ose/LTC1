v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -960 -210 -910 -210 {
lab=VDD}
N -960 -50 -920 -50 {
lab=VSS}
N -650 -570 -650 -540 {
lab=GND}
N -650 -660 -650 -630 {
lab=VSS}
N -590 -660 -590 -630 {
lab=VDD}
N -590 -570 -590 -540 {
lab=VSS}
N -520 -660 -520 -630 {
lab=CLK}
N -520 -570 -520 -540 {
lab=VSS}
N -1320 -90 -1260 -90 {
lab=CLK}
N -1300 -230 -1260 -230 {
lab=D2_7}
N -1300 -210 -1260 -210 {
lab=D2_6}
N -1300 -170 -1260 -170 {
lab=D2_5}
N -1300 -130 -1260 -130 {
lab=D2_4}
N -1300 -190 -1260 -190 {
lab=D2_3}
N -1300 -150 -1260 -150 {
lab=D2_2}
N -1300 -110 -1260 -110 {
lab=D2_1}
N -960 -230 -910 -230 {
lab=LD}
N -960 -110 -910 -110 {
lab=Q1}
N -960 -150 -910 -150 {
lab=Q2}
N -960 -90 -910 -90 {
lab=Q3}
N -960 -170 -910 -170 {
lab=Q4}
N -960 -130 -910 -130 {
lab=Q5}
N -960 -190 -910 -190 {
lab=Q6}
N -960 -70 -910 -70 {
lab=Q7}
N -220 -430 -220 -400 {
lab=D2_1}
N -220 -340 -220 -310 {
lab=VSS}
N -330 -420 -330 -390 {
lab=D2_2}
N -330 -330 -330 -300 {
lab=VSS}
N -450 -430 -450 -400 {
lab=D2_3}
N -450 -340 -450 -310 {
lab=VSS}
N -330 -240 -330 -210 {
lab=D2_5}
N -330 -150 -330 -120 {
lab=VSS}
N -450 -250 -450 -220 {
lab=D2_4}
N -450 -160 -450 -130 {
lab=VSS}
N -60 -220 -60 -190 {
lab=D2_7}
N -60 -130 -60 -100 {
lab=VSS}
N -180 -230 -180 -200 {
lab=D2_6}
N -180 -140 -180 -110 {
lab=VSS}
N -880 -550 -880 -520 {
lab=LD}
N -880 -460 -880 -430 {
lab=VSS}
C {devices/code_shown.sym} -1160 -750 0 1 {name=NGSPICE1 only_toplevel=true
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
C {devices/code_shown.sym} -1790 -310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -650 -600 0 0 {name=V1 value=0}
C {devices/vsource.sym} -590 -600 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -650 -540 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -650 -650 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -590 -650 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -520 -600 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -520 -650 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -590 -550 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -520 -550 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -930 -210 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -930 -50 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1290 -90 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -920 -230 0 0 {name=p7 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} -920 -110 0 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} -920 -150 0 0 {name=p11 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} -920 -90 0 0 {name=p12 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} -920 -170 0 0 {name=p13 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} -920 -130 0 0 {name=p14 sig_type=std_logic lab=Q5}
C {devices/lab_wire.sym} -920 -190 0 0 {name=p15 sig_type=std_logic lab=Q6}
C {devices/lab_wire.sym} -920 -70 0 0 {name=p16 sig_type=std_logic lab=Q7}
C {devices/vsource.sym} -220 -370 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} -220 -420 0 0 {name=p17 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} -220 -320 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -330 -360 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} -330 -410 0 0 {name=p19 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} -330 -310 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -450 -370 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} -450 -420 0 0 {name=p21 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} -450 -320 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -330 -180 0 0 {name=V8 value=0}
C {devices/lab_wire.sym} -330 -230 0 0 {name=p23 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} -330 -130 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -450 -190 0 0 {name=V9 value=0}
C {devices/lab_wire.sym} -450 -240 0 0 {name=p25 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} -450 -140 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1270 -110 0 0 {name=p27 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} -1280 -150 0 0 {name=p28 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} -1270 -190 0 0 {name=p29 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} -1280 -130 0 0 {name=p30 sig_type=std_logic lab=D2_4}
C {devices/lab_wire.sym} -1270 -170 0 0 {name=p31 sig_type=std_logic lab=D2_5}
C {devices/lab_wire.sym} -1280 -230 0 0 {name=p32 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} -1280 -210 0 0 {name=p33 sig_type=std_logic lab=D2_6}
C {devices/vsource.sym} -60 -160 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} -60 -210 0 0 {name=p34 sig_type=std_logic lab=D2_7}
C {devices/lab_wire.sym} -60 -110 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -180 -170 0 0 {name=V10 value=0}
C {devices/lab_wire.sym} -180 -220 0 0 {name=p36 sig_type=std_logic lab=D2_6}
C {devices/lab_wire.sym} -180 -120 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {synchronous_down_counter.sym} -1110 -140 0 0 {name=x1}
C {devices/vsource.sym} -880 -490 0 0 {name=V11 value="pulse(0 3.3 0 100p 100p 100n 2u)"}
C {devices/lab_wire.sym} -880 -540 0 0 {name=p38 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} -880 -440 0 0 {name=p39 sig_type=std_logic lab=VSS}
