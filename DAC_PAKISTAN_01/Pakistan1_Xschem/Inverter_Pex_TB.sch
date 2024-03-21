v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 480 -190 480 -160 {
lab=VDD}
N 480 -60 480 -30 {
lab=VSS}
N 380 -110 410 -110 {
lab=IN}
N 590 -110 620 -110 {
lab=OUT}
N 620 -110 640 -110 {
lab=OUT}
N 640 -50 640 -20 {
lab=VSS}
N 40 -60 40 -30 {
lab=GND}
N 40 -150 40 -120 {
lab=VSS}
N 100 -150 100 -120 {
lab=VDD}
N 100 -60 100 -30 {
lab=VSS}
N 170 -150 170 -120 {
lab=IN}
N 170 -60 170 -30 {
lab=VSS}
C {devices/capa.sym} 640 -80 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 40 -90 0 0 {name=V1 value=0}
C {devices/vsource.sym} 100 -90 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 40 -30 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 40 -140 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -30 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 640 -20 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 100 -140 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 480 -180 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 170 -90 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 170 -140 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 390 -110 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 100 -40 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -40 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 600 -110 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 30 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 820 -350 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_Inverter.spice"
.control
save all
dc v3 0 3.3 0.1
plot v(IN) v(OUT)

tran 10p 1u 
plot v(IN) v(OUT)
*write test_nfet_03v3.raw
.endc
"}
C {inv_pex.sym} 480 -110 0 0 {name=x1}
