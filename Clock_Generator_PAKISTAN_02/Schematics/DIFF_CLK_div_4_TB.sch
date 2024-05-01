v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -70 -750 730 -350 {flags=graph
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
B 2 -70 -350 730 50 {flags=graph
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
N -790 -330 -790 -320 {
lab=VSS}
N -790 -410 -790 -390 {
lab=VDD}
N -820 -240 -820 -220 {
lab=VSS}
N -820 -160 -820 -140 {
lab=GND}
N -750 -160 -750 -150 {
lab=VSS}
N -750 -240 -750 -220 {
lab=CLK}
N -300 -320 -280 -320 {
lab=Vdiv4}
N -280 -320 -270 -320 {
lab=Vdiv4}
N -270 -320 -270 -230 {
lab=Vdiv4}
N -300 -300 -200 -300 {
lab=Vdiv4B}
N -200 -300 -200 -230 {
lab=Vdiv4B}
N -270 -170 -200 -170 {
lab=VSS}
N -300 -360 -290 -360 {
lab=VSS}
N -300 -340 -290 -340 {
lab=VDD}
N -620 -360 -600 -360 {
lab=RST}
N -620 -340 -600 -340 {
lab=CLKB}
N -250 -10 -250 0 {
lab=VSS}
N -250 -90 -250 -70 {
lab=RST}
N -620 -320 -600 -320 {
lab=CLK}
N -520 -40 -520 -30 {
lab=VSS}
N -520 -120 -520 -100 {
lab=CLKB}
N 1170 150 1180 150 {
lab=Vdiv90}
N 850 130 870 130 {}
N 1170 130 1180 130 {
lab=VSS}
N 1170 170 1180 170 {
lab=VDD}
C {devices/vsource.sym} -790 -360 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -820 -190 0 0 {name=V2 value=0}
C {devices/vsource.sym} -750 -190 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -820 -240 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -790 -320 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -790 -410 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -750 -240 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -750 -150 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -820 -140 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -560 -690 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -90 -550 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv4)+3.5 v(Vdiv4B)+7 v(RST)+10.5
write DIFF_CLK_div_4_TB.raw
.endc
"}
C {devices/capa.sym} -270 -200 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -200 -200 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -230 -170 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 -360 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 -340 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -200 -300 2 0 {name=p13 sig_type=std_logic lab=Vdiv4B}
C {devices/lab_wire.sym} -620 -340 0 0 {name=p15 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} -250 0 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -250 -90 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -620 -360 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -250 -40 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} -620 -320 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -270 -320 2 0 {name=p9 sig_type=std_logic lab=Vdiv4}
C {devices/vsource.sym} -520 -70 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -520 -120 0 0 {name=p10 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} -520 -30 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {DIFFER_CLK_div_4.sym} -450 -330 0 0 {name=x1}
C {devices/lab_pin.sym} 1180 150 2 0 {name=p18 sig_type=std_logic lab=Vdiv90}
C {Load_BUFF.sym} 1020 150 0 0 {name=x4}
C {devices/lab_pin.sym} 1180 130 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1180 170 2 0 {name=p20 sig_type=std_logic lab=VDD}
