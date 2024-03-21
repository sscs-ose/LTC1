v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -160 -230 640 170 {flags=graph
y1=-0.021
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
node=vdiv
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -160 -630 640 -230 {flags=graph
y1=-0.0097
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
node=vdivb
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -650 -270 -650 -260 {
lab=VSS}
N -650 -350 -650 -330 {
lab=VDD}
N -570 -350 -570 -330 {
lab=VSS}
N -570 -270 -570 -250 {
lab=GND}
N -500 -270 -500 -260 {
lab=VSS}
N -500 -350 -500 -330 {
lab=CLK}
N -320 -450 -300 -450 {
lab=Vdiv}
N -240 -450 -230 -450 {
lab=Vdiv}
N -320 -490 -310 -490 {
lab=VSS}
N -320 -470 -310 -470 {
lab=VDD}
N -640 -490 -620 -490 {
lab=RST}
N -870 -260 -870 -250 {
lab=VSS}
N -870 -340 -870 -320 {
lab=RST}
N -230 -360 -230 -340 {
lab=VSS}
N -640 -410 -620 -410 {
lab=CLK}
N -230 -450 -230 -420 {
lab=Vdiv}
N -640 110 -640 120 {
lab=VSS}
N -640 30 -640 50 {
lab=OPB1}
N -880 100 -880 110 {
lab=VSS}
N -880 20 -880 40 {
lab=OPB0}
N -640 -450 -620 -450 {
lab=OPB0}
N -640 -470 -620 -470 {
lab=OPB1}
N -380 110 -380 120 {
lab=VSS}
N -380 30 -380 50 {
lab=CLKB}
N -640 -430 -620 -430 {
lab=CLKB}
N -320 -430 -300 -430 {
lab=VdivB}
N -300 -430 -290 -430 {
lab=VdivB}
N -290 -360 -290 -340 {
lab=VSS}
N -290 -430 -290 -420 {
lab=VdivB}
N -300 -450 -240 -450 {
lab=Vdiv}
C {devices/vsource.sym} -650 -300 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -570 -300 0 0 {name=V2 value=0}
C {devices/vsource.sym} -500 -300 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -570 -350 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -650 -260 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -650 -350 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -500 -350 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -500 -260 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -570 -250 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -670 -590 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -180 -210 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 1n 200n
plot v(CLK) v(Vdiv)+3.5 v(VdivB)+7 v(OPB0)+10.5 v(OPB1)+14
write Diff_Output_Divider_TB.raw
.endc
"}
C {devices/capa.sym} -230 -390 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -230 -340 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -310 -490 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -310 -470 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -230 -450 2 0 {name=p13 sig_type=std_logic lab=Vdiv}
C {devices/lab_wire.sym} -640 -410 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -870 -250 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -870 -340 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -640 -490 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -870 -290 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/vsource.sym} -640 80 0 0 {name=V6 value="pulse(3.3 0 0 100p 100p 80n 160n)"}
C {devices/lab_wire.sym} -640 120 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -880 70 0 0 {name=V7 value="pulse(3.3 0 0 100p 100p 40n 80n)"}
C {devices/lab_wire.sym} -880 110 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -640 -470 0 0 {name=p20 sig_type=std_logic lab=OPB1}
C {devices/lab_wire.sym} -640 -450 0 0 {name=p21 sig_type=std_logic lab=OPB0}
C {Diff_Output_Divider.sym} -470 -450 0 0 {name=x1}
C {devices/vsource.sym} -380 80 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -380 30 0 0 {name=p9 sig_type=std_logic lab=CLKB}
C {devices/lab_wire.sym} -380 120 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -640 -430 0 0 {name=p22 sig_type=std_logic lab=CLKB}
C {devices/capa.sym} -290 -390 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -290 -340 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -290 -430 2 0 {name=p24 sig_type=std_logic lab=VdivB}
C {devices/lab_wire.sym} -880 20 1 0 {name=p18 sig_type=std_logic lab=OPB0}
C {devices/lab_wire.sym} -640 30 1 0 {name=p25 sig_type=std_logic lab=OPB1}
