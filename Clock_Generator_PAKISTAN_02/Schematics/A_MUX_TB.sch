v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -200 220 -170 {
lab=VDD}
N 220 -70 220 -40 {
lab=VSS}
N 410 -110 440 -110 {
lab=OUT}
N 440 -110 460 -110 {
lab=OUT}
N 460 -50 460 -20 {
lab=VSS}
N 10 -550 10 -520 {
lab=GND}
N 10 -640 10 -610 {
lab=VSS}
N 70 -640 70 -610 {
lab=VDD}
N 70 -550 70 -520 {
lab=VSS}
N 140 -640 140 -610 {
lab=SEL}
N 140 -550 140 -520 {
lab=VSS}
N 360 -120 380 -120 {
lab=OUT}
N 380 -120 380 -110 {
lab=OUT}
N 380 -110 420 -110 {
lab=OUT}
N -50 -150 60 -150 {
lab=IN1}
N 60 -150 60 -140 {
lab=IN1}
N 60 -140 70 -140 {
lab=IN1}
N -50 -120 70 -120 {
lab=IN2}
N -50 -90 70 -90 {
lab=SEL}
N 70 -100 70 -90 {
lab=SEL}
N 420 -630 420 -600 {
lab=IN2}
N 420 -540 420 -510 {
lab=VSS}
N 510 -620 510 -590 {
lab=IN1}
N 510 -530 510 -500 {
lab=VSS}
N 350 0 350 30 {
lab=VDD}
N 350 130 350 160 {
lab=VSS}
N 540 90 570 90 {
lab=OUT1}
N 570 90 590 90 {
lab=OUT1}
N 590 150 590 180 {
lab=VSS}
N 490 80 510 80 {
lab=OUT1}
N 510 80 510 90 {
lab=OUT1}
N 510 90 550 90 {
lab=OUT1}
N 80 50 190 50 {
lab=IN1}
N 190 50 190 60 {
lab=IN1}
N 190 60 200 60 {
lab=IN1}
N 80 80 200 80 {
lab=IN2}
N 80 110 200 110 {
lab=SEL}
N 200 100 200 110 {
lab=SEL}
C {devices/capa.sym} 460 -80 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 10 -580 0 0 {name=V1 value=0}
C {devices/vsource.sym} 70 -580 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 10 -520 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 10 -630 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 220 -40 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 460 -20 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 70 -630 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 220 -190 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 140 -580 0 0 {name=V3 value="pulse (0 3.3 0 10p 10p 0.5u 1u)"}
C {devices/lab_wire.sym} 140 -630 0 0 {name=p6 sig_type=std_logic lab=SEL}
C {devices/lab_wire.sym} -50 -150 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 70 -530 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -530 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 420 -110 0 1 {name=p10 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 40 -460 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 830 -440 0 1 {name=NGSPICE only_toplevel=true
value="

.include "pex_A_MUX.spice"
.control
save all
*dc v4 0 3.3 0.1
plot v(IN2) v(OUT)+4 

tran 10p 1u 
plot v(IN2) v(OUT)+4 v(OUT1)+4
*write test_nfet_03v3.raw
.endc
"}
C {A_MUX.sym} 220 -120 0 0 {name=x1}
C {devices/lab_wire.sym} -50 -120 0 0 {name=p11 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} -50 -90 0 0 {name=p12 sig_type=std_logic lab=SEL}
C {devices/vsource.sym} 420 -570 0 0 {name=V4 value=3.3}
C {devices/lab_wire.sym} 420 -620 0 0 {name=p13 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 420 -520 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 510 -560 0 0 {name=V5 value=1.5}
C {devices/lab_wire.sym} 510 -610 0 0 {name=p15 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 510 -510 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 590 120 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 350 160 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 590 180 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 350 10 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 80 50 0 0 {name=p20 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 550 90 0 1 {name=p21 sig_type=std_logic lab=OUT1}
C {devices/lab_wire.sym} 80 80 0 0 {name=p22 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 80 110 0 0 {name=p23 sig_type=std_logic lab=SEL}
C {A_MUX_pex.sym} 350 80 0 0 {name=x2}
