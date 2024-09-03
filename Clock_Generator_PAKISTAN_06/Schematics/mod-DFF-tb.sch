v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -430 40 -430 70 {
lab=VDD}
N -430 130 -430 160 {
lab=VSS}
N -250 -60 -250 -30 {
lab=CLK}
N -250 30 -250 60 {
lab=VSS}
N -530 130 -530 160 {
lab=GND}
N -530 40 -530 70 {
lab=VSS}
N -40 -60 10 -60 {
lab=CLK}
N 70 -220 70 -180 {
lab=VDD}
N 80 40 80 80 {
lab=VSS}
N -310 80 -310 110 {
lab=D1}
N -310 170 -310 200 {
lab=VSS}
N -40 -40 10 -40 {
lab=D1}
N -40 -80 10 -80 {
lab=D2}
N -40 -100 10 -100 {
lab=LD}
N -150 80 -150 110 {
lab=D2}
N -150 170 -150 200 {
lab=VSS}
N -640 -120 -640 -90 {
lab=LD}
N -640 -30 -640 0 {
lab=VSS}
N 150 -110 180 -110 {
lab=Q}
C {mod_DFF.sym} 160 -70 0 0 {name=x1}
C {devices/code_shown.sym} -560 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 480 -270 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all
*plot v(IN) v(OUT)

tran 10p 1u 
plot v(LD) 
plot v(Q)
plot v(D2)
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -430 100 0 0 {name=V4 value=3.3}
C {devices/lab_wire.sym} -430 50 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -250 0 0 0 {name=V5 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -250 -50 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -430 150 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -250 50 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -530 100 0 0 {name=V1 value=0}
C {devices/gnd.sym} -530 160 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -530 50 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 -60 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 70 -200 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 80 70 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -310 140 0 0 {name=V2 value=0}
C {devices/lab_wire.sym} -310 90 0 0 {name=p7 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} -310 190 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 -40 0 0 {name=p11 sig_type=std_logic lab=D1}
C {devices/vsource.sym} -150 140 0 0 {name=V3 value=3.3}
C {devices/lab_wire.sym} -150 90 0 0 {name=p12 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} -150 190 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 -80 0 0 {name=p14 sig_type=std_logic lab=D2}
C {devices/vsource.sym} -640 -60 0 0 {name=V6 value="pulse(3.3 0 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -640 -110 0 0 {name=p15 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} -640 -10 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -30 -100 0 0 {name=p17 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} 180 -110 0 0 {name=p18 sig_type=std_logic lab=Q}
