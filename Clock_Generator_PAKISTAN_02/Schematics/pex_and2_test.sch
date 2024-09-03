v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -60 80 -50 {
lab=VSS}
N 80 -140 80 -120 {
lab=VDD}
N 160 -140 160 -120 {
lab=VSS}
N 160 -60 160 -40 {
lab=GND}
N 230 -60 230 -50 {
lab=VSS}
N 230 -140 230 -120 {
lab=IN1}
N 300 -180 320 -180 {
lab=IN1}
N 300 -160 320 -160 {
lab=IN2}
N 620 -180 640 -180 {
lab=VSS}
N 620 -160 640 -160 {
lab=VDD}
N 620 -140 630 -140 {
lab=OUT}
N 80 -210 80 -200 {
lab=VSS}
N 80 -280 80 -270 {
lab=IN2}
C {devices/vsource.sym} 80 -90 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 160 -90 0 0 {name=V2 value=0}
C {devices/vsource.sym} 230 -90 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} 80 -240 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 160 -140 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 80 -50 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 80 -140 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 230 -140 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 230 -50 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 300 -180 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 300 -160 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 640 -180 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 640 -160 2 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 630 -140 2 0 {name=p11 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 80 -280 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 80 -200 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 160 -40 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 240 -380 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1215 -430 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 1u 
plot v(IN1)
plot V(IN2) 
plot v(OUT)


*write test_nfet_03v3.raw
.endc
"}
