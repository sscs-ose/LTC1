v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 530 -810 530 -800 {
lab=VSS}
N 530 -890 530 -870 {
lab=VDD}
N 610 -890 610 -870 {
lab=VSS}
N 610 -810 610 -790 {
lab=GND}
N 200 -320 200 -300 {
lab=S0}
N 180 -320 180 -300 {
lab=S1}
N 230 -310 230 -290 {
lab=VDD}
N 110 -160 120 -160 {
lab=I4}
N 530 -960 530 -950 {
lab=VSS}
N 530 -1030 530 -1020 {
lab=S0}
N 110 -140 120 -140 {
lab=I5}
N 110 -120 120 -120 {
lab=I6}
N 110 -100 120 -100 {
lab=I7}
N 110 -240 120 -240 {
lab=I0}
N 110 -220 120 -220 {
lab=I1}
N 110 -200 120 -200 {
lab=I2}
N 110 -180 120 -180 {
lab=I3}
N 190 -40 190 -20 {
lab=VSS}
N 160 -320 160 -300 {
lab=S2}
N 240 -970 240 -960 {
lab=VSS}
N 240 -1040 240 -1030 {
lab=S1}
N 270 -180 280 -180 {
lab=OUT}
N 200 -300 200 -290 {
lab=S0}
N 50 -610 50 -600 {
lab=VSS}
N 50 -690 50 -670 {
lab=I0}
N 150 -610 150 -600 {
lab=VSS}
N 150 -690 150 -670 {
lab=I1}
N 250 -610 250 -600 {
lab=VSS}
N 250 -690 250 -670 {
lab=I2}
N 360 -610 360 -600 {
lab=VSS}
N 360 -690 360 -670 {
lab=I3}
N 160 -480 160 -470 {
lab=VSS}
N 160 -560 160 -540 {
lab=I5}
N 50 -480 50 -470 {
lab=VSS}
N 50 -560 50 -540 {
lab=I4}
N 250 -490 250 -480 {
lab=VSS}
N 250 -570 250 -550 {
lab=I6}
N 360 -490 360 -480 {
lab=VSS}
N 360 -570 360 -550 {
lab=I7}
N 120 -840 120 -830 {
lab=VSS}
N 120 -910 120 -900 {
lab=S2}
C {8x1_mux.sym} -210 -140 0 0 {name=x1}
C {devices/vsource.sym} 530 -840 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 610 -840 0 0 {name=V2 value=0}
C {devices/vsource.sym} 530 -990 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 610 -890 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 530 -800 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 530 -890 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 200 -320 1 0 {name=p7 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} 180 -320 1 0 {name=p8 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} 230 -310 1 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 110 -160 2 1 {name=p11 sig_type=std_logic lab=I4}
C {devices/lab_wire.sym} 530 -1030 0 0 {name=p12 sig_type=std_logic lab=S0
}
C {devices/lab_wire.sym} 530 -950 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 610 -790 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 730 -710 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1210 -600 0 1 {name=NGSPICE1 only_toplevel=true
value="
.control
save all
tran 50p 800n 
plot v(S0) v(S1)+3.5 v(S2)+7 v(I0)+10.5 v(I1)+14 v(I2)+17.5 
plot v(I3) v(I4)+4.5 v(I5)+8 v(I6)+11.5 v(I7)+15 
plot v(OUT)



*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 110 -140 2 1 {name=p2 sig_type=std_logic lab=I5}
C {devices/lab_wire.sym} 110 -120 2 1 {name=p14 sig_type=std_logic lab=I6}
C {devices/lab_wire.sym} 110 -100 2 1 {name=p15 sig_type=std_logic lab=I7}
C {devices/lab_wire.sym} 280 -180 2 0 {name=p16 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 110 -220 2 1 {name=p17 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 110 -200 2 1 {name=p18 sig_type=std_logic lab=I2}
C {devices/lab_wire.sym} 110 -180 2 1 {name=p19 sig_type=std_logic lab=I3}
C {devices/lab_wire.sym} 190 -20 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 160 -320 1 0 {name=p9 sig_type=std_logic lab=S2}
C {devices/vsource.sym} 240 -1000 0 0 {name=V5 value="pulse(3.3 0 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 240 -1040 0 0 {name=p21 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} 240 -960 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 -240 2 1 {name=p23 sig_type=std_logic lab=I0}
C {devices/vsource.sym} 50 -640 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} 50 -600 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 50 -690 0 0 {name=p25 sig_type=std_logic lab=I0}
C {devices/vsource.sym} 150 -640 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} 150 -600 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 150 -690 0 0 {name=p27 sig_type=std_logic lab=I1}
C {devices/vsource.sym} 250 -640 0 0 {name=V8 value=3.3}
C {devices/lab_wire.sym} 250 -600 0 0 {name=p28 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 250 -690 0 0 {name=p29 sig_type=std_logic lab=I2}
C {devices/vsource.sym} 360 -640 0 0 {name=V9 value=0}
C {devices/lab_wire.sym} 360 -600 0 0 {name=p30 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 360 -690 0 0 {name=p31 sig_type=std_logic lab=I3}
C {devices/vsource.sym} 160 -510 0 0 {name=V10 value=0}
C {devices/lab_wire.sym} 160 -470 0 0 {name=p32 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 160 -560 0 0 {name=p33 sig_type=std_logic lab=I5

}
C {devices/vsource.sym} 50 -510 0 0 {name=V11 value=3.3}
C {devices/lab_wire.sym} 50 -470 0 0 {name=p34 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 50 -560 0 0 {name=p35 sig_type=std_logic lab=I4}
C {devices/vsource.sym} 250 -520 0 0 {name=V12 value=3.3}
C {devices/lab_wire.sym} 250 -480 0 0 {name=p36 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 250 -570 0 0 {name=p37 sig_type=std_logic lab=I6}
C {devices/vsource.sym} 360 -520 0 0 {name=V13 value=0}
C {devices/lab_wire.sym} 360 -480 0 0 {name=p38 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 360 -570 0 0 {name=p39 sig_type=std_logic lab=I7}
C {devices/vsource.sym} 120 -870 0 0 {name=V14 value="pulse(3.3 0 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} 120 -910 0 0 {name=p40 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} 120 -830 0 0 {name=p41 sig_type=std_logic lab=VSS}
