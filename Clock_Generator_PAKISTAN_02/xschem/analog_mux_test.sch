v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -270 -80 -270 -70 {
lab=VSS}
N -270 -160 -270 -140 {
lab=VDD}
N -190 -160 -190 -140 {
lab=VSS}
N -190 -80 -190 -60 {
lab=GND}
N -270 -230 -270 -220 {
lab=VSS}
N -270 -300 -270 -290 {
lab=S}
N -560 -110 -560 -100 {
lab=VSS}
N -560 -190 -560 -170 {
lab=I1}
N -490 -330 -490 -320 {
lab=VSS}
N -490 -410 -490 -390 {
lab=I0}
N 150 -230 150 -200 {
lab=S}
N 160 -220 160 -200 {
lab=VDD}
N 90 -160 110 -160 {
lab=I0}
N 90 -110 110 -110 {
lab=I1}
N 160 -70 160 -50 {
lab=VSS}
N 200 -140 220 -140 {
lab=OUT}
C {analog_mux.sym} 20 0 0 0 {name=x1}
C {devices/vsource.sym} -270 -110 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -190 -110 0 0 {name=V2 value=0}
C {devices/vsource.sym} -270 -260 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} -190 -160 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -270 -70 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -270 -160 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -270 -300 0 0 {name=p12 sig_type=std_logic lab=S
}
C {devices/lab_wire.sym} -270 -220 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -190 -60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -560 -140 0 0 {name=V6 value="PWL(0 2 400n 3 600n 2.5 700n 3.3)"}
C {devices/lab_wire.sym} -560 -100 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -560 -190 0 0 {name=p25 sig_type=std_logic lab=I1}
C {devices/vsource.sym} -490 -360 0 0 {name=V7 value="PWL(0 0 50n 1 100n 2 200n 3.3)"}
C {devices/lab_wire.sym} -490 -320 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -490 -410 0 0 {name=p27 sig_type=std_logic lab=I0}
C {devices/code_shown.sym} 510 -470 0 1 {name=NGSPICE1 only_toplevel=true
value="
.control
save all
tran 50p 800n 
plot v(S)  v(I0)+5 v(I1)+10 v(OUT)+15


*write test_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} -310 -520 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/lab_wire.sym} 90 -160 0 0 {name=p2 sig_type=std_logic lab=I0}
C {devices/lab_wire.sym} 90 -110 0 0 {name=p5 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 150 -220 0 0 {name=p6 sig_type=std_logic lab=S
}
C {devices/lab_wire.sym} 160 -220 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 160 -50 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 220 -140 2 0 {name=p9 sig_type=std_logic lab=OUT
}
