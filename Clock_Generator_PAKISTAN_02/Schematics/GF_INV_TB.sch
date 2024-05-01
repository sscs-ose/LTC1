v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 490 -280 490 -250 {
lab=VDD}
N 490 -150 490 -120 {
lab=VSS}
N 390 -200 420 -200 {
lab=IN}
N 600 -200 630 -200 {
lab=OUT}
N 630 -200 650 -200 {
lab=OUT}
N 650 -140 650 -110 {
lab=VSS}
N 50 -150 50 -120 {
lab=GND}
N 50 -240 50 -210 {
lab=VSS}
N 110 -240 110 -210 {
lab=VDD}
N 110 -150 110 -120 {
lab=VSS}
N 180 -240 180 -210 {
lab=IN}
N 180 -150 180 -120 {
lab=VSS}
C {GF_INV.sym} 490 -200 0 0 {name=x1}
C {devices/capa.sym} 650 -170 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 50 -180 0 0 {name=V1 value=0}
C {devices/vsource.sym} 110 -180 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 50 -120 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 50 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 490 -120 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 650 -110 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 -230 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 490 -270 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 180 -180 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 180 -230 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 400 -200 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 110 -130 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 610 -200 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 40 -460 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 830 -440 0 1 {name=NGSPICE only_toplevel=true
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
