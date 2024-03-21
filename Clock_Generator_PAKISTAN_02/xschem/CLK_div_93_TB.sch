v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 580 -800 1380 -400 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-08
x2=2.1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdiv93}
B 2 580 -400 1380 0 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-08
x2=2.1e-07
divx=5
subdivx=1
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 100 -130 100 -120 {
lab=VSS}
N 100 -210 100 -190 {
lab=VDD}
N 180 -210 180 -190 {
lab=VSS}
N 180 -130 180 -110 {
lab=GND}
N 250 -130 250 -120 {
lab=VSS}
N 250 -210 250 -190 {
lab=CLK}
N 370 -620 390 -620 {
lab=Vdiv93}
N 390 -620 400 -620 {
lab=Vdiv93}
N 400 -620 400 -570 {
lab=Vdiv93}
N 370 -660 380 -660 {
lab=VSS}
N 370 -640 380 -640 {
lab=VDD}
N 400 -510 400 -490 {
lab=VSS}
N 50 -640 70 -640 {
lab=CLK}
N 50 -660 70 -660 {
lab=RST}
N 90 -460 90 -450 {
lab=VSS}
N 90 -540 90 -520 {
lab=RST}
C {devices/vsource.sym} 100 -160 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 180 -160 0 0 {name=V2 value=0}
C {devices/vsource.sym} 250 -160 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 180 -210 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 100 -120 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 100 -210 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 250 -210 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 250 -120 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 180 -110 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 60 -760 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 450 -410 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv93)+3.5 
write CLK_div_93_TB.raw
.endc
"}
C {devices/capa.sym} 400 -540 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 400 -490 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -660 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -640 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 400 -620 2 0 {name=p13 sig_type=std_logic lab=Vdiv93}
C {devices/lab_wire.sym} 50 -640 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {CLK_div_93.sym} 220 -640 0 0 {name=x1}
C {devices/lab_wire.sym} 50 -660 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 90 -450 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 90 -540 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 90 -490 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
