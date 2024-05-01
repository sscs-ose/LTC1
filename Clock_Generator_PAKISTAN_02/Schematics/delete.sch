v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 800 -400 1600 0 {flags=graph
y1=-0.021
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
node=vdiv90
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 800 -800 1600 -400 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
node=clk
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 800 -800 1600 -400 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
node=clk
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
N 360 -440 360 -430 {
lab=VSS}
N 360 -520 360 -500 {
lab=VDD}
N 440 -520 440 -500 {
lab=VSS}
N 440 -440 440 -420 {
lab=GND}
N 510 -440 510 -430 {
lab=VSS}
N 510 -520 510 -500 {
lab=CLK}
N 690 -620 710 -620 {
lab=Vdiv}
N 710 -620 720 -620 {
lab=Vdiv}
N 690 -660 700 -660 {
lab=VSS}
N 690 -640 700 -640 {
lab=VDD}
N 370 -660 390 -660 {
lab=RST}
N 120 -290 120 -280 {
lab=VSS}
N 120 -370 120 -350 {
lab=RST}
N 720 -530 720 -510 {
lab=VSS}
N 370 -580 390 -580 {
lab=CLK}
N 720 -620 720 -590 {
lab=Vdiv}
N 120 -650 120 -640 {
lab=VSS}
N 120 -730 120 -710 {
lab=F0}
N 120 -530 120 -520 {
lab=VSS}
N 120 -610 120 -590 {
lab=F1}
N 120 -410 120 -400 {
lab=VSS}
N 120 -490 120 -470 {
lab=F2}
N 370 -600 390 -600 {
lab=F0}
N 370 -620 390 -620 {
lab=F1}
N 370 -640 390 -640 {
lab=F2}
C {devices/vsource.sym} 360 -470 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 440 -470 0 0 {name=V2 value=0}
C {devices/vsource.sym} 510 -470 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 440 -520 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 -430 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 360 -520 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 510 -520 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 510 -430 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 440 -420 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 340 -760 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 750 -250 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 1n 2u
plot v(CLK) v(Vdiv)+3.5 v(RST)+7 v(F0)+10.5 v(F1)+14 v(F2)+17.5
write Feedback_Divider_TB.raw
.endc
"}
C {devices/capa.sym} 720 -560 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 720 -510 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 700 -660 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 700 -640 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 720 -620 2 0 {name=p13 sig_type=std_logic lab=Vdiv}
C {devices/lab_wire.sym} 370 -580 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 120 -280 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 120 -370 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 370 -660 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 120 -320 0 0 {name=V5 value=3.3}
C {Feedback_Divider.sym} 540 -620 0 0 {name=x1}
C {devices/vsource.sym} 120 -680 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} 120 -730 0 0 {name=p9 sig_type=std_logic lab=F0}
C {devices/lab_wire.sym} 120 -640 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 120 -560 0 0 {name=V6 value=0}
C {devices/lab_wire.sym} 120 -610 0 0 {name=p11 sig_type=std_logic lab=F1}
C {devices/lab_wire.sym} 120 -520 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 120 -440 0 0 {name=V7 value=3.3}
C {devices/lab_wire.sym} 120 -490 0 0 {name=p18 sig_type=std_logic lab=F2}
C {devices/lab_wire.sym} 120 -400 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 370 -600 0 0 {name=p20 sig_type=std_logic lab=F0}
C {devices/lab_wire.sym} 370 -620 0 0 {name=p21 sig_type=std_logic lab=F1}
C {devices/lab_wire.sym} 370 -640 0 0 {name=p22 sig_type=std_logic lab=F2}
