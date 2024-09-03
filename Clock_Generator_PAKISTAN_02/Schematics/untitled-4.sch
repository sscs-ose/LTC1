v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
N 140 -250 150 -250 {
lab=PU}
N 130 -230 150 -230 {
lab=PD}
N 130 -250 140 -250 {
lab=PU}
N 210 -340 210 -320 {
lab=IPD+}
N 240 -340 240 -320 {
lab=VDD}
N 210 -160 210 -140 {
lab=IPD_}
N 240 -160 240 -140 {
lab=VSS}
N 530 0 530 20 {
lab=VSS}
N 500 -250 530 -250 {
lab=VCNTL}
N 530 -250 600 -250 {
lab=VCNTL}
N 90 -370 90 -350 {
lab=VSS}
N 160 -370 160 -350 {
lab=IPD+}
N 90 -450 90 -430 {
lab=IPD_}
N 160 -450 160 -430 {
lab=VDD}
N 540 -120 540 -110 {
lab=VDD}
N 540 -120 560 -120 {
lab=VDD}
N 340 -180 360 -180 {
lab=S2}
N 340 -200 360 -200 {
lab=VDD}
N 510 -210 540 -210 {
lab=VSS}
N 330 10 330 40 {
lab=VSS}
N 330 40 400 40 {
lab=VSS}
N 330 -120 330 -50 {
lab=#net1}
N 330 -120 400 -120 {
lab=#net1}
N 400 -120 400 -110 {
lab=#net1}
N -590 -30 -590 -20 {
lab=VSS}
N -590 -110 -590 -90 {
lab=S2}
N 360 -200 370 -200 {
lab=VDD}
N 320 -260 500 -260 {
lab=VCNTL}
N 320 -250 320 -240 {
lab=VCNTL}
N 400 -50 400 -30 {
lab=#net2}
N 400 30 400 40 {
lab=VSS}
N 400 -120 420 -120 {
lab=#net1}
N 420 -150 420 -120 {
lab=#net1}
N 510 -120 510 -110 {
lab=#net3}
N 460 -120 510 -120 {
lab=#net3}
N 460 -150 460 -120 {
lab=#net3}
N 320 -260 320 -250 {
lab=VCNTL}
N 500 -260 500 -250 {
lab=VCNTL}
N 440 -260 440 -250 {
lab=VCNTL}
N 410 -200 430 -200 {
lab=#net4}
N 440 -250 440 -240 {
lab=VCNTL}
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
C {devices/code_shown.sym} -150 -420 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 500n 
plot v(PU) v(PD)+4 vcntl+8
plot v(VCNTL)
.options savecurrents
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -80 -50 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 75n 100n)"}
C {devices/lab_wire.sym} -80 -100 0 0 {name=p17 sig_type=std_logic lab=PD}
C {devices/lab_wire.sym} -80 -10 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {CP.sym} -340 -40 0 0 {name=x1}
C {devices/lab_wire.sym} 130 -230 0 0 {name=p1 sig_type=std_logic lab=PD}
C {devices/lab_wire.sym} 130 -250 0 0 {name=p2 sig_type=std_logic lab=PU}
C {devices/lab_wire.sym} 240 -340 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 240 -150 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 530 20 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 90 -400 0 0 {name=I0 value=20u}
C {devices/isource.sym} 160 -400 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 90 -450 0 0 {name=p7 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 160 -350 2 0 {name=p8 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 90 -350 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 160 -450 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 210 -140 3 0 {name=p11 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 210 -340 1 0 {name=p19 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 600 -250 2 0 {name=p20 sig_type=std_logic lab=VCNTL}
C {devices/lab_wire.sym} 560 -120 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 280 -640 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {LF.sym} 670 50 0 1 {name=x2}
C {devices/lab_wire.sym} 540 -210 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 340 -200 2 1 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 340 -180 1 1 {name=p23 sig_type=std_logic lab=S2}
C {devices/capa.sym} 400 0 0 0 {name=C1
m=1
value=80.14p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 330 -20 0 0 {name=C2
m=1
value=3.77p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 400 -80 0 0 {name=R1
value=48.84k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -590 -60 0 0 {name=V5 value=1}
C {devices/lab_wire.sym} -590 -20 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -590 -110 0 0 {name=p25 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} 330 40 2 1 {name=p26 sig_type=std_logic lab=VSS}
C {a2x1mux.sym} 600 170 3 0 {name=x3}
