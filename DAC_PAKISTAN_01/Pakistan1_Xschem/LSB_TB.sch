v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -570 80 -540 {
lab=GND}
N 80 -660 80 -630 {
lab=VSS}
N 140 -660 140 -630 {
lab=VDD}
N 140 -570 140 -540 {
lab=VSS}
N 720 -430 750 -430 {
lab=OUT-}
N 750 -430 770 -430 {
lab=OUT-}
N 800 -450 830 -450 {
lab=OUT+}
N 830 -450 850 -450 {
lab=OUT+}
N 120 -430 120 -400 {
lab=B4}
N 120 -340 120 -310 {
lab=VSS}
N 160 -410 160 -380 {
lab=B5}
N 160 -320 160 -290 {
lab=VSS}
N 200 -390 200 -360 {
lab=B6}
N 200 -300 200 -270 {
lab=VSS}
N 80 -450 80 -420 {
lab=B3}
N 80 -360 80 -330 {
lab=VSS}
N 40 -470 40 -440 {
lab=B2}
N 40 -380 40 -350 {
lab=VSS}
N 0 -490 0 -460 {
lab=B1}
N 0 -400 0 -370 {
lab=VSS}
N 0 -490 390 -490 {
lab=B1}
N 40 -470 390 -470 {
lab=B2}
N 80 -450 390 -450 {
lab=B3}
N 120 -430 390 -430 {
lab=B4}
N 160 -410 390 -410 {
lab=B5}
N 200 -390 390 -390 {
lab=B6}
N 690 -430 720 -430 {
lab=OUT-}
N 690 -450 800 -450 {
lab=OUT+}
N 210 -660 210 -630 {
lab=VDD}
N 210 -570 210 -540 {
lab=ITAIL}
N 510 -590 510 -520 {
lab=VDD}
N 550 -590 550 -520 {
lab=VSS}
N 340 -350 390 -350 {
lab=ITAIL}
N 860 -500 860 -450 {
lab=OUT+}
N 850 -450 860 -450 {
lab=OUT+}
N 860 -590 860 -560 {
lab=VDD}
N 980 -580 980 -570 {
lab=VDD}
N 860 -580 980 -580 {
lab=VDD}
N 980 -510 980 -440 {
lab=OUT-}
N 980 -440 980 -430 {
lab=OUT-}
N 770 -430 980 -430 {
lab=OUT-}
N 340 -590 510 -590 {
lab=VDD}
N 320 -590 340 -590 {
lab=VDD}
N 140 -660 210 -660 {
lab=VDD}
N 320 -660 320 -590 {
lab=VDD}
N 210 -660 320 -660 {
lab=VDD}
N 860 -630 860 -590 {
lab=VDD}
N 320 -630 860 -630 {
lab=VDD}
C {devices/vsource.sym} 80 -600 0 0 {name=V1 value=0}
C {devices/vsource.sym} 140 -600 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 80 -540 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -650 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -650 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 -550 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 450 -690 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1290 -860 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_LSBs_magic.spice"
.option savecurrents
.control
save all
op

tran 10n 3.2u
plot v(OUT+) v(OUT-) 
*write LSB_TB.raw
.endc
"}
C {devices/lab_wire.sym} 730 -430 0 1 {name=p10 sig_type=std_logic lab=OUT-}
C {devices/lab_wire.sym} 810 -450 0 1 {name=p5 sig_type=std_logic lab=OUT+}
C {devices/vsource.sym} 120 -370 0 0 {name=V6 value="pulse(0 3.3 0 10p 10p 400n 800n)"}
C {devices/lab_wire.sym} 120 -320 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 160 -350 0 0 {name=V7 value="pulse(0 3.3 0 10p 10p 800n 1.6u)"}
C {devices/lab_wire.sym} 160 -300 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 200 -330 0 0 {name=V8 value="pulse(0 3.3 0 10p 10p 1.6u 3.2u)"}
C {devices/lab_wire.sym} 200 -280 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 80 -390 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 200n 400n)"}
C {devices/lab_wire.sym} 80 -340 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 40 -410 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 100n 200n)"}
C {devices/lab_wire.sym} 40 -360 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 0 -430 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 50n 100n)"}
C {devices/lab_wire.sym} 0 -380 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 210 -600 0 0 {name=I0 value=2.5u}
C {devices/lab_pin.sym} 550 -580 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -350 0 0 {name=p13 sig_type=std_logic lab=ITAIL}
C {devices/res.sym} 860 -530 0 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 980 -540 0 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 280 -490 0 0 {name=p3 sig_type=std_logic lab=B1}
C {devices/lab_wire.sym} 270 -470 0 0 {name=p7 sig_type=std_logic lab=B2}
C {devices/lab_wire.sym} 280 -450 0 0 {name=p16 sig_type=std_logic lab=B3}
C {devices/lab_wire.sym} 280 -430 0 0 {name=p18 sig_type=std_logic lab=B4}
C {devices/lab_wire.sym} 280 -410 0 0 {name=p20 sig_type=std_logic lab=B5}
C {devices/lab_wire.sym} 280 -390 0 0 {name=p21 sig_type=std_logic lab=B6}
C {devices/lab_pin.sym} 210 -550 0 0 {name=p2 sig_type=std_logic lab=ITAIL}
C {CM_LSB_s.sym} 540 -420 0 0 {name=x1}
