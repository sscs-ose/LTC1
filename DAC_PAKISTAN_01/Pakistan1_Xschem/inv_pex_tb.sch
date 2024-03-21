v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 570 -340 570 -310 {
lab=VDD}
N 570 -210 570 -180 {
lab=VSS}
N 470 -260 500 -260 {
lab=IN}
N 680 -260 710 -260 {
lab=OUT}
N 710 -260 730 -260 {
lab=OUT}
N 730 -200 730 -170 {
lab=VSS}
N 130 -210 130 -180 {
lab=GND}
N 130 -300 130 -270 {
lab=VSS}
N 190 -300 190 -270 {
lab=VDD}
N 190 -210 190 -180 {
lab=VSS}
N 260 -300 260 -270 {
lab=IN}
N 260 -210 260 -180 {
lab=VSS}
C {devices/capa.sym} 730 -230 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 130 -240 0 0 {name=V1 value=0}
C {devices/vsource.sym} 190 -240 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 130 -180 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 130 -290 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 730 -170 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -290 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 570 -330 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 260 -240 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 260 -290 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 480 -260 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 190 -190 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 -190 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -260 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 120 -520 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 910 -500 0 1 {name=NGSPICE only_toplevel=true
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
C {inv_pex.sym} 570 -260 0 0 {name=x1}
