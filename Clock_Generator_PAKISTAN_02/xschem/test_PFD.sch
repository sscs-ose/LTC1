v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -320 550 -320 {
lab=PU}
N 470 -270 510 -270 {
lab=PD}
N 300 -320 330 -320 {
lab=VREF}
N 300 -270 330 -270 {
lab=VDIV}
N 400 -390 400 -360 {
lab=VDD}
N 400 -230 400 -210 {
lab=VSS}
N 90 -70 90 -60 {
lab=VSS}
N 90 -150 90 -130 {
lab=VDD}
N 170 -150 170 -130 {
lab=VSS}
N 170 -70 170 -50 {
lab=GND}
N 240 -70 240 -60 {
lab=VSS}
N 240 -150 240 -130 {
lab=VDIV}
N 490 -60 490 -50 {
lab=VSS}
N 490 -140 490 -120 {
lab=VREF}
N 510 -270 530 -270 {
lab=PD}
N 550 -320 630 -320 {
lab=PU}
N 530 -210 530 -190 {
lab=VSS}
N 630 -260 630 -240 {
lab=VSS}
C {PFD.sym} 110 -110 0 0 {name=x1}
C {devices/lab_wire.sym} 400 -390 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 300 -320 0 0 {name=p2 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 300 -270 0 0 {name=p3 sig_type=std_logic lab=VDIV
}
C {devices/lab_wire.sym} 400 -210 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -320 2 0 {name=p5 sig_type=std_logic lab=PU}
C {devices/lab_wire.sym} 490 -270 2 0 {name=p6 sig_type=std_logic lab=PD}
C {devices/vsource.sym} 90 -100 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 170 -100 0 0 {name=V2 value=0}
C {devices/vsource.sym} 240 -100 0 0 {name=V3 value="pulse(3.3 0 20n 100p 100p 50n 100n)"}
C {devices/lab_wire.sym} 170 -150 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 90 -60 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 90 -150 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 240 -150 0 0 {name=p10 sig_type=std_logic lab=VDIV}
C {devices/lab_wire.sym} 240 -60 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 170 -50 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 650 -490 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1010 -370 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 500n 
plot v(VREF)
plot V(VDIV) 
plot v(PU)
plot v(PD)
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 490 -90 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 50n 100n)"}
C {devices/lab_wire.sym} 490 -140 0 0 {name=p12 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} 490 -50 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 530 -240 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 630 -290 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 530 -190 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 630 -240 0 0 {name=p15 sig_type=std_logic lab=VSS}
