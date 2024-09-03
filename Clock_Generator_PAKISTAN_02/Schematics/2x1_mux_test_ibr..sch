v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -210 -230 -200 {
lab=VSS}
N -230 -290 -230 -270 {
lab=VDD}
N -150 -290 -150 -270 {
lab=VSS}
N -150 -210 -150 -190 {
lab=GND}
N -410 -360 -410 -350 {
lab=VSS}
N -410 -430 -410 -420 {
lab=S0}
N -560 -270 -560 -260 {
lab=VSS}
N -560 -350 -560 -330 {
lab=I0}
N -480 -310 -480 -300 {
lab=VSS}
N -480 -390 -480 -370 {
lab=I1}
N -40 -380 -40 -370 {
lab=S0}
N -90 -320 -70 -320 {
lab=I0}
N -20 -380 -20 -360 {
lab=VDD}
N -20 -260 -20 -250 {
lab=VSS}
N 10 -310 30 -310 {
lab=OUT}
N -90 -300 -70 -300 {
lab=I1}
C {devices/vsource.sym} -230 -240 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -150 -240 0 0 {name=V2 value=0}
C {devices/vsource.sym} -410 -390 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} -150 -290 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -230 -200 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -230 -290 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -410 -430 0 0 {name=p12 sig_type=std_logic lab=S0
}
C {devices/lab_wire.sym} -410 -350 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -150 -190 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 120 -480 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 600 -370 0 1 {name=NGSPICE1 only_toplevel=true
value="
.control
save all
tran 50p 800n 
plot v(S0)  v(I0)+5 v(I1)+10 v(OUT)+15


*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -560 -300 0 0 {name=V6 value="pulse(0 3.3 0 100p 100p 200n 400n)"3.3}
C {devices/lab_wire.sym} -560 -260 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -560 -350 0 0 {name=p25 sig_type=std_logic lab=I0}
C {devices/vsource.sym} -480 -340 0 0 {name=V7 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -480 -300 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -480 -390 0 0 {name=p27 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} -90 -320 0 0 {name=p2 sig_type=std_logic lab=I0}
C {devices/lab_wire.sym} -90 -300 0 0 {name=p5 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} -20 -380 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -20 -250 2 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -40 -380 0 0 {name=p8 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} 30 -310 0 1 {name=p9 sig_type=std_logic lab=OUT}
C {2x1_mux_ibr.sym} -270 -190 0 0 {name=x1}
