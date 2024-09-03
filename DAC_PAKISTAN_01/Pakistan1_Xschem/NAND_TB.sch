v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -100 110 -70 {
lab=GND}
N 110 -190 110 -160 {
lab=VSS}
N 170 -190 170 -160 {
lab=VDD}
N 170 -100 170 -70 {
lab=VSS}
N 240 -190 240 -160 {
lab=A}
N 240 -100 240 -70 {
lab=VSS}
N 600 -480 600 -450 {
lab=VDD}
N 600 -480 650 -480 {
lab=VDD}
N 600 -330 600 -300 {
lab=VSS}
N 560 -300 600 -300 {
lab=VSS}
N 450 -400 550 -400 {
lab=A}
N 450 -380 550 -380 {
lab=B}
N 720 -390 820 -390 {
lab=OUT}
N 520 -180 520 -150 {
lab=B}
N 520 -90 520 -60 {
lab=VSS}
C {NAND.sym} 700 -380 0 0 {name=x1}
C {devices/code_shown.sym} 430 -610 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1210 -640 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all
*dc v3 0 3.3 0.1
*plot v(OUT_B) v(OUT)

tran 10p 1u 
plot v(OUT)+3.5 v(A)+7 v(B) 

*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 110 -130 0 0 {name=V1 value=0}
C {devices/vsource.sym} 170 -130 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 110 -70 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 110 -180 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -180 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 240 -130 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 240 -180 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 170 -80 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -80 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -480 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 580 -300 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 450 -400 0 0 {name=p5 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 450 -380 0 0 {name=p7 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 810 -390 2 0 {name=p10 sig_type=std_logic lab=OUT}
C {devices/vsource.sym} 520 -120 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 520 -170 0 0 {name=p11 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 520 -70 0 0 {name=p12 sig_type=std_logic lab=VSS}
