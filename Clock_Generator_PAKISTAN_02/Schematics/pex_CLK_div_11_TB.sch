v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 400 -140 400 -130 {
lab=VSS}
N 400 -220 400 -200 {
lab=VDD}
N 480 -220 480 -200 {
lab=VSS}
N 480 -140 480 -120 {
lab=GND}
N 550 -140 550 -130 {
lab=VSS}
N 550 -220 550 -200 {
lab=CLK}
N 380 -540 400 -540 {
lab=Q0}
N 400 -540 410 -540 {
lab=Q0}
N 410 -540 410 -450 {
lab=Q0}
N 380 -520 480 -520 {
lab=Q1}
N 480 -520 480 -450 {
lab=Q1}
N 380 -480 560 -480 {
lab=Q2}
N 560 -480 560 -450 {
lab=Q2}
N 380 -460 640 -460 {
lab=Q3}
N 640 -460 640 -450 {
lab=Q3}
N 380 -500 710 -500 {
lab=Vdiv11}
N 710 -500 710 -450 {
lab=Vdiv11}
N 410 -390 480 -390 {
lab=VSS}
N 480 -390 560 -390 {
lab=VSS}
N 560 -390 640 -390 {
lab=VSS}
N 640 -390 710 -390 {
lab=VSS}
N 380 -580 390 -580 {
lab=VSS}
N 380 -560 390 -560 {
lab=VDD}
N 60 -580 80 -580 {
lab=RST}
N 60 -560 80 -560 {
lab=CLK}
N 220 -140 220 -130 {
lab=VSS}
N 220 -220 220 -200 {
lab=RST}
C {devices/vsource.sym} 400 -170 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 480 -170 0 0 {name=V2 value=0}
C {devices/vsource.sym} 550 -170 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 480 -220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 400 -130 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 400 -220 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 550 -220 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 550 -130 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 480 -120 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 280 -330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1630 -480 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_11_mag_new.spice"
.control
save all
tran 50p 200n
plot v(CLK) v(Vdiv11)+3.5 v(Q0)+7 v(Q1)+10.5 v(Q2)+14 v(Q3)+17.5 v(RST)+21
*write pex_CLK_div_11_TB.raw

.endc
"}
C {devices/capa.sym} 410 -420 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 480 -420 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 560 -420 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 640 -420 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 710 -420 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 520 -390 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 390 -580 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 390 -560 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 410 -540 2 0 {name=p9 sig_type=std_logic lab=Q0}
C {devices/lab_wire.sym} 480 -520 2 0 {name=p10 sig_type=std_logic lab=Q1}
C {devices/lab_wire.sym} 560 -480 2 0 {name=p11 sig_type=std_logic lab=Q2}
C {devices/lab_wire.sym} 640 -460 2 0 {name=p12 sig_type=std_logic lab=Q3}
C {devices/lab_wire.sym} 710 -500 2 0 {name=p13 sig_type=std_logic lab=Vdiv11}
C {devices/lab_wire.sym} 60 -560 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 220 -130 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 220 -220 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 60 -580 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 220 -170 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_11_mag_new .sym} 230 -520 0 0 {name=x1}
