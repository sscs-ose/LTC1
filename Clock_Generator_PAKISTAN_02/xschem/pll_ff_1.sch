v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 2330 530 3130 660 {flags=graph
y1=2.028
y2=5.708
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.92961e-08
x2=1.66523e-06
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=pd}
B 2 2330 400 3130 530 {flags=graph
y1=-0.17
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.92961e-08
x2=1.66523e-06
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=pu}
B 2 2330 270 3130 400 {flags=graph
y1=-0.14
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.92961e-08
x2=1.66523e-06
divx=5
subdivx=1
node=vdiv
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2330 660 3130 790 {flags=graph
y1=-5.3e-05
y2=0.89
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.92961e-08
x2=1.66523e-06
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vcntl}
B 2 2330 790 3130 920 {flags=graph
y1=-0.22
y2=3.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.92961e-08
x2=1.66523e-06
divx=5
subdivx=1
node=vco_op
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2330 920 3130 1050 {flags=graph
y1=-0.15
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.92961e-08
x2=1.66523e-06
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vco_op_bar}
B 2 2330 140 3130 270 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.92961e-08
x2=1.66523e-06
divx=5
subdivx=1
node=vref
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 890 670 890 690 {
lab=VDD}
N 890 820 890 840 {
lab=VSS}
N 800 730 820 730 {
lab=Vref}
N 800 780 820 780 {
lab=Vdiv}
N 960 780 980 780 {
lab=PD}
N 720 730 780 730 {
lab=Vref}
N 780 730 800 730 {
lab=Vref}
N 980 730 1070 730 {
lab=PU}
N 980 780 1070 780 {
lab=PD}
N 1260 730 1410 730 {
lab=PU}
N 1260 780 1410 780 {
lab=PD}
N 1460 700 1460 720 {
lab=VDD}
N 1460 820 1460 840 {
lab=VSS}
N 1520 770 1540 770 {
lab=vcntl}
N 1540 770 1600 770 {
lab=vcntl}
N 800 780 800 910 {
lab=Vdiv}
N 800 1010 800 1040 {
lab=Vdiv}
N 810 1040 1100 1040 {
lab=Vdiv}
N 2190 750 2250 750 {
lab=VCO_op}
N 2130 750 2190 750 {
lab=VCO_op}
N 2080 750 2130 750 {
lab=VCO_op}
N 1880 750 1920 750 {
lab=VDD_VCO}
N 2080 770 2110 770 {
lab=VCO_op_bar}
N 800 910 800 1010 {
lab=Vdiv}
N 800 1040 810 1040 {
lab=Vdiv}
N 1600 770 1760 770 {
lab=vcntl}
N 960 730 980 730 {
lab=PU}
N 1070 730 1260 730 {
lab=PU}
N 1070 780 1260 780 {
lab=PD}
N 1000 500 1000 520 {
lab=GND}
N 790 400 790 410 {
lab=GND}
N 1000 390 1020 390 {
lab=Vref}
N 820 190 820 200 {
lab=VSS}
N 820 110 820 130 {
lab=VDD}
N 900 110 900 130 {
lab=VSS}
N 900 190 900 210 {
lab=GND}
N 1880 730 1880 750 {
lab=VDD_VCO}
N 1100 1040 1270 1040 {
lab=Vdiv}
N 1230 1060 1270 1060 {
lab=VDD}
N 1230 1080 1270 1080 {
lab=VSS}
N 1570 1060 1600 1060 {
lab=VCO_op}
N 1570 1080 1600 1080 {
lab=RST}
N 2250 770 2250 1060 {
lab=VCO_op}
N 1600 1060 2250 1060 {
lab=VCO_op}
N 780 630 780 640 {
lab=VSS}
N 780 550 780 570 {
lab=RST}
N 2250 750 2250 770 {
lab=VCO_op}
N 1410 730 1410 750 {
lab=PU}
N 1760 770 1770 770 {
lab=vcntl}
N 790 340 850 340 {
lab=VDD_VCO}
N 1000 390 1000 440 {
lab=Vref}
N 1920 750 1930 750 {
lab=VDD_VCO}
N 1770 770 1930 770 {
lab=vcntl}
C {PFD.sym} 600 940 0 0 {name=x3}
C {CP_LF.sym} 1310 850 0 0 {name=x7}
C {devices/lab_pin.sym} 890 670 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 890 840 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1460 840 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1460 700 2 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 730 0 0 {name=p24 sig_type=std_logic lab=Vref
}
C {devices/lab_pin.sym} 970 1040 3 0 {name=p28 sig_type=std_logic lab=Vdiv
}
C {devices/lab_pin.sym} 2250 750 2 0 {name=p36 sig_type=std_logic lab=VCO_op
}
C {devices/vsource.sym} 1000 470 0 0 {name=VCNTL value="pulse(3.3 0 0 100p 100p 250n 500n)"}
C {devices/gnd.sym} 1000 520 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 790 410 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 790 370 0 0 {name=V2 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 2220 380 0 1 {name=NGSPICE1 only_toplevel=true
value="
.option temp=70
.control
save all
tran 2n 100u 
plot v(VCO_op) v(VCO_op_bar)+4
plot v(vcntl)
plot v(Vdiv)
plot v(vref)
write pll_1_ff.raw
.endc
"}
C {devices/code_shown.sym} 1410 410 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ff
"}
C {devices/vsource.sym} 820 160 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 900 160 0 0 {name=V3 value=0}
C {devices/lab_wire.sym} 900 110 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 820 200 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 820 110 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 900 210 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1880 730 0 0 {name=p2 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 2110 770 2 0 {name=p5 sig_type=std_logic lab=VCO_op_bar
}
C {devices/lab_pin.sym} 1230 1060 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1230 1080 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1600 1080 3 0 {name=p8 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 850 340 1 0 {name=p11 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 1010 390 2 0 {name=p12 sig_type=std_logic lab=Vref
}
C {devices/lab_wire.sym} 780 640 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 780 550 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 780 600 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_pin.sym} 1620 770 1 0 {name=p14 sig_type=std_logic lab=vcntl
}
C {CLK_div_100.sym} 1420 1060 2 0 {name=x1}
C {devices/lab_pin.sym} 1230 730 1 0 {name=p18 sig_type=std_logic lab=PU}
C {devices/lab_pin.sym} 1230 780 1 0 {name=p19 sig_type=std_logic lab=PD}
C {VCO_TB.sym} 2060 880 0 0 {name=x2}
