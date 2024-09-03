v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -450 -60 -450 -30 {
lab=GND}
N -450 -150 -450 -120 {
lab=VSS}
N -390 -150 -390 -120 {
lab=VDD}
N -390 -60 -390 -30 {
lab=VSS}
N -320 -150 -320 -120 {
lab=LD}
N -320 -60 -320 -30 {
lab=VSS}
N -230 -250 -230 -220 {
lab=CLK}
N -230 -160 -230 -130 {
lab=VSS}
N -100 -50 -100 -20 {
lab=D2}
N -100 40 -100 70 {
lab=VSS}
N 130 -190 130 -150 {
lab=VDD}
N 140 70 140 100 {
lab=VSS}
N 40 -70 70 -70 {
lab=LD}
N 40 -50 70 -50 {
lab=D2}
N 40 -30 70 -30 {
lab=CLK}
N 210 -80 250 -80 {
lab=Q}
N 40 -10 70 -10 {
lab=D1}
N -210 -50 -210 -20 {
lab=D1}
N -210 40 -210 70 {
lab=VSS}
C {mod_DFF.sym} 220 -40 0 0 {name=x1}
C {devices/vsource.sym} -450 -90 0 0 {name=V1 value=0}
C {devices/vsource.sym} -390 -90 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -450 -30 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -450 -140 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -390 -140 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -320 -90 0 0 {name=V3 value=0}
C {devices/lab_wire.sym} -320 -140 0 0 {name=p6 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} -390 -40 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -320 -40 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -230 -190 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -230 -240 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -230 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -480 70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 600 -260 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all

tran 10p 1u 
plot v(D2) 
plot v(LD)
plot v(Q)
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -100 10 0 0 {name=V5 value=0}
C {devices/lab_wire.sym} -100 -40 0 0 {name=p5 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} -100 60 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 60 -30 0 0 {name=p10 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 50 -70 0 0 {name=p11 sig_type=std_logic lab=LD}
C {devices/lab_wire.sym} 50 -50 0 0 {name=p12 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 240 -80 0 0 {name=p13 sig_type=std_logic lab=Q}
C {devices/vsource.sym} -210 10 0 0 {name=V6 value=3.3}
C {devices/lab_wire.sym} -210 -40 0 0 {name=p14 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} -210 60 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 60 -10 0 0 {name=p16 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 130 -170 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 90 0 0 {name=p18 sig_type=std_logic lab=VSS}
