v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -550 360 -520 {
lab=VDD}
N 360 -460 360 -430 {
lab=GND}
N 360 -630 360 -600 {
lab=VDD}
N 360 -570 360 -550 {
lab=VDD}
N 360 -600 360 -590 {
lab=VDD}
N 1505 -650 1505 -550 {
lab=#net1}
N 1350 -550 1405 -550 {
lab=#net1}
N 1505 -760 1505 -650 {
lab=#net1}
N 1070 -640 1190 -640 {
lab=OUT1}
N 1190 -630 1190 -610 {
lab=OUT1}
N 1250 -650 1250 -630 {
lab=OUT2}
N 1250 -570 1250 -550 {
lab=#net1}
N 1040 -660 1220 -660 {
lab=OUT2}
N 1300 -680 1300 -660 {
lab=OUT3}
N 1300 -590 1300 -570 {
lab=#net1}
N 1120 -680 1300 -680 {
lab=OUT3}
N 1300 -570 1300 -550 {
lab=#net1}
N 1070 -680 1120 -680 {
lab=OUT3}
N 1360 -610 1360 -590 {
lab=#net1}
N 1360 -590 1360 -570 {
lab=#net1}
N 1360 -570 1360 -550 {
lab=#net1}
N 1060 -700 1120 -700 {
lab=OUT4}
N 360 -590 360 -570 {
lab=VDD}
N 1120 -700 1350 -700 {
lab=OUT4}
N 1190 -640 1190 -630 {
lab=OUT1}
N 980 -640 1070 -640 {
lab=OUT1}
N 1250 -660 1250 -650 {
lab=OUT2}
N 1220 -660 1250 -660 {
lab=OUT2}
N 980 -660 1040 -660 {
lab=OUT2}
N 1300 -660 1300 -650 {
lab=OUT3}
N 980 -680 1070 -680 {
lab=OUT3}
N 1360 -700 1360 -670 {
lab=OUT4}
N 1350 -700 1360 -700 {
lab=OUT4}
N 980 -700 1060 -700 {
lab=OUT4}
N 1580 -750 1580 -720 {
lab=#net1}
N 1580 -660 1580 -630 {
lab=GND}
N 1505 -760 1580 -760 {
lab=#net1}
N 1580 -760 1580 -750 {
lab=#net1}
N 1410 -620 1410 -550 {
lab=#net1}
N 1405 -550 1505 -550 {
lab=#net1}
N 980 -720 1410 -720 {
lab=OUT5}
N 1410 -720 1410 -680 {
lab=OUT5}
N 1190 -550 1350 -550 {
lab=#net1}
N 1040 -740 1470 -740 {
lab=OUT_6}
N 1470 -740 1470 -700 {
lab=OUT_6}
N 1470 -640 1470 -550 {
lab=#net1}
N 980 -740 1040 -740 {
lab=OUT_6}
N 830 -600 830 -470 {
lab=GND}
N 830 -470 850 -470 {
lab=GND}
N 360 -700 680 -700 {
lab=ITAIL}
N 360 -700 360 -690 {
lab=ITAIL}
N 830 -820 830 -790 {
lab=VDD}
N 830 -820 910 -820 {
lab=VDD}
C {devices/vsource.sym} 360 -490 0 0 {name=V2 value=3.3}
C {devices/code_shown.sym} 610 -900 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/isource.sym} 360 -660 2 0 {name=I0 value=2.5u}
C {devices/code_shown.sym} 2040 -825 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_CM_LSB_mod.spice"
.option savecurrents
.control
save all
op

tran 10n 3u
plot v(ITAIL) v(OUT3)
write CM_LSB_V1_TB.raw
.endc
"}
C {devices/res.sym} 1190 -580 0 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1140 -640 0 0 {name=p3 sig_type=std_logic lab=OUT1}
C {devices/res.sym} 1250 -600 0 0 {name=R3
value=2k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1180 -660 0 0 {name=p5 sig_type=std_logic lab=OUT2}
C {devices/res.sym} 1300 -620 0 0 {name=R4
value=2k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1220 -680 0 0 {name=p4 sig_type=std_logic lab=OUT3}
C {devices/res.sym} 1360 -640 0 0 {name=R5
value=2k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1290 -700 0 0 {name=p6 sig_type=std_logic lab=OUT4}
C {devices/gnd.sym} 360 -430 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1580 -690 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} 1580 -630 0 0 {name=l3 lab=GND}
C {devices/res.sym} 1410 -650 0 0 {name=R6
value=2k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1350 -720 0 0 {name=p8 sig_type=std_logic lab=OUT5}
C {devices/res.sym} 1470 -670 0 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1370 -740 0 0 {name=p1 sig_type=std_logic lab=OUT_6}
C {devices/lab_pin.sym} 360 -550 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {pex_CM_LSB_mod .sym} 820 -700 0 0 {name=x1}
C {devices/gnd.sym} 850 -470 3 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 520 -700 2 0 {name=p2 sig_type=std_logic lab=ITAIL}
C {devices/lab_pin.sym} 890 -820 0 0 {name=p7 sig_type=std_logic lab=VDD}
