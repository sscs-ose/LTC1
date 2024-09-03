v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -240 -100 -210 {
lab=GND}
N -100 -330 -100 -300 {
lab=VSS}
N -40 -330 -40 -300 {
lab=VDD}
N -40 -240 -40 -210 {
lab=VSS}
N 160 -210 160 -180 {
lab=VDD}
N 160 -40 160 -10 {
lab=VSS}
N 210 -110 280 -110 {
lab=OUT}
N 70 -130 100 -130 {
lab=A}
N 70 -110 100 -110 {
lab=B}
N 70 -90 100 -90 {
lab=SEL}
N 10 -30 10 0 {
lab=VSS}
N -50 -50 -50 -20 {
lab=VSS}
N -120 -70 -120 -40 {
lab=VSS}
N -120 -130 70 -130 {
lab=A}
N -50 -110 70 -110 {
lab=B}
N 10 -90 70 -90 {
lab=SEL}
N 280 -110 310 -110 {
lab=OUT}
N 310 -110 330 -110 {
lab=OUT}
N 330 -50 330 -20 {
lab=VSS}
C {devices/vsource.sym} -100 -270 0 0 {name=V1 value=0}
C {devices/vsource.sym} -40 -270 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -100 -210 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -100 -320 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 160 -210 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -40 -220 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -110 -390 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 680 -370 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_Mux2x1.spice"
.control
save all
*dc v3 0 3.3 0.1

tran 10p 1u 
plot v(A) v(B)+3.5 v(SEL)+7 v(OUT)+10.5
*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 160 -10 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -40 -330 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 10 -60 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 10 -10 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -50 -30 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -120 -50 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 330 -80 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 330 -20 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 290 -110 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/vsource.sym} -120 -100 0 0 {name=V4 value=0}
C {devices/vsource.sym} -50 -80 0 0 {name=V5 value=3.3}
C {devices/lab_pin.sym} 40 -130 0 0 {name=p11 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 50 -110 0 0 {name=p12 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 70 -90 0 0 {name=p13 sig_type=std_logic lab=SEL}
C {pex_Mux2x1.sym} 160 -110 0 0 {name=x1}
