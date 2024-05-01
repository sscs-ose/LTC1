v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -110 140 -80 {
lab=VDD}
N 140 30 140 60 {
lab=VSS}
N 60 -30 90 -30 {
lab=IN}
N 250 -30 280 -30 {
lab=OUT}
N 280 -30 300 -30 {
lab=OUT}
N 300 30 300 60 {
lab=VSS}
N -300 20 -300 50 {
lab=GND}
N -300 -70 -300 -40 {
lab=VSS}
N -240 -70 -240 -40 {
lab=VDD}
N -240 20 -240 50 {
lab=VSS}
N -170 -70 -170 -40 {
lab=IN}
N -170 20 -170 50 {
lab=VSS}
C {devices/capa.sym} 300 0 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -300 -10 0 0 {name=V1 value=0}
C {devices/vsource.sym} -240 -10 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -300 50 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -300 -60 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 60 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 300 60 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -240 -60 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 -100 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -170 -10 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -170 -60 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 70 -30 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} -240 40 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -170 40 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -30 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} -310 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 480 -270 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all
dc v3 0 3.3 0.1
plot v(IN) v(OUT)

tran 10p 1u 
plot v(IN) v(OUT)
*write test_nfet_03v3.raw
.endc
"}
C {inv_my.sym} -350 100 0 0 {name=x2}
