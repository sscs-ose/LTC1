v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -30 30 -30 {
lab=CLK}
N -10 -10 30 -10 {
lab=IN}
N 120 -80 120 -40 {
lab=VDD}
N 140 10 140 40 {
lab=VSS}
N 210 -20 250 -20 {
lab=OUT}
N -360 -90 -360 -60 {
lab=GND}
N -360 -180 -360 -150 {
lab=VSS}
N -300 -180 -300 -150 {
lab=VDD}
N -300 -90 -300 -60 {
lab=VSS}
N -130 -280 -130 -250 {
lab=CLK}
N -130 -190 -130 -160 {
lab=VSS}
N -350 30 -350 60 {
lab=IN}
N -350 120 -350 150 {
lab=VSS}
C {tg.sym} 180 -10 0 0 {name=x1}
C {devices/vsource.sym} -360 -120 0 0 {name=V1 value=0}
C {devices/vsource.sym} -300 -120 0 0 {name=V2 value=3.3}
C {devices/lab_wire.sym} -360 -170 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -300 -170 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -130 -220 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -130 -270 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -300 -70 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -130 -170 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 10 -30 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 120 -70 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 40 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 10 -10 0 0 {name=p11 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 250 -20 0 0 {name=p12 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 140 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 580 -110 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all

tran 10p 1u 
plot v(CLK) 
plot v(IN)
plot v(OUT)
*write test_nfet_03v3.raw
.endc
"}
C {devices/gnd.sym} -360 -60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -350 90 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -350 40 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} -350 140 0 0 {name=p10 sig_type=std_logic lab=VSS}
