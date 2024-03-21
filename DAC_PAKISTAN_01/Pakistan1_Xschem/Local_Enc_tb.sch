v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -330 -230 -330 -200 {
lab=GND}
N -330 -320 -330 -290 {
lab=VSS}
N -270 -320 -270 -290 {
lab=VDD}
N -270 -230 -270 -200 {
lab=VSS}
N -50 -180 140 -180 {
lab=Ri-1}
N -10 -160 140 -160 {
lab=Ri}
N 30 -140 140 -140 {
lab=Ci}
N -50 -120 -50 -60 {
lab=VSS}
N -10 -100 -10 -60 {
lab=VSS}
N 30 -80 30 -60 {
lab=VSS}
N 220 -100 220 -60 {
lab=VSS}
N -50 -60 220 -60 {
lab=VSS}
N 220 -250 220 -220 {
lab=VDD}
N 320 -170 380 -170 {
lab=Q}
N 320 -150 380 -150 {
lab=QB}
N 380 -90 380 -60 {
lab=VSS}
N 440 -110 440 -60 {
lab=VSS}
N 210 -60 440 -60 {
lab=VSS}
N 380 -170 440 -170 {
lab=Q}
C {devices/vsource.sym} -330 -260 0 0 {name=V1 value=0}
C {devices/vsource.sym} -270 -260 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -330 -200 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -330 -310 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -270 -310 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -270 -210 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 40 -350 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 830 -330 0 1 {name=NGSPICE only_toplevel=true
value="
*.include "pex_Local_Enc_v2.spice"
.control
save all
op

tran 10p 20n
plot v(Q) v(QB)
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 30 -110 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 10n 20n)"}
C {devices/vsource.sym} -10 -130 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 5n 10n)"}
C {devices/vsource.sym} -50 -150 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 2.5n 5n)"}
C {devices/lab_wire.sym} 140 -60 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 220 -250 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 370 -170 0 0 {name=p5 sig_type=std_logic lab=Q}
C {devices/lab_wire.sym} 360 -150 0 0 {name=p6 sig_type=std_logic lab=QB}
C {devices/capa.sym} 440 -140 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 380 -120 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 50 -180 0 0 {name=p7 sig_type=std_logic lab=Ri-1}
C {devices/lab_wire.sym} 80 -160 0 0 {name=p9 sig_type=std_logic lab=Ri}
C {devices/lab_wire.sym} 110 -140 0 0 {name=p10 sig_type=std_logic lab=Ci}
C {Local_Enc.sym} 170 -160 0 0 {name=x1}
