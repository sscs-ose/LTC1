v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 820 -870 1620 -470 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdiv31}
B 2 820 -470 1620 -70 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 380 -150 380 -140 {
lab=VSS}
N 380 -230 380 -210 {
lab=VDD}
N 460 -230 460 -210 {
lab=VSS}
N 460 -150 460 -130 {
lab=GND}
N 530 -150 530 -140 {
lab=VSS}
N 530 -230 530 -210 {
lab=CLK}
N 400 -680 420 -680 {
lab=Q0}
N 420 -680 430 -680 {
lab=Q0}
N 430 -680 430 -630 {
lab=Q0}
N 400 -720 410 -720 {
lab=VSS}
N 400 -700 410 -700 {
lab=VDD}
N 430 -510 430 -490 {
lab=VSS}
N 490 -510 490 -490 {
lab=VSS}
N 550 -640 560 -640 {
lab=Q2}
N 560 -640 560 -590 {
lab=Q2}
N 560 -510 560 -490 {
lab=VSS}
N 620 -510 620 -490 {
lab=VSS}
N 430 -630 430 -590 {
lab=Q0}
N 400 -660 490 -660 {
lab=Q1}
N 490 -660 490 -590 {
lab=Q1}
N 400 -640 550 -640 {
lab=Q2}
N 400 -620 620 -620 {
lab=Q3}
N 690 -510 690 -490 {
lab=VSS}
N 400 -600 690 -600 {
lab=Q4}
N 620 -620 620 -590 {
lab=Q3}
N 760 -510 760 -490 {
lab=VSS}
N 760 -580 760 -570 {
lab=Vdiv31}
N 400 -580 760 -580 {
lab=Vdiv31}
N 690 -600 690 -570 {
lab=Q4}
N 620 -590 620 -570 {
lab=Q3}
N 560 -590 560 -570 {
lab=Q2}
N 490 -590 490 -570 {
lab=Q1}
N 430 -590 430 -570 {
lab=Q0}
N 70 -700 90 -700 {
lab=CLK}
N 140 -130 140 -120 {
lab=VSS}
N 140 -210 140 -190 {
lab=RST}
N 90 -700 100 -700 {
lab=CLK}
N 80 -720 100 -720 {
lab=RST}
N 90 -700 100 -700 {
lab=RST}
C {devices/vsource.sym} 380 -180 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 460 -180 0 0 {name=V2 value=0}
C {devices/vsource.sym} 530 -180 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 460 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -140 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 380 -230 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 530 -230 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 530 -140 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 460 -130 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 300 -830 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 730 -410 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 250n
plot v(CLK) v(Q0)+3.5 v(Q1)+7 v(Q2)+10.5 v(Q3)+14 v(Q4)+17.5 v(Vdiv31)+21
write CLK_div_31_TB.raw
.endc
"}
C {devices/capa.sym} 430 -540 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 430 -490 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 -720 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 -700 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 430 -680 2 0 {name=p13 sig_type=std_logic lab=Q0}
C {devices/capa.sym} 490 -540 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 490 -490 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 560 -540 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 560 -490 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 560 -640 2 0 {name=p12 sig_type=std_logic lab=Q2}
C {devices/capa.sym} 620 -540 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 620 -490 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 620 -620 2 0 {name=p19 sig_type=std_logic lab=Q3}
C {devices/capa.sym} 690 -540 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 690 -490 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -600 2 0 {name=p20 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} 490 -660 2 0 {name=p21 sig_type=std_logic lab=Q1}
C {devices/capa.sym} 760 -540 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 760 -490 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 760 -580 2 0 {name=p16 sig_type=std_logic lab=Vdiv31}
C {CLK_div_31.sym} 250 -650 0 0 {name=x1}
C {devices/lab_wire.sym} 70 -700 0 0 {name=p17 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 140 -120 0 0 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 140 -210 0 0 {name=p23 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 140 -160 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} 80 -720 0 0 {name=p15 sig_type=std_logic lab=RST}
