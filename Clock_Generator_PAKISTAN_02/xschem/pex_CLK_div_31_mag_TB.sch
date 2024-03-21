v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 820 -880 1620 -480 {flags=graph
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
B 2 820 -480 1620 -80 {flags=graph
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
N 380 -160 380 -150 {
lab=VSS}
N 380 -240 380 -220 {
lab=VDD}
N 460 -240 460 -220 {
lab=VSS}
N 460 -160 460 -140 {
lab=GND}
N 530 -160 530 -150 {
lab=VSS}
N 530 -240 530 -220 {
lab=CLK}
N 400 -690 420 -690 {
lab=Q0}
N 420 -690 430 -690 {
lab=Q0}
N 430 -690 430 -640 {
lab=Q0}
N 400 -730 410 -730 {
lab=VSS}
N 400 -710 410 -710 {
lab=VDD}
N 430 -520 430 -500 {
lab=VSS}
N 490 -520 490 -500 {
lab=VSS}
N 550 -650 560 -650 {
lab=Q2}
N 560 -650 560 -600 {
lab=Q2}
N 560 -520 560 -500 {
lab=VSS}
N 620 -520 620 -500 {
lab=VSS}
N 430 -640 430 -600 {
lab=Q0}
N 400 -670 490 -670 {
lab=Q1}
N 490 -670 490 -600 {
lab=Q1}
N 400 -650 550 -650 {
lab=Q2}
N 400 -630 620 -630 {
lab=Q3}
N 690 -520 690 -500 {
lab=VSS}
N 400 -610 690 -610 {
lab=Q4}
N 620 -630 620 -600 {
lab=Q3}
N 760 -520 760 -500 {
lab=VSS}
N 760 -590 760 -580 {
lab=Vdiv31}
N 400 -590 760 -590 {
lab=Vdiv31}
N 690 -610 690 -580 {
lab=Q4}
N 620 -600 620 -580 {
lab=Q3}
N 560 -600 560 -580 {
lab=Q2}
N 490 -600 490 -580 {
lab=Q1}
N 430 -600 430 -580 {
lab=Q0}
N 100 -170 100 -160 {
lab=VSS}
N 100 -250 100 -230 {
lab=RST}
N 80 -730 100 -730 {
lab=RST}
N 80 -710 100 -710 {
lab=CLK}
C {devices/vsource.sym} 380 -190 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 460 -190 0 0 {name=V2 value=0}
C {devices/vsource.sym} 530 -190 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 460 -240 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -150 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 380 -240 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 530 -240 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 530 -150 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 460 -140 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 300 -840 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 730 -420 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_31_mag.spice"
.control
save all
tran 50p 250n
plot v(CLK) v(Q0)+3.5 v(Q1)+7 v(Q2)+10.5 v(Q3)+14 v(Q4)+17.5 v(Vdiv31)+21
write pex_CLK_div_31_mag_TB.raw
.endc
"}
C {devices/capa.sym} 430 -550 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 430 -500 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 -730 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 -710 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 430 -690 2 0 {name=p13 sig_type=std_logic lab=Q0}
C {devices/capa.sym} 490 -550 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 490 -500 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 560 -550 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 560 -500 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 560 -650 2 0 {name=p12 sig_type=std_logic lab=Q2}
C {devices/capa.sym} 620 -550 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 620 -500 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 620 -630 2 0 {name=p19 sig_type=std_logic lab=Q3}
C {devices/capa.sym} 690 -550 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 690 -500 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -610 2 0 {name=p20 sig_type=std_logic lab=Q4}
C {devices/lab_wire.sym} 490 -670 2 0 {name=p21 sig_type=std_logic lab=Q1}
C {devices/capa.sym} 760 -550 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 760 -500 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 760 -590 2 0 {name=p16 sig_type=std_logic lab=Vdiv31}
C {devices/lab_wire.sym} 100 -160 0 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 100 -250 0 0 {name=p22 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 100 -200 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_wire.sym} 80 -710 0 0 {name=p23 sig_type=std_logic lab=CLK}
C {pex_CLK_div_31_mag.sym} 250 -660 0 0 {name=x1}
C {devices/lab_wire.sym} 80 -730 0 0 {name=p15 sig_type=std_logic lab=RST}
