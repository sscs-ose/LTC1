v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 80 -460 880 -280 {flags=graph
y1=-0.042
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.36963e-08
x2=4.81369e-06
divx=5
subdivx=1
node=q3
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 80 -650 880 -470 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.36963e-08
x2=4.81369e-06
divx=5
subdivx=1
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 200 -10 230 -10 {
lab=Q1}
N 200 10 230 10 {
lab=Q3}
N -10 -50 30 -50 {
lab=D2_1}
N -10 -30 30 -30 {
lab=CLK}
N -10 -10 30 -10 {
lab=D2_2}
N -10 10 30 10 {
lab=D2_3}
N 100 -140 100 -110 {
lab=VDD}
N 120 90 120 120 {
lab=VSS}
N -450 -120 -450 -90 {
lab=GND}
N -450 -210 -450 -180 {
lab=VSS}
N -390 -210 -390 -180 {
lab=VDD}
N -390 -120 -390 -90 {
lab=VSS}
N -320 -210 -320 -180 {
lab=CLK}
N -320 -120 -320 -90 {
lab=VSS}
N -230 -30 -230 0 {
lab=D2_1}
N -230 60 -230 90 {
lab=VSS}
N -340 -20 -340 10 {
lab=D2_2}
N -340 70 -340 100 {
lab=VSS}
N -460 -30 -460 0 {
lab=D2_3}
N -460 60 -460 90 {
lab=VSS}
N 200 -30 230 -30 {
lab=Q2}
N 200 -50 230 -50 {
lab=LD}
C {devices/vsource.sym} -450 -150 0 0 {name=V1 value=0}
C {devices/vsource.sym} -390 -150 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -450 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -450 -200 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -200 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -320 -150 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -320 -200 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -390 -100 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -320 -100 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 10 -30 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 100 -120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 120 110 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -230 30 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} -230 -20 0 0 {name=p7 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} -230 80 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -340 40 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} -340 -10 0 0 {name=p11 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} -340 90 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -460 30 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} -460 -20 0 0 {name=p13 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} -460 80 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 10 -50 0 0 {name=p15 sig_type=std_logic lab=D2_1}
C {devices/lab_wire.sym} 10 -10 0 0 {name=p16 sig_type=std_logic lab=D2_2}
C {devices/lab_wire.sym} 10 10 0 0 {name=p17 sig_type=std_logic lab=D2_3}
C {devices/lab_wire.sym} 220 10 0 0 {name=p20 sig_type=std_logic lab=Q3}
C {devices/code_shown.sym} -420 -740 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/lab_wire.sym} 220 -10 0 0 {name=p21 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 220 -30 0 0 {name=p18 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 220 -50 0 0 {name=p19 sig_type=std_logic lab=LD}
C {3b_DC.sym} 180 0 0 0 {name=x1}
C {devices/code_shown.sym} -120 -570 0 1 {name=NGSPICE2 only_toplevel=true
value="

.control
save all

tran 100n 5u 
plot v(Q1) 
plot v(Q2) 
plot v(Q3)
plot v(CLK)
plot v(LD)
write 3b_DC_tb.raw
*write test_nfet_03v3.raw
.endc
"}
