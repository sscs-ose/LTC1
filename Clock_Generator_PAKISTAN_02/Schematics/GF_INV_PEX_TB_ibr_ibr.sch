v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 7 440 -170 440 -150 {}
B 5 437.5 -152.5 442.5 -147.5 {name=VSS dir=inout}
B 5 387.5 -212.5 392.5 -207.5 {name=IN dir=in}
B 5 547.5 -212.5 552.5 -207.5 {name=OUT dir=out}
B 5 437.5 -262.5 442.5 -257.5 {name=VDD dir=inout}
T {@symname} 465 -186 0 0 0.3 0.3 {}
N 440 -290 440 -260 {
lab=VDD}
N 440 -160 440 -130 {
lab=VSS}
N 340 -210 370 -210 {
lab=IN}
N 550 -210 580 -210 {
lab=OUT}
N 580 -210 600 -210 {
lab=OUT}
N 600 -150 600 -120 {
lab=VSS}
N 0 -160 0 -130 {
lab=GND}
N 0 -250 0 -220 {
lab=VSS}
N 60 -250 60 -220 {
lab=VDD}
N 60 -160 60 -130 {
lab=VSS}
N 130 -250 130 -220 {
lab=IN}
N 130 -160 130 -130 {
lab=VSS}
N 370 -210 390 -210 {
lab=IN}
C {devices/capa.sym} 600 -180 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 0 -190 0 0 {name=V1 value=0}
C {devices/vsource.sym} 60 -190 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 0 -130 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 0 -240 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 -130 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 600 -120 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 60 -240 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 440 -280 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 130 -190 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 130 -240 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 350 -210 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 60 -140 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 130 -140 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 560 -210 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} -10 -470 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 780 -450 0 1 {name=NGSPICE only_toplevel=true
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
C {inv_my_PEX.sym} -50 -80 0 0 {name=x1}
