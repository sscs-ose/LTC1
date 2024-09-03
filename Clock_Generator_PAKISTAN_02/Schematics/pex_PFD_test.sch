v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 800 -330 880 -330 {
lab=PU}
N 800 -280 840 -280 {
lab=PD}
N 630 -330 660 -330 {
lab=VREF}
N 630 -280 660 -280 {
lab=VDIV}
N 730 -400 730 -370 {
lab=VDD}
N 730 -240 730 -220 {
lab=VSS}
N 120 -100 120 -90 {
lab=VSS}
N 120 -180 120 -160 {
lab=VDD}
N 200 -180 200 -160 {
lab=VSS}
N 200 -100 200 -80 {
lab=GND}
N 270 -100 270 -90 {
lab=VSS}
N 270 -180 270 -160 {
lab=VDIV}
N 520 -90 520 -80 {
lab=VSS}
N 520 -170 520 -150 {
lab=VREF}
N 840 -280 860 -280 {
lab=PD}
N 880 -330 960 -330 {
lab=PU}
N 860 -220 860 -200 {
lab=VSS}
N 960 -270 960 -250 {
lab=VSS}
C {devices/lab_wire.sym} 730 -400 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 630 -330 0 0 {name=p2 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 630 -280 0 0 {name=p3 sig_type=std_logic lab=VDIV
}
C {devices/lab_wire.sym} 730 -220 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 810 -330 2 0 {name=p5 sig_type=std_logic lab=PU}
C {devices/lab_wire.sym} 820 -280 2 0 {name=p6 sig_type=std_logic lab=PD}
C {devices/vsource.sym} 120 -130 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 200 -130 0 0 {name=V2 value=0}
C {devices/vsource.sym} 270 -130 0 0 {name=V3 value="pulse(3.3 0 10n 100p 100p 50n 100n)"}
C {devices/lab_wire.sym} 200 -180 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 120 -90 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 120 -180 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 270 -180 0 0 {name=p10 sig_type=std_logic lab=VDIV}
C {devices/lab_wire.sym} 270 -90 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 200 -80 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 140 -560 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 500 -440 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_PFD_layout.spice"
.control
save all
tran 50p 500n 
plot v(VREF) V(VDIV)+5 v(PU)+10 v(PD)+15
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 520 -120 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 50n 100n)"}
C {devices/lab_wire.sym} 520 -170 0 0 {name=p12 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 520 -80 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 860 -250 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 960 -300 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 860 -200 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 960 -250 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {pex_PFD_layout.sym} 440 -120 0 0 {name=x1}
