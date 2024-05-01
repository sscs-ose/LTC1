v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 -340 330 -320 {
lab=GND}
N 50 -460 50 -450 {
lab=GND}
N 830 -450 860 -450 {
lab=OUT}
N 830 -470 860 -470 {
lab=OUTB}
N 960 -390 960 -370 {
lab=GND}
N 960 -490 960 -450 {
lab=VSS}
N 330 -430 330 -400 {
lab=VCONT}
N 490 -430 530 -430 {
lab=VCONT}
N 920 -490 960 -490 {
lab=VSS}
N 330 -430 490 -430 {
lab=VCONT}
N 50 -520 250 -520 {
lab=VDD}
N 830 -490 920 -490 {
lab=VSS}
N 830 -430 850 -430 {
lab=VDD}
C {devices/vsource.sym} 330 -370 0 0 {name=VCNTL value=0.925
}
C {devices/gnd.sym} 330 -320 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 50 -450 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 50 -490 0 0 {name=V2 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 140 -720 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/opin.sym} 860 -450 0 0 {name=p11 lab=OUT}
C {devices/opin.sym} 860 -470 0 0 {name=p12 lab=OUTB}
C {devices/vsource.sym} 960 -420 0 1 {name=VCNTL1 value=0


}
C {devices/gnd.sym} 960 -370 0 1 {name=l3 lab=GND}
C {devices/lab_pin.sym} 250 -520 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 330 -430 0 0 {name=p3 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} 960 -490 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {VCO_TB.sym} 680 -460 2 1 {name=x1}
C {devices/lab_pin.sym} 840 -430 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1420 -780 0 1 {name=NGSPICE2 only_toplevel=true
value="
.control
save all
tran 1n 200n 

.endc
"}
