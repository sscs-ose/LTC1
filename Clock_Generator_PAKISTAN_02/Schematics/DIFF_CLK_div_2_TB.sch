v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 200 -530 1000 -130 {flags=graph
y1=-0.013
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdiv3}
B 2 200 -130 1000 270 {flags=graph
y1=-0.016
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -400 190 -400 200 {
lab=VSS}
N -400 110 -400 130 {
lab=VDD}
N -550 -20 -550 0 {
lab=VSS}
N -550 60 -550 80 {
lab=GND}
N -480 60 -480 70 {
lab=VSS}
N -480 -20 -480 0 {
lab=CLK}
N -30 -100 -10 -100 {
lab=Vdiv2}
N -10 -100 0 -100 {
lab=Vdiv2}
N 0 -100 0 -10 {
lab=Vdiv2}
N -30 -80 70 -80 {
lab=Vdiv2B}
N 70 -80 70 -10 {
lab=Vdiv2B}
N 0 50 70 50 {
lab=VSS}
N -30 -140 -20 -140 {
lab=VSS}
N -30 -120 -20 -120 {
lab=VDD}
N -350 -140 -330 -140 {
lab=RST}
N -350 -120 -330 -120 {
lab=CLKB}
N 20 200 20 210 {
lab=VSS}
N 20 120 20 140 {
lab=RST}
N -350 -100 -330 -100 {
lab=CLK}
N -250 180 -250 190 {
lab=VSS}
N -250 100 -250 120 {
lab=CLKB}
C {devices/vsource.sym} -400 160 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -550 30 0 0 {name=V2 value=0}
C {devices/vsource.sym} -480 30 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -550 -20 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -400 200 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -400 110 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -480 -20 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -480 70 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -550 80 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -280 -450 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 180 -330 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv2)+3.5 v(Vdiv2B)+7 v(RST)+10.5
write DIFF_CLK_div_2_TB.raw
.endc
"}
C {devices/capa.sym} 0 20 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 70 20 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 40 50 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 -140 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 -120 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 70 -80 2 0 {name=p13 sig_type=std_logic lab=Vdiv2B}
C {devices/lab_wire.sym} -350 -120 0 0 {name=p15 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} 20 210 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 20 120 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -350 -140 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 20 170 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} -350 -100 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 0 -100 2 0 {name=p9 sig_type=std_logic lab=Vdiv2}
C {devices/vsource.sym} -250 150 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -250 100 0 0 {name=p10 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} -250 190 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {DIFFER_CLK_div_2.sym} -180 -110 0 0 {name=x1}
