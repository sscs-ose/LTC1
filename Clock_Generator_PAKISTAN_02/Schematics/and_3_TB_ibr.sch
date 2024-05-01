v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1550 -660 -1550 -650 {
lab=VSS}
N -1550 -740 -1550 -720 {
lab=VDD}
N -1470 -740 -1470 -720 {
lab=VSS}
N -1470 -660 -1470 -640 {
lab=GND}
N -1820 -850 -1820 -840 {
lab=VSS}
N -1820 -930 -1820 -910 {
lab=IN1}
N -1320 -840 -1300 -840 {
lab=IN1}
N -1320 -800 -1300 -800 {
lab=IN2}
N -1000 -840 -980 -840 {
lab=VSS}
N -1000 -820 -980 -820 {
lab=VDD}
N -1000 -800 -990 -800 {
lab=OUT}
N -1890 -810 -1890 -800 {
lab=VSS}
N -1890 -880 -1890 -870 {
lab=IN2}
N -1950 -720 -1950 -710 {
lab=VSS}
N -1950 -800 -1950 -780 {
lab=IN3}
N -1320 -820 -1300 -820 {
lab=IN3}
C {devices/vsource.sym} -1550 -690 0 0 {name=V6 value=3.3}
C {devices/vsource.sym} -1470 -690 0 0 {name=V7 value=0}
C {devices/vsource.sym} -1820 -880 0 0 {name=V8 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} -1890 -840 0 0 {name=V9 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -1470 -740 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1550 -650 0 0 {name=p17 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -1550 -740 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1820 -930 0 0 {name=p19 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -1820 -840 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1320 -840 0 0 {name=p21 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} -1320 -800 0 0 {name=p22 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -980 -840 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -980 -820 2 0 {name=p24 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -990 -800 2 0 {name=p25 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -1890 -880 0 0 {name=p26 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -1890 -800 3 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -1470 -640 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -1390 -980 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -415 -1030 0 1 {name=NGSPICE2 only_toplevel=true
value="

.control
save all
tran 50p 1u 
plot v(IN1)
plot V(IN2) 
plot V(IN3) 
plot v(OUT)


*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -1950 -750 0 0 {name=V10 value="pulse(0 3.3 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} -1950 -710 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1950 -800 0 0 {name=p29 sig_type=std_logic lab=IN3}
C {devices/lab_wire.sym} -1320 -820 0 0 {name=p30 sig_type=std_logic lab=IN3}
C {and_3.sym} -1150 -820 0 0 {name=x1}
