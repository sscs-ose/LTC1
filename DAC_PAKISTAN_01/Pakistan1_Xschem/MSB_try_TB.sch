v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -310 130 -280 {
lab=GND}
N 130 -400 130 -370 {
lab=VSS}
N 190 -400 190 -370 {
lab=VDD}
N 190 -310 190 -280 {
lab=VSS}
N 680 -170 710 -170 {
lab=OUT+}
N 710 -170 730 -170 {
lab=OUT+}
N 730 -110 730 -80 {
lab=VDD}
N 760 -190 790 -190 {
lab=OUT-}
N 790 -190 810 -190 {
lab=OUT-}
N 810 -130 810 -100 {
lab=VDD}
N 170 -170 170 -140 {
lab=#net1}
N 170 -80 170 -50 {
lab=VSS}
N 210 -150 210 -120 {
lab=#net2}
N 210 -60 210 -30 {
lab=VSS}
N 250 -130 250 -100 {
lab=#net3}
N 250 -40 250 -10 {
lab=VSS}
N 130 -190 130 -160 {
lab=#net4}
N 130 -100 130 -70 {
lab=VSS}
N 90 -210 90 -180 {
lab=#net5}
N 90 -120 90 -90 {
lab=VSS}
N 50 -230 50 -200 {
lab=#net6}
N 50 -140 50 -110 {
lab=VSS}
N 50 -230 440 -230 {
lab=#net6}
N 90 -210 440 -210 {
lab=#net5}
N 130 -190 440 -190 {
lab=#net4}
N 170 -170 440 -170 {
lab=#net1}
N 210 -150 440 -150 {
lab=#net2}
N 250 -130 440 -130 {
lab=#net3}
N 650 -170 680 -170 {
lab=OUT+}
N 650 -190 760 -190 {
lab=OUT-}
N 260 -400 260 -370 {
lab=VDD}
N 260 -310 260 -280 {
lab=ITAIL}
N 610 -190 650 -190 {
lab=OUT-}
N 610 -170 650 -170 {
lab=OUT+}
N 510 -300 510 -270 {
lab=VDD}
N 540 -320 540 -270 {
lab=ITAIL}
N 540 -100 540 -50 {
lab=VSS}
C {devices/vsource.sym} 130 -340 0 0 {name=V1 value=0}
C {devices/vsource.sym} 190 -340 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 130 -280 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 130 -390 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 190 -390 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 190 -290 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 500 -430 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 170 -110 0 0 {name=V6 value="pulse(0 3.3 0 10p 10p 400n 800n)"}
C {devices/lab_wire.sym} 170 -60 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 210 -90 0 0 {name=V7 value="pulse(0 3.3 0 10p 10p 800n 1.6u)"}
C {devices/lab_wire.sym} 210 -40 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 250 -70 0 0 {name=V8 value="pulse(0 3.3 0 10p 10p 1.6u 3.2u)"}
C {devices/lab_wire.sym} 250 -20 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 130 -130 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 200n 400n)"}
C {devices/lab_wire.sym} 130 -80 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 90 -150 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 100n 200n)"}
C {devices/lab_wire.sym} 90 -100 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 50 -170 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 50n 100n)"}
C {devices/lab_wire.sym} 50 -120 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/res.sym} 810 -160 0 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 730 -140 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {devices/isource.sym} 260 -340 0 0 {name=I0 value=2.5u}
C {devices/lab_wire.sym} 260 -400 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 260 -280 0 0 {name=p11 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 730 -80 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 810 -100 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {MSB_try.sym} 540 -180 0 0 {name=x1}
C {devices/lab_wire.sym} 510 -300 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 540 -320 0 0 {name=p6 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 540 -50 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 720 -190 0 0 {name=p10 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 690 -170 0 0 {name=p12 sig_type=std_logic lab=OUT+}
C {devices/code_shown.sym} 1220 -310 0 1 {name=NGSPICE only_toplevel=true
value="
.option savecurrents
.control
save all
op

tran 10n 3.2u
plot v(OUT-) 
write MSB_try_TB.raw
.endc
"}
