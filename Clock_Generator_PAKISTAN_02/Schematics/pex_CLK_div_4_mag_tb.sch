v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -270 260 -260 {
lab=VSS}
N 260 -350 260 -330 {
lab=VDD}
N 340 -350 340 -330 {
lab=VSS}
N 340 -270 340 -250 {
lab=GND}
N 410 -270 410 -260 {
lab=VSS}
N 410 -350 410 -330 {
lab=CLK}
N 860 -420 880 -420 {
lab=Vdiv4}
N 880 -420 890 -420 {
lab=Vdiv4}
N 890 -420 890 -330 {
lab=Vdiv4}
N 890 -270 960 -270 {
lab=VSS}
N 860 -460 870 -460 {
lab=VSS}
N 860 -440 870 -440 {
lab=VDD}
N 540 -460 560 -460 {
lab=RST}
N 540 -440 560 -440 {
lab=CLK}
N 80 -270 80 -260 {
lab=VSS}
N 80 -350 80 -330 {
lab=RST}
C {devices/vsource.sym} 260 -300 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 340 -300 0 0 {name=V2 value=0}
C {devices/vsource.sym} 410 -300 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 340 -350 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -260 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 260 -350 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 410 -350 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 410 -260 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 340 -250 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 30 -510 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1070 -660 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_4_mag.spice"
.control
save all
tran 50p 100n
plot v(CLK) v(Vdiv4)+3.5
*write pex_CLK_div_4_mag_TB.raw
.endc
"}
C {devices/capa.sym} 890 -300 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 930 -270 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 870 -460 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 870 -440 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 890 -420 2 0 {name=p9 sig_type=std_logic lab=Vdiv4}
C {devices/lab_wire.sym} 540 -440 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 80 -260 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 80 -350 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 540 -460 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 80 -300 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_4_mag.sym} 710 -440 0 0 {name=x1}
