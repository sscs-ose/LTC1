v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 -130 520 -130 {
lab=VSS}
N 500 -110 520 -110 {
lab=VDD}
N 500 -90 510 -90 {
lab=Q}
N 180 -110 200 -110 {
lab=J}
N 180 -130 200 -130 {
lab=CLK}
N 180 -90 200 -90 {
lab=RST}
N 510 -90 570 -90 {
lab=Q}
N 550 -70 550 -30 {
lab=QB}
N 500 -70 510 -70 {
lab=QB}
N 180 -70 200 -70 {
lab=K}
N 510 -70 550 -70 {
lab=QB}
N 580 -330 580 -320 {
lab=VSS}
N 580 -410 580 -390 {
lab=VDD}
N 660 -410 660 -390 {
lab=VSS}
N 660 -330 660 -310 {
lab=GND}
N 730 -330 730 -320 {
lab=VSS}
N 730 -410 730 -390 {
lab=CLK}
N -10 -300 -10 -290 {
lab=VSS}
N -10 -370 -10 -360 {
lab=J}
N -10 -420 -10 -410 {
lab=VSS}
N -10 -490 -10 -480 {
lab=K}
N 620 -160 620 -150 {
lab=VSS}
N 620 -240 620 -220 {
lab=RST}
C {devices/lab_wire.sym} 520 -130 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 -110 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/code_shown.sym} 830 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1610 -360 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_JK_FF_mag.spice"
.control
save all
tran 50p 500n
plot v(J)
plot v(K)
plot V(CLK) 
plot v(Q)
plot v(QB)
plot V(RST)

*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 510 -90 2 0 {name=p2 sig_type=std_logic lab=Q}
C {devices/lab_wire.sym} 510 -70 2 0 {name=p14 sig_type=std_logic lab=QB}
C {devices/lab_wire.sym} 180 -110 0 0 {name=p11 sig_type=std_logic lab=J}
C {devices/lab_wire.sym} 180 -130 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 180 -90 0 0 {name=p7 sig_type=std_logic lab=RST

}
C {devices/capa.sym} 550 0 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 570 -60 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 550 30 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -30 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -70 0 0 {name=p19 sig_type=std_logic lab=K}
C {pex_JK_FF_mag.sym} 350 -100 0 0 {name=x1}
C {devices/vsource.sym} 580 -360 0 0 {name=V7 value=3.3}
C {devices/vsource.sym} 660 -360 0 0 {name=V8 value=0}
C {devices/vsource.sym} 730 -360 0 0 {name=V9 value="pulse(0 3.3 0 100p 100p 50n 100n)"}
C {devices/vsource.sym} -10 -330 0 0 {name=V10 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 660 -410 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 580 -320 0 0 {name=p23 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 580 -410 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 730 -410 0 0 {name=p25 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 730 -320 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 -370 0 0 {name=p27 sig_type=std_logic lab=J}
C {devices/lab_wire.sym} -10 -290 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 660 -310 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -10 -450 0 0 {name=V12 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -10 -490 0 0 {name=p31 sig_type=std_logic lab=K}
C {devices/lab_wire.sym} -10 -410 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 620 -150 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 620 -240 0 0 {name=p1 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 620 -190 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
