v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 840 -520 1640 -120 {flags=graph
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
node=vdiv110
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 840 -920 1640 -520 {flags=graph
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
B 2 840 -920 1640 -520 {flags=graph
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
N 380 -120 380 -110 {
lab=VSS}
N 380 -200 380 -180 {
lab=VDD}
N 460 -200 460 -180 {
lab=VSS}
N 460 -120 460 -100 {
lab=GND}
N 530 -120 530 -110 {
lab=VSS}
N 530 -200 530 -180 {
lab=CLK}
N 720 -240 740 -240 {
lab=Vdiv110}
N 740 -240 750 -240 {
lab=Vdiv110}
N 750 -240 750 -190 {
lab=Vdiv110}
N 720 -280 730 -280 {
lab=VSS}
N 720 -260 730 -260 {
lab=VDD}
N 400 -280 420 -280 {
lab=RST}
N 200 -120 200 -110 {
lab=VSS}
N 200 -200 200 -180 {
lab=RST}
N 750 -130 750 -110 {
lab=VSS}
N 400 -260 420 -260 {
lab=CLK}
C {devices/vsource.sym} 380 -150 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 460 -150 0 0 {name=V2 value=0}
C {devices/vsource.sym} 530 -150 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 460 -200 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -110 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 380 -200 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 530 -200 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 530 -110 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 460 -100 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 400 -410 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 390 -470 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 1u
plot v(CLK) v(Vdiv110)+3.5 v(RST)+7
write CLK_div_110_TB.raw
.endc
"}
C {devices/capa.sym} 750 -160 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 750 -110 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 730 -280 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 730 -260 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 750 -240 2 0 {name=p13 sig_type=std_logic lab=Vdiv110}
C {devices/lab_wire.sym} 400 -260 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 200 -110 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 200 -200 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 400 -280 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 200 -150 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {CLK_div_110.sym} 570 -260 0 0 {name=x1}
