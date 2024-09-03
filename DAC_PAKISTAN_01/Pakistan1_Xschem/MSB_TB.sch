v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -340 120 -310 {
lab=GND}
N 120 -430 120 -400 {
lab=VSS}
N 180 -430 180 -400 {
lab=VDD}
N 180 -340 180 -310 {
lab=VSS}
N 670 -200 700 -200 {
lab=Out+}
N 700 -200 720 -200 {
lab=Out+}
N 720 -140 720 -110 {
lab=VDD}
N 750 -220 780 -220 {
lab=Out-}
N 780 -220 800 -220 {
lab=Out-}
N 800 -160 800 -130 {
lab=VDD}
N 160 -200 160 -170 {
lab=#net1}
N 160 -110 160 -80 {
lab=VSS}
N 200 -180 200 -150 {
lab=#net2}
N 200 -90 200 -60 {
lab=VSS}
N 240 -160 240 -130 {
lab=#net3}
N 240 -70 240 -40 {
lab=VSS}
N 120 -220 120 -190 {
lab=#net4}
N 120 -130 120 -100 {
lab=VSS}
N 80 -240 80 -210 {
lab=#net5}
N 80 -150 80 -120 {
lab=VSS}
N 40 -260 40 -230 {
lab=#net6}
N 40 -170 40 -140 {
lab=VSS}
N 40 -260 430 -260 {
lab=#net6}
N 80 -240 430 -240 {
lab=#net5}
N 120 -220 430 -220 {
lab=#net4}
N 160 -200 430 -200 {
lab=#net1}
N 200 -180 430 -180 {
lab=#net2}
N 240 -160 430 -160 {
lab=#net3}
N 640 -200 670 -200 {
lab=Out+}
N 640 -220 750 -220 {
lab=Out-}
N 250 -430 250 -400 {
lab=VDD}
N 250 -340 250 -310 {
lab=ITAIL}
N 500 -310 500 -290 {
lab=VDD}
N 540 -330 540 -290 {
lab=ITAIL}
N 520 -130 520 -100 {
lab=VSS}
N 610 -220 640 -220 {
lab=Out-}
N 610 -200 640 -200 {
lab=Out+}
C {devices/vsource.sym} 120 -370 0 0 {name=V1 value=0}
C {devices/vsource.sym} 180 -370 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 120 -310 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 120 -420 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -420 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 -320 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 490 -460 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1280 -440 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all
op

tran 1000p 80n
plot v(Out-) v(Out+) 

*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} 160 -140 0 0 {name=V6 value="pulse(0 3.3 0 10p 10p 20n 40n)"}
C {devices/lab_wire.sym} 160 -90 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 200 -120 0 0 {name=V7 value="pulse(0 3.3 0 10p 10p 40n 80n)"}
C {devices/lab_wire.sym} 200 -70 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 240 -100 0 0 {name=V8 value="pulse(0 3.3 0 10p 10p 80n 160n)"}
C {devices/lab_wire.sym} 240 -50 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 120 -160 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 10n 20n)"}
C {devices/lab_wire.sym} 120 -110 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 80 -180 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 5n 10n)"}
C {devices/lab_wire.sym} 80 -130 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 40 -200 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 2.5n 5n)"}
C {devices/lab_wire.sym} 40 -150 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/res.sym} 800 -190 0 0 {name=R1
value=25
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 720 -170 0 0 {name=R2
value=25
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} 250 -370 0 0 {name=I0 value=20u}
C {devices/lab_wire.sym} 250 -430 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 250 -310 0 0 {name=p11 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 720 -110 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 800 -130 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 500 -310 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 540 -330 0 0 {name=p6 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 520 -100 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 700 -220 0 0 {name=p10 sig_type=std_logic lab=Out-}
C {devices/lab_wire.sym} 670 -200 0 0 {name=p12 sig_type=std_logic lab=Out+}
C {MSB_V2.sym} 520 -210 0 0 {name=x1}
