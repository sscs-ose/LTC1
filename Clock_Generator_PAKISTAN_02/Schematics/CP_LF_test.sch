v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 7 330 70 330 90 {}
L 7 330 -10 330 10 {}
B 5 327.5 87.5 332.5 92.5 {name=VSS dir=inout}
B 5 277.5 17.5 282.5 22.5 {name=PU dir=in}
B 5 387.5 37.5 392.5 42.5 {name=VCNTL dir=out}
B 5 277.5 47.5 282.5 52.5 {name=PD dir=in}
B 5 327.5 -12.5 332.5 -7.5 {name=VDD dir=inout}
T {@symname} 349.5 74 0 0 0.3 0.3 {}
N 330 -30 330 -10 {
lab=VDD}
N 330 90 330 120 {
lab=VSS}
N 260 20 280 20 {
lab=PU}
N 260 50 280 50 {
lab=PD}
N 390 40 410 40 {
lab=VCNTL}
N -480 -30 -480 -20 {
lab=VSS}
N -480 -110 -480 -90 {
lab=VDD}
N -400 -110 -400 -90 {
lab=VSS}
N -400 -30 -400 -10 {
lab=GND}
N -330 -30 -330 -20 {
lab=VSS}
N -330 -110 -330 -90 {
lab=PU}
N -80 -20 -80 -10 {
lab=VSS}
N -80 -100 -80 -80 {
lab=PD}
N 410 40 430 40 {
lab=VCNTL}
N 460 100 460 120 {
lab=VSS}
N 430 40 460 40 {
lab=VCNTL}
C {devices/lab_wire.sym} 330 -30 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 330 120 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 260 20 0 0 {name=p3 sig_type=std_logic lab=PU}
C {devices/lab_wire.sym} 260 50 0 0 {name=p4 sig_type=std_logic lab=PD}
C {devices/vsource.sym} -480 -60 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} -400 -60 0 0 {name=V2 value=0}
C {devices/vsource.sym} -330 -60 0 0 {name=V3 value="pulse(3.3 0 50n 100p 100p 75n 100n)"}
C {devices/lab_wire.sym} -400 -110 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -480 -20 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -480 -110 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -330 -110 0 0 {name=p15 sig_type=std_logic lab=PU}
C {devices/lab_wire.sym} -330 -20 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} -400 -10 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 270 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 980 -290 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 500n 
plot v(PU)
plot v(PD)
plot v(VCNTL)
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -80 -50 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 75n 100n)"}
C {devices/lab_wire.sym} -80 -100 0 0 {name=p17 sig_type=std_logic lab=PD}
C {devices/lab_wire.sym} -80 -10 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/capa.sym} 460 70 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 460 120 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 430 40 0 0 {name=p6 sig_type=std_logic lab=VCNTL}
C {CP_LF.sym} 180 120 0 0 {name=x1}
