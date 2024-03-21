v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -310 450 -280 {
lab=VDD}
N 450 -110 450 -80 {
lab=VSS}
N 310 -200 340 -200 {
lab=IN}
N 600 -200 630 -200 {
lab=OUT}
N 630 -200 650 -200 {
lab=OUT}
N 650 -140 650 -110 {
lab=VSS}
N -210 -300 -210 -270 {
lab=GND}
N -210 -390 -210 -360 {
lab=VSS}
N -150 -390 -150 -360 {
lab=VDD}
N -150 -300 -150 -270 {
lab=VSS}
N -80 -390 -80 -360 {
lab=IN}
N -80 -300 -80 -270 {
lab=VSS}
N 460 -130 460 -110 {
lab=VSS}
N 450 -110 460 -110 {
lab=VSS}
N 550 -210 570 -210 {
lab=OUT}
N 570 -210 570 -200 {
lab=OUT}
N 570 -200 610 -200 {
lab=OUT}
N 340 -200 350 -200 {
lab=IN}
N 350 -210 350 -200 {
lab=IN}
N 350 -210 370 -210 {
lab=IN}
N 340 -680 340 -650 {
lab=VDD}
N 340 -490 340 -460 {
lab=VSS}
N 200 -570 230 -570 {
lab=IN}
N 500 -570 530 -570 {
lab=OUT1}
N 530 -570 550 -570 {
lab=OUT1}
N 550 -510 550 -480 {
lab=VSS}
N 350 -510 350 -490 {
lab=VSS}
N 340 -490 350 -490 {
lab=VSS}
N 450 -580 470 -580 {
lab=OUT1}
N 470 -580 470 -570 {
lab=OUT1}
N 470 -570 510 -570 {
lab=OUT1}
N 230 -570 240 -570 {
lab=IN}
N 240 -580 240 -570 {
lab=IN}
N 240 -580 260 -580 {
lab=IN}
C {devices/capa.sym} 650 -170 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -210 -330 0 0 {name=V1 value=0}
C {devices/vsource.sym} -150 -330 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -210 -270 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -210 -380 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 450 -80 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 650 -110 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -150 -380 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 450 -300 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -80 -330 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -80 -380 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 320 -200 0 0 {name=p7 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} -150 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 -280 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 610 -200 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} -260 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1140 -290 0 1 {name=NGSPICE only_toplevel=true
value="

.include "Tappered-Buffer_1_pex.spice"
.control
save all


tran 1n 1u 
plot v(IN) v(OUT)
*write test_nfet_03v3.raw
.endc
"}
C {devices/capa.sym} 550 -540 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 340 -460 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 550 -480 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 340 -670 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 210 -570 0 0 {name=p14 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 510 -570 0 1 {name=p15 sig_type=std_logic lab=OUT1}
C {Tappered-Buffer_1_pex.sym} 130 -190 0 0 {name=x1}
C {Tappered-Buffer_1.sym} 20 -560 0 0 {name=x2}
