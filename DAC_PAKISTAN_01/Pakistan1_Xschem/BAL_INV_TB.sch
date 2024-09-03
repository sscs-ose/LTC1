v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -70 50 -40 {
lab=GND}
N 50 -160 50 -130 {
lab=VSS}
N 110 -160 110 -130 {
lab=VDD}
N 110 -70 110 -40 {
lab=VSS}
N 180 -160 180 -130 {
lab=IN}
N 180 -70 180 -40 {
lab=VSS}
N 180 -250 230 -250 {
lab=IN}
N 290 -320 290 -310 {
lab=VDD}
N 290 -320 320 -320 {
lab=VDD}
N 290 -190 290 -180 {
lab=VSS}
N 260 -180 290 -180 {
lab=VSS}
N 420 -220 450 -220 {
lab=OUT}
N 450 -220 470 -220 {
lab=OUT}
N 470 -160 470 -130 {
lab=VSS}
N 490 -280 520 -280 {
lab=OUT_B}
N 520 -280 540 -280 {
lab=OUT_B}
N 540 -220 540 -190 {
lab=VSS}
N 410 -280 490 -280 {
lab=OUT_B}
N 410 -220 420 -220 {
lab=OUT}
C {Balanced_Inverter.sym} 370 -250 0 0 {name=x1}
C {devices/vsource.sym} 50 -100 0 0 {name=V1 value=0}
C {devices/vsource.sym} 110 -100 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 50 -40 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 50 -150 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 -150 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 180 -100 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 180 -150 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 110 -50 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -50 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 20 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 870 -400 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all
dc v3 0 3.3 0.1
plot v(OUT_B) v(OUT)

tran 10p 1u 
plot v(OUT_B) 
plot v(OUT)
plot v(IN)
*write test_nfet_03v3.raw
.endc
"}
C {devices/capa.sym} 470 -190 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 470 -130 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 430 -220 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/capa.sym} 540 -250 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 540 -190 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 -280 0 1 {name=p5 sig_type=std_logic lab=OUT_B}
C {devices/lab_pin.sym} 210 -250 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 310 -320 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 -180 0 0 {name=p12 sig_type=std_logic lab=VSS}
