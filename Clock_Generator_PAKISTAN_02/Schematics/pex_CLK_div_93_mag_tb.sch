v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -160 80 -150 {
lab=VSS}
N 80 -240 80 -220 {
lab=VDD}
N 160 -240 160 -220 {
lab=VSS}
N 160 -160 160 -140 {
lab=GND}
N 230 -160 230 -150 {
lab=VSS}
N 230 -240 230 -220 {
lab=CLK}
N 430 -510 450 -510 {
lab=Vdiv93}
N 450 -510 460 -510 {
lab=Vdiv93}
N 460 -510 460 -460 {
lab=Vdiv93}
N 430 -550 440 -550 {
lab=VSS}
N 430 -530 440 -530 {
lab=VDD}
N 460 -400 460 -380 {
lab=VSS}
N 110 -530 130 -530 {
lab=CLK}
N 110 -550 130 -550 {
lab=RST}
N 150 -350 150 -340 {
lab=VSS}
N 150 -430 150 -410 {
lab=RST}
C {devices/vsource.sym} 80 -190 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 160 -190 0 0 {name=V2 value=0}
C {devices/vsource.sym} 230 -190 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 2.50n 5n)"}
C {devices/lab_wire.sym} 160 -240 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -150 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 80 -240 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 230 -240 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 230 -150 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 160 -140 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 570 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 920 -320 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CLK_div_93_mag.spice"
.control
save all
tran 1n 1u
plot v(CLK) v(Vdiv93)+3.5 
write pex_CLK_div_93_TB.raw
.endc
"}
C {devices/capa.sym} 460 -430 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 460 -380 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 -550 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 -530 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 460 -510 2 0 {name=p13 sig_type=std_logic lab=Vdiv93}
C {devices/lab_wire.sym} 110 -530 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 110 -550 0 0 {name=p14 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} 150 -340 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 150 -430 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 150 -380 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {pex_CLK_div_93_mag.sym} 280 -530 0 0 {name=x1}
