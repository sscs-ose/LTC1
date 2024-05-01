v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 110 -10 120 {
lab=VSS}
N -10 30 -10 50 {
lab=VDD}
N 70 30 70 50 {
lab=VSS}
N 70 110 70 130 {
lab=GND}
N 140 110 140 120 {
lab=VSS}
N 140 30 140 50 {
lab=CLK}
N -160 -400 -140 -400 {
lab=VSS}
N -160 -380 -140 -380 {
lab=VDD}
N -600 140 -600 150 {
lab=VSS}
N -600 70 -600 80 {
lab=J}
N -160 -360 -150 -360 {
lab=Q}
N -160 -340 -150 -340 {
lab=QB}
N -480 -380 -460 -380 {
lab=J}
N -480 -400 -460 -400 {
lab=CLK}
N -480 -360 -460 -360 {
lab=RST}
N -150 -360 -90 -360 {
lab=Q}
N -110 -340 -110 -300 {
lab=QB}
N -160 -340 -150 -340 {
lab=QB}
N -480 -340 -460 -340 {
lab=K}
N -150 -340 -110 -340 {
lab=QB}
N -600 20 -600 30 {
lab=VSS}
N -600 -50 -600 -40 {
lab=K}
N -210 100 -210 110 {
lab=VSS}
N -210 20 -210 40 {
lab=RST}
C {devices/vsource.sym} -10 80 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 70 80 0 0 {name=V2 value=0}
C {devices/vsource.sym} 140 80 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 50n 100n)"}
C {devices/vsource.sym} -600 110 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 70 30 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 120 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -10 30 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 30 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 140 120 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -140 -400 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -140 -380 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -600 70 0 0 {name=p12 sig_type=std_logic lab=J}
C {devices/lab_wire.sym} -600 150 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 70 130 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 150 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 800 -120 0 1 {name=NGSPICE1 only_toplevel=true
value="

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
C {devices/lab_wire.sym} -150 -360 2 0 {name=p2 sig_type=std_logic lab=Q}
C {devices/lab_wire.sym} -150 -340 2 0 {name=p14 sig_type=std_logic lab=QB}
C {devices/lab_wire.sym} -480 -380 0 0 {name=p11 sig_type=std_logic lab=J}
C {devices/lab_wire.sym} -480 -400 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -480 -360 0 0 {name=p7 sig_type=std_logic lab=RST

}
C {devices/capa.sym} -110 -270 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -90 -330 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -110 -240 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -90 -300 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {JK_flipflop.sym} -310 -370 0 0 {name=x2}
C {devices/lab_wire.sym} -480 -340 0 0 {name=p19 sig_type=std_logic lab=K}
C {devices/vsource.sym} -600 -10 0 0 {name=V6 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -600 -50 0 0 {name=p20 sig_type=std_logic lab=K}
C {devices/lab_wire.sym} -600 30 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -210 110 0 0 {name=p16 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -210 20 0 0 {name=p8 sig_type=std_logic lab=RST}
C {devices/vsource.sym} -210 70 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
