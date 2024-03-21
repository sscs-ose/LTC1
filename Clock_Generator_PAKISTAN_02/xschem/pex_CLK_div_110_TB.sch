v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -70 360 -60 {
lab=VSS}
N 360 -150 360 -130 {
lab=VDD}
N 440 -150 440 -130 {
lab=VSS}
N 440 -70 440 -50 {
lab=GND}
N 510 -70 510 -60 {
lab=VSS}
N 510 -150 510 -130 {
lab=CLK}
N 700 -190 720 -190 {
lab=Vdiv110}
N 720 -190 730 -190 {
lab=Vdiv110}
N 730 -190 730 -140 {
lab=Vdiv110}
N 700 -230 710 -230 {
lab=VSS}
N 700 -210 710 -210 {
lab=VDD}
N 380 -230 400 -230 {
lab=RST}
N 180 -70 180 -60 {
lab=VSS}
N 180 -150 180 -130 {
lab=RST}
N 730 -80 730 -60 {
lab=VSS}
N 380 -210 400 -210 {
lab=CLK}
C {devices/vsource.sym} 360 -100 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 440 -100 0 0 {name=V2 value=0}
C {devices/vsource.sym} 510 -100 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 440 -150 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 -60 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 360 -150 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 510 -150 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 510 -60 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 440 -50 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 380 -360 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1130 -440 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_110_mag.spice"
.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv110)+3.5 v(RST)+7
*write pex_CLK_div_110_TB.raw
.endc
"}
C {devices/capa.sym} 730 -110 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 730 -60 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 710 -230 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 710 -210 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 730 -190 2 0 {name=p13 sig_type=std_logic lab=Vdiv110}
C {devices/lab_wire.sym} 380 -210 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 180 -60 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 180 -150 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 380 -230 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 180 -100 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_110_mag.sym} 550 -210 0 0 {name=x1}
