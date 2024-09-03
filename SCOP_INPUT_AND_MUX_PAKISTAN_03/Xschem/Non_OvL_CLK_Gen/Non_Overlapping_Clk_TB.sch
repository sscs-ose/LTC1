v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -280 20 -210 {
lab=VDD}
N 20 -70 20 -30 {
lab=VSS}
N -170 -140 -130 -140 {
lab=VIN}
N 170 -180 220 -180 {
lab=PH1P}
N 170 -100 220 -100 {
lab=PH2P}
N 220 -180 310 -180 {
lab=PH1P}
N 250 -30 250 -10 {
lab=VSS}
N 250 -10 300 -10 {
lab=VSS}
N 310 -90 310 -10 {
lab=VSS}
N 20 -350 20 -340 {
lab=VSS}
N -170 -80 -170 -60 {
lab=VSS}
N 60 130 60 160 {
lab=GND}
N -30 70 60 70 {
lab=VSS}
N 220 -100 250 -100 {
lab=PH2P}
N 630 -210 630 -140 {
lab=VDD}
N 630 0 630 40 {
lab=VSS}
N 440 -70 480 -70 {
lab=VIN}
N 780 -110 830 -110 {
lab=PH1}
N 780 -30 830 -30 {
lab=#net1}
N 830 -110 920 -110 {
lab=PH1}
N 860 40 860 60 {
lab=VSS}
N 980 -50 980 60 {
lab=VSS}
N 860 60 910 60 {
lab=VSS}
N 910 60 980 60 {
lab=VSS}
N 830 -30 860 -30 {
lab=#net1}
N 310 -180 310 -150 {
lab=PH1P}
N 300 -10 310 -10 {
lab=VSS}
N 250 -100 250 -90 {
lab=PH2P}
N 920 -110 980 -110 {
lab=PH1}
N 860 -30 860 -20 {}
C {devices/capa.sym} 310 -120 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 250 -60 0 0 {name=C3
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 20 -310 2 0 {name=V1 value=3.3}
C {devices/vsource.sym} -170 -110 0 0 {name=V2 value="pulse(3.3 0 0 10p 10p 50n 100n)"}
C {devices/lab_wire.sym} -170 -60 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 20 -350 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 20 -40 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 270 -10 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 110 -410 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1340 -410 0 1 {name=NGSPICE only_toplevel=true
value=
"
.include "pex_Non_Ovl_CLK_Gen_Layout.spice"
.control
set color0 = white
set color1 = black
save all
dc v2 0 3.3 0.1
*plot v(VIN) v(PH1A) v(PH1) v(PH2)

tran 100p 200n 
plot v(VIN) v(PH1)+3.5 v(PH2)+3.5 v(PH1P)+7 v(PH2P)+7
*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} -150 -140 0 0 {name=p8 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 240 -180 0 0 {name=p9 sig_type=std_logic lab=PH1P}
C {devices/lab_wire.sym} 220 -100 0 0 {name=p10 sig_type=std_logic lab=PH2P}
C {devices/vsource.sym} 60 100 0 0 {name=V4 value=0}
C {devices/gnd.sym} 60 160 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -30 70 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {Non_Overlapping_clk.sym} 20 -140 0 0 {name=x1}
C {devices/capa.sym} 980 -80 0 0 {name=C4
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 860 10 0 0 {name=C6
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 630 30 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 880 60 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 460 -70 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 850 -110 0 0 {name=p16 sig_type=std_logic lab=PH1}
C {devices/lab_wire.sym} 830 -30 0 0 {name=p17 sig_type=std_logic lab=PH2}
C {devices/lab_pin.sym} 20 -250 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 630 -180 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {Non_Overlapping_clk_PEX.sym} 630 -70 0 0 {name=x2}
