v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -100 -600 700 -200 {flags=graph
y1=-0.016
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


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vdiv93}
B 2 -100 -200 700 200 {flags=graph
y1=-0.016
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
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -560 50 -560 60 {
lab=VSS}
N -560 -30 -560 -10 {
lab=VDD}
N -480 -30 -480 -10 {
lab=VSS}
N -480 50 -480 70 {
lab=GND}
N -410 50 -410 60 {
lab=VSS}
N -410 -30 -410 -10 {
lab=CLK}
N -480 -510 -460 -510 {
lab=Q0}
N -460 -510 -450 -510 {
lab=Q0}
N -450 -510 -450 -460 {
lab=Q0}
N -480 -550 -470 -550 {
lab=VSS}
N -480 -530 -470 -530 {
lab=VDD}
N -450 -350 -450 -330 {
lab=VSS}
N -800 -530 -780 -530 {
lab=CLK}
N -380 -350 -380 -330 {
lab=VSS}
N -320 -350 -320 -330 {
lab=VSS}
N -250 -350 -250 -330 {
lab=VSS}
N -180 -350 -180 -330 {
lab=VSS}
N -450 -460 -450 -410 {
lab=Q0}
N -480 -490 -390 -490 {
lab=Q1}
N -390 -490 -380 -490 {
lab=Q1}
N -380 -490 -380 -410 {
lab=Q1}
N -480 -470 -320 -470 {
lab=Q2}
N -320 -470 -320 -410 {
lab=Q2}
N -480 -450 -250 -450 {
lab=Q3}
N -250 -450 -250 -410 {
lab=Q3}
N -480 -430 -180 -430 {
lab=Q4}
N -180 -430 -180 -410 {
lab=Q4}
N -700 -240 -700 -230 {
lab=VSS}
N -700 -320 -700 -300 {
lab=RST}
N -800 -550 -780 -550 {
lab=RST}
C {devices/vsource.sym} -560 20 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -480 20 0 0 {name=V2 value=0}
C {devices/vsource.sym} -410 20 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} -480 -30 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -560 60 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -560 -30 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -410 -30 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -410 60 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -480 70 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -790 -650 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -170 -210 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 200n
plot v(CLK) v(Q0)+3.5 v(Q1)+7 v(Q2)+10.5 v(Q3)+14 v(Q4)+17.5
write Counter_17_TB.raw
.endc
"}
C {devices/capa.sym} -450 -380 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -450 -330 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -470 -550 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -470 -530 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -450 -510 2 0 {name=p13 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} -800 -530 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/capa.sym} -380 -380 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -380 -330 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -320 -380 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -320 -330 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -250 -380 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -250 -330 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -180 -380 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -180 -330 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -380 -490 2 0 {name=p14 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} -320 -470 2 0 {name=p16 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} -250 -450 2 0 {name=p17 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} -180 -430 2 0 {name=p18 sig_type=std_logic lab=Q4}
C {Counter_32.sym} -630 -490 0 0 {name=x1}
C {devices/lab_wire.sym} -700 -230 0 0 {name=p19 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -700 -320 0 0 {name=p20 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -700 -270 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} -800 -550 0 0 {name=p21 sig_type=std_logic lab=RST}
