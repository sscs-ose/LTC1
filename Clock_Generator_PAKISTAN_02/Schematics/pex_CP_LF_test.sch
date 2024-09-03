v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 540 240 550 {
lab=VSS}
N 240 460 240 480 {
lab=VDD}
N 320 460 320 480 {
lab=VSS}
N 320 540 320 560 {
lab=GND}
N 390 540 390 550 {
lab=VSS}
N 390 460 390 480 {
lab=PU}
N 640 550 640 560 {
lab=VSS}
N 640 470 640 490 {
lab=PD}
N 860 320 870 320 {
lab=PU}
N 850 340 870 340 {
lab=PD}
N 850 320 860 320 {
lab=PU}
N 930 230 930 250 {
lab=IPD+}
N 960 230 960 250 {
lab=VDD}
N 930 410 930 430 {
lab=IPD_}
N 960 410 960 430 {
lab=VSS}
N 1040 330 1100 330 {
lab=VCNTL}
N 1100 330 1130 330 {
lab=VCNTL}
N 1130 330 1200 330 {
lab=VCNTL}
N 810 200 810 220 {
lab=VSS}
N 880 200 880 220 {
lab=IPD+}
N 810 120 810 140 {
lab=IPD_}
N 880 120 880 140 {
lab=VDD}
N 1290 590 1290 610 {
lab=VSS}
N 1300 470 1300 480 {
lab=VDD}
N 1300 470 1320 470 {
lab=VDD}
N 1090 600 1090 630 {
lab=VSS}
N 1090 630 1160 630 {
lab=VSS}
N 1090 470 1090 540 {
lab=#net1}
N 1090 470 1160 470 {
lab=#net1}
N 1160 470 1160 480 {
lab=#net1}
N 1160 540 1160 560 {
lab=#net2}
N 1160 620 1160 630 {
lab=VSS}
N 1160 470 1180 470 {
lab=#net1}
N 1180 440 1180 470 {
lab=#net1}
N 1270 470 1270 480 {
lab=#net3}
N 1220 470 1270 470 {
lab=#net3}
N 130 550 130 560 {
lab=VSS}
N 130 470 130 490 {
lab=S2}
N 1200 330 1250 330 {
lab=VCNTL}
N 1220 440 1220 470 {
lab=#net3}
N 1220 400 1220 440 {
lab=#net3}
N 1220 400 1230 400 {
lab=#net3}
N 1180 380 1230 380 {
lab=#net1}
N 1180 380 1180 440 {
lab=#net1}
N 1380 350 1400 350 {
lab=VDD}
N 1380 450 1380 460 {
lab=VSS}
N 1230 420 1230 440 {
lab=S2}
N 1560 330 1560 400 {
lab=VCNTL}
N 1250 330 1560 330 {
lab=VCNTL}
N 1530 400 1560 400 {
lab=VCNTL}
C {devices/vsource.sym} 240 510 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 320 510 0 0 {name=V2 value=0}
C {devices/vsource.sym} 390 510 0 0 {name=V3 value="pulse(3.3 0 50n 100p 100p 75n 100n)"}
C {devices/lab_wire.sym} 320 460 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 550 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 240 460 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 390 460 0 0 {name=p15 sig_type=std_logic lab=PU}
C {devices/lab_wire.sym} 390 550 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 320 560 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 750 200 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_CP_LF_mag.spice"
.include "pex_LF_mag.spice"
.include "pex_A_MUX.spice"
.include "pex_a2x1mux_mag.spice"
.control
save all
tran 50p 500n 
plot v(PU) v(PD)+4 
plot v(VCNTL)
.options savecurrents
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 640 520 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 75n 100n)"}
C {devices/lab_wire.sym} 640 470 0 0 {name=p17 sig_type=std_logic lab=PD}
C {devices/lab_wire.sym} 640 560 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 850 340 0 0 {name=p1 sig_type=std_logic lab=PD}
C {devices/lab_wire.sym} 850 320 0 0 {name=p2 sig_type=std_logic lab=PU}
C {devices/lab_wire.sym} 960 230 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 960 420 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 810 170 0 0 {name=I0 value=20u}
C {devices/isource.sym} 880 170 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 810 120 0 0 {name=p7 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 880 220 2 0 {name=p8 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 810 220 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 880 120 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 930 430 3 0 {name=p11 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 930 230 1 0 {name=p19 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 1230 330 2 0 {name=p20 sig_type=std_logic lab=VCNTL}
C {devices/code_shown.sym} 40 40 0 0 {name=MODELS1 only_toplevel=true
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
C {devices/lab_wire.sym} 1290 610 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1320 470 0 1 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1400 350 0 1 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1230 440 1 1 {name=p26 sig_type=std_logic lab=S2}
C {devices/capa.sym} 1160 590 0 0 {name=C1
m=1
value=80.14p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1090 570 0 0 {name=C2
m=1
value=3.77p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1160 510 0 0 {name=R1
value=48.84k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1090 630 2 1 {name=p27 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 130 520 0 0 {name=V5 value=3.3}
C {devices/lab_wire.sym} 130 560 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 130 470 0 0 {name=p21 sig_type=std_logic lab=S2}
C {A_MUX_pex.sym} 1380 400 0 0 {name=x3}
C {devices/lab_wire.sym} 1380 460 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1440 -240 2 0 {name=p44 sig_type=std_logic lab=LP_op_test
}
C {pex_LF_mag.sym} 1430 640 0 1 {name=x2}
C {pex_CP_mag.sym} 380 530 0 0 {name=x1}
