v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -20 -580 780 -180 {flags=graph
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
node=q4
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -20 -180 780 220 {flags=graph
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
N -460 110 -460 120 {
lab=VSS}
N -460 30 -460 50 {
lab=VDD}
N -380 30 -380 50 {
lab=VSS}
N -380 110 -380 130 {
lab=GND}
N -310 110 -310 120 {
lab=VSS}
N -310 30 -310 50 {
lab=CLK}
N -440 -390 -420 -390 {
lab=Q0}
N -420 -390 -410 -390 {
lab=Q0}
N -410 -390 -410 -340 {
lab=Q0}
N -440 -430 -430 -430 {
lab=VSS}
N -440 -410 -430 -410 {
lab=VDD}
N -410 -240 -410 -220 {
lab=VSS}
N -760 -410 -740 -410 {
lab=CLK}
N -350 -240 -350 -220 {
lab=VSS}
N -290 -350 -280 -350 {
lab=Q2}
N -280 -350 -280 -300 {
lab=Q2}
N -280 -240 -280 -220 {
lab=VSS}
N -220 -240 -220 -220 {
lab=VSS}
N -410 -340 -410 -300 {
lab=Q0}
N -440 -370 -350 -370 {
lab=Q1}
N -350 -370 -350 -300 {
lab=Q1}
N -440 -350 -290 -350 {
lab=Q2}
N -440 -330 -220 -330 {
lab=Q3}
N -150 -240 -150 -220 {
lab=VSS}
N -440 -310 -150 -310 {
lab=Q4}
N -220 -330 -220 -300 {
lab=Q3}
N -150 -310 -150 -300 {
lab=Q4}
N -670 100 -670 110 {
lab=VSS}
N -670 20 -670 40 {
lab=RST}
N -770 -430 -740 -430 {
lab=RST}
C {devices/vsource.sym} -460 80 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -380 80 0 0 {name=V2 value=0}
C {devices/vsource.sym} -310 80 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -380 30 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -460 120 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -460 30 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -310 30 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -310 120 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -380 130 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -540 -540 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -110 -150 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 300n
plot v(CLK) v(Q0)+3.5 v(Q1)+7 v(Q2)+10.5 v(Q3)+14 v(Q4)+17.5
write CLK_div_32_TB.raw
.endc
"}
C {devices/capa.sym} -410 -270 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -410 -220 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -430 -430 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -430 -410 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -410 -390 2 0 {name=p13 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} -760 -410 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/capa.sym} -350 -270 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -350 -220 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -280 -270 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -280 -220 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -280 -350 2 0 {name=p12 sig_type=std_logic lab=Q2}
C {devices/capa.sym} -220 -270 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -220 -220 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -220 -330 2 0 {name=p19 sig_type=std_logic lab=Q3}
C {devices/capa.sym} -150 -270 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -150 -220 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -150 -310 2 0 {name=p20 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} -350 -370 2 0 {name=p21 sig_type=std_logic lab=Q1}
C {CLK_div_32.sym} -590 -370 0 0 {name=x1}
C {devices/lab_wire.sym} -670 110 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -670 20 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -670 70 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} -770 -430 0 0 {name=p14 sig_type=std_logic lab=RST}
