v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -680 380 -680 390 {
lab=VSS}
N -680 300 -680 320 {
lab=VDD}
N -600 300 -600 320 {
lab=VSS}
N -600 380 -600 400 {
lab=GND}
N -680 230 -680 240 {
lab=VSS}
N -680 160 -680 170 {
lab=S0}
N -970 350 -970 360 {
lab=VSS}
N -970 270 -970 290 {
lab=I0}
N -900 130 -900 140 {
lab=VSS}
N -900 50 -900 70 {
lab=I1}
N -60 410 -60 420 {
lab=S0}
N -150 480 -130 480 {
lab=I0}
N -150 500 -130 500 {
lab=I1}
N -30 410 -30 430 {
lab=VDD}
N -60 620 -60 630 {
lab=VSS}
N 10 520 30 520 {
lab=OUT}
N -150 520 -130 520 {
lab=I2}
N -150 540 -130 540 {
lab=I3}
N -80 410 -80 420 {
lab=S1}
N -460 360 -460 370 {
lab=VSS}
N -460 290 -460 300 {
lab=S1}
N -1150 420 -1150 430 {
lab=VSS}
N -1150 340 -1150 360 {
lab=I2}
N -1040 520 -1040 530 {
lab=VSS}
N -1040 440 -1040 460 {
lab=I3}
C {devices/vsource.sym} -680 350 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -600 350 0 0 {name=V2 value=0}
C {devices/vsource.sym} -680 200 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -600 300 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -680 390 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -680 300 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -680 160 0 0 {name=p12 sig_type=std_logic lab=S0
}
C {devices/lab_wire.sym} -680 240 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -600 400 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -300 -40 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 180 70 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 800n 
plot v(S0) v(S1)+4  v(I0)+8 v(I1)+12 i2+16 i3+20  v(OUT)+24 


*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -970 320 0 0 {name=V6 value="pulse(0 3.3 0 100p 100p 100n 200n)"3.3}
C {devices/lab_wire.sym} -970 360 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -970 270 0 0 {name=p25 sig_type=std_logic lab=I0}
C {devices/vsource.sym} -900 100 0 0 {name=V7 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -900 140 0 0 {name=p26 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -900 50 0 0 {name=p27 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} -150 480 0 0 {name=p2 sig_type=std_logic lab=I0}
C {devices/lab_wire.sym} -150 500 0 0 {name=p5 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} -30 410 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -60 630 2 0 {name=p7 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -60 410 0 0 {name=p8 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} 30 520 0 1 {name=p9 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -150 520 0 0 {name=p10 sig_type=std_logic lab=I2}
C {devices/lab_wire.sym} -150 540 0 0 {name=p11 sig_type=std_logic lab=I3}
C {devices/lab_wire.sym} -80 410 0 0 {name=p14 sig_type=std_logic lab=S1}
C {devices/vsource.sym} -460 330 0 0 {name=V5 value="pulse(3.3 0 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} -460 290 0 0 {name=p21 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} -460 370 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -1150 390 0 0 {name=V13 value="pulse(0 3.3 0 100p 100p 400n 800n)"3.3}
C {devices/lab_wire.sym} -1150 430 0 0 {name=p41 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -1150 340 0 0 {name=p42 sig_type=std_logic lab=I2}
C {devices/vsource.sym} -1040 490 0 0 {name=V14 value="pulse(0 3.3 0 100p 100p 800n 1600n)"3.3}
C {devices/lab_wire.sym} -1040 530 0 0 {name=p43 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -1040 440 0 0 {name=p44 sig_type=std_logic lab=I3}
C {4x1_mux_ibr..sym} -410 630 0 0 {name=x1}
