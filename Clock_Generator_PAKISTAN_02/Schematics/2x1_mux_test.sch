v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -60 -260 -50 {
lab=VSS}
N -260 -140 -260 -120 {
lab=VDD}
N -180 -140 -180 -120 {
lab=VSS}
N -180 -60 -180 -40 {
lab=GND}
N -260 -210 -260 -200 {
lab=VSS}
N -260 -280 -260 -270 {
lab=S0}
N -550 -90 -550 -80 {
lab=VSS}
N -550 -170 -550 -150 {
lab=I0}
N -480 -310 -480 -300 {
lab=VSS}
N -480 -390 -480 -370 {
lab=I1}
N 160 -100 160 -90 {
lab=S0}
N 110 -40 130 -40 {
lab=I0}
N 110 -20 130 -20 {
lab=I1}
N 180 -100 180 -80 {
lab=VDD}
N 180 20 180 30 {
lab=VSS}
N 210 -30 230 -30 {
lab=OUT}
C {2x1_mux.sym} -70 90 0 0 {name=x1}
C {devices/vsource.sym} -260 -90 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -180 -90 0 0 {name=V2 value=0}
C {devices/vsource.sym} -260 -240 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} -180 -140 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -260 -50 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -260 -140 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -260 -280 0 0 {name=p12 sig_type=std_logic lab=S0
}
C {devices/lab_wire.sym} -260 -200 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -180 -40 0 0 {name=l1 lab=GND}
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
C {devices/vsource.sym} -550 -120 0 0 {name=V6 value="pulse(0 3.3 0 100p 100p 200n 400n)"3.3}
C {devices/lab_wire.sym} -550 -80 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -550 -170 0 0 {name=p25 sig_type=std_logic lab=I0}
C {devices/vsource.sym} -480 -340 0 0 {name=V7 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -480 -300 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -480 -390 0 0 {name=p27 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 110 -40 0 0 {name=p2 sig_type=std_logic lab=I0}
C {devices/lab_wire.sym} 110 -20 0 0 {name=p5 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 180 -100 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 30 2 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 160 -100 0 0 {name=p8 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} 230 -30 0 1 {name=p9 sig_type=std_logic lab=OUT}
