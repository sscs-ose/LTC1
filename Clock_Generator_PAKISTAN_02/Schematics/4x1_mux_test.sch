v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -10 10 0 {
lab=VSS}
N 10 -90 10 -70 {
lab=VDD}
N 90 -90 90 -70 {
lab=VSS}
N 90 -10 90 10 {
lab=GND}
N 10 -160 10 -150 {
lab=VSS}
N 10 -230 10 -220 {
lab=S0}
N -280 -40 -280 -30 {
lab=VSS}
N -280 -120 -280 -100 {
lab=I0}
N -210 -260 -210 -250 {
lab=VSS}
N -210 -340 -210 -320 {
lab=I1}
N 630 20 630 30 {
lab=S0}
N 540 90 560 90 {
lab=I0}
N 540 110 560 110 {
lab=I1}
N 660 20 660 40 {
lab=VDD}
N 630 230 630 240 {
lab=VSS}
N 700 130 720 130 {
lab=OUT}
N 540 130 560 130 {
lab=I0}
N 540 150 560 150 {
lab=I1}
N 610 20 610 30 {
lab=S1}
N 230 -30 230 -20 {
lab=VSS}
N 230 -100 230 -90 {
lab=S1}
C {devices/vsource.sym} 10 -40 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 90 -40 0 0 {name=V2 value=0}
C {devices/vsource.sym} 10 -190 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} 90 -90 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 10 0 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 10 -90 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 10 -230 0 0 {name=p12 sig_type=std_logic lab=S0
}
C {devices/lab_wire.sym} 10 -150 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 90 10 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 390 -430 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 870 -320 0 1 {name=NGSPICE1 only_toplevel=true
value="
.control
save all
tran 50p 800n 
plot v(S0) v(S1)+4  v(I0)+8 v(I1)+12  v(OUT)+16


*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -280 -70 0 0 {name=V6 value="pulse(0 3.3 0 100p 100p 200n 400n)"3.3}
C {devices/lab_wire.sym} -280 -30 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -280 -120 0 0 {name=p25 sig_type=std_logic lab=I0}
C {devices/vsource.sym} -210 -290 0 0 {name=V7 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -210 -250 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -210 -340 0 0 {name=p27 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 540 90 0 0 {name=p2 sig_type=std_logic lab=I0}
C {devices/lab_wire.sym} 540 110 0 0 {name=p5 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 660 20 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 630 240 2 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 630 20 0 0 {name=p8 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} 720 130 0 1 {name=p9 sig_type=std_logic lab=OUT}
C {4x1_mux.sym} 280 240 0 0 {name=x1}
C {devices/lab_wire.sym} 540 130 0 0 {name=p10 sig_type=std_logic lab=I0}
C {devices/lab_wire.sym} 540 150 0 0 {name=p11 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 610 20 0 0 {name=p14 sig_type=std_logic lab=S1}
C {devices/vsource.sym} 230 -60 0 0 {name=V5 value="pulse(3.3 0 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 230 -100 0 0 {name=p21 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} 230 -20 0 0 {name=p22 sig_type=std_logic lab=VSS}
