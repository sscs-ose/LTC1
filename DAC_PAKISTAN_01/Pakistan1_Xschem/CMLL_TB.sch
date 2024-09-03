v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -340 80 -310 {
lab=GND}
N 80 -430 80 -400 {
lab=VSS}
N 140 -430 140 -400 {
lab=VDD}
N 140 -340 140 -310 {
lab=VSS}
N 30 -260 180 -260 {
lab=d}
N 30 -200 30 -10 {
lab=VSS}
N 30 -10 130 -10 {
lab=VSS}
N 130 -20 130 -10 {
lab=VSS}
N 90 -70 90 -10 {
lab=VSS}
N 60 -130 60 -10 {
lab=VSS}
N 60 -240 60 -190 {
lab=db}
N 60 -240 180 -240 {
lab=db}
N 90 -220 180 -220 {
lab=#net1}
N 90 -220 90 -130 {
lab=#net1}
N 130 -200 130 -80 {
lab=#net2}
N 130 -200 180 -200 {
lab=#net2}
N 250 -300 250 -290 {
lab=VDD}
N 250 -300 280 -300 {
lab=VDD}
N 250 -170 250 -160 {
lab=VSS}
N 220 -160 250 -160 {
lab=VSS}
N 320 -240 350 -240 {
lab=OUT}
N 320 -220 350 -220 {
lab=OUT_B}
N 380 -220 410 -220 {
lab=OUT_B}
N 410 -220 430 -220 {
lab=OUT_B}
N 430 -160 430 -130 {
lab=VSS}
N 480 -240 510 -240 {
lab=OUT}
N 510 -240 530 -240 {
lab=OUT}
N 530 -180 530 -150 {
lab=VSS}
N 350 -240 480 -240 {
lab=OUT}
N 350 -220 380 -220 {
lab=OUT_B}
C {CMLL.sym} 270 -230 0 0 {name=x1}
C {devices/vsource.sym} 30 -230 0 0 {name=V1 value="pulse(0 3.3 0 10p 10p 100n 200n)"}
C {devices/vsource.sym} 60 -160 0 0 {name=V2 value="pulse(3.3 0 0 10p 10p 100n 200n)"}
C {devices/vsource.sym} 90 -100 0 0 {name=V3 value=3.3}
C {devices/vsource.sym} 130 -50 0 0 {name=V4 value=0}
C {devices/vsource.sym} 80 -370 0 0 {name=V5 value=0}
C {devices/vsource.sym} 140 -370 0 0 {name=V6 value=3.3}
C {devices/gnd.sym} 80 -310 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -420 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -420 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 -320 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 280 -300 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 240 -160 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 60 -10 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 430 -190 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 430 -130 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 530 -210 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 530 -150 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 490 -240 0 1 {name=p9 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 360 -220 0 1 {name=p10 sig_type=std_logic lab=OUT_B}
C {devices/code_shown.sym} 190 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 980 -400 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all
op

ptiny all

tran 1n 1u 
plot v(OUT_B) v(OUT)
plot v(d) v(db)
*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 140 -260 0 0 {name=p11 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 140 -240 0 0 {name=p12 sig_type=std_logic lab=db}
