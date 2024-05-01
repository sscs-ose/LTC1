v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -50 -80 -50 {
lab=A}
N -110 -30 -80 -30 {
lab=B}
N -110 -10 -80 -10 {
lab=C}
N -30 -120 -30 -90 {
lab=VDD}
N -30 30 -30 60 {
lab=VSS}
N 80 -30 110 -30 {
lab=#net1}
N -450 -170 -450 -140 {
lab=GND}
N -450 -260 -450 -230 {
lab=VSS}
N -390 -260 -390 -230 {
lab=VDD}
N -390 -170 -390 -140 {
lab=VSS}
N -320 -260 -320 -230 {
lab=A}
N -320 -170 -320 -140 {
lab=VSS}
N -230 -360 -230 -330 {
lab=B}
N -230 -270 -230 -240 {
lab=VSS}
N -480 -30 -480 0 {
lab=C}
N -480 60 -480 90 {
lab=VSS}
C {3_inp_NOR.sym} 290 70 0 0 {name=x1}
C {devices/vsource.sym} -450 -200 0 0 {name=V1 value=0}
C {devices/vsource.sym} -390 -200 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -450 -140 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -450 -250 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -250 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -320 -200 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -320 -250 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} -390 -150 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -320 -150 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -230 -300 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -230 -350 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} -230 -250 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -480 30 0 0 {name=V5 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -480 -20 0 0 {name=p5 sig_type=std_logic lab=C}
C {devices/lab_wire.sym} -480 80 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -100 -50 0 0 {name=p10 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} -30 -110 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -30 50 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -100 -30 0 0 {name=p13 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} -100 -10 0 0 {name=p14 sig_type=std_logic lab=C}
C {devices/lab_wire.sym} 110 -30 0 0 {name=p15 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 0 -260 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 490 -130 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all

tran 10p 1u 
plot v(A) 
plot v(B)
plot v(VOUT)
*write test_nfet_03v3.raw
.endc
"}
