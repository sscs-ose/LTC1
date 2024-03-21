v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -540 280 -510 {
lab=GND}
N 280 -630 280 -600 {
lab=VSS}
N 340 -630 340 -600 {
lab=VDD}
N 340 -540 340 -510 {
lab=VSS}
N 920 -440 950 -440 {
lab=OUT-}
N 950 -440 970 -440 {
lab=OUT-}
N 1000 -460 1030 -460 {
lab=OUT+}
N 1030 -460 1050 -460 {
lab=OUT+}
N 260 -400 260 -370 {
lab=B4}
N 260 -310 260 -280 {
lab=VSS}
N 300 -380 300 -350 {
lab=B5}
N 300 -290 300 -260 {
lab=VSS}
N 340 -360 340 -330 {
lab=B6}
N 340 -270 340 -240 {
lab=VSS}
N 220 -420 220 -390 {
lab=B3}
N 220 -330 220 -300 {
lab=VSS}
N 180 -440 180 -410 {
lab=B2}
N 180 -350 180 -320 {
lab=VSS}
N 140 -460 140 -430 {
lab=B1}
N 140 -370 140 -340 {
lab=VSS}
N 200 -460 590 -460 {
lab=B1}
N 240 -440 590 -440 {
lab=B2}
N 280 -420 590 -420 {
lab=B3}
N 320 -400 590 -400 {
lab=B4}
N 360 -380 590 -380 {
lab=B5}
N 400 -360 590 -360 {
lab=B6}
N 890 -440 920 -440 {
lab=OUT-}
N 890 -460 1000 -460 {
lab=OUT+}
N 540 -230 540 -200 {
lab=VDD}
N 540 -320 540 -290 {
lab=ITAIL}
N 710 -560 710 -490 {
lab=VDD}
N 730 -290 730 -220 {
lab=VSS}
N 540 -320 590 -320 {
lab=ITAIL}
N 1060 -510 1060 -460 {
lab=OUT+}
N 1050 -460 1060 -460 {
lab=OUT+}
N 1060 -600 1060 -570 {
lab=VDD}
N 1180 -590 1180 -580 {
lab=VDD}
N 1060 -590 1180 -590 {
lab=VDD}
N 1180 -450 1180 -440 {
lab=OUT-}
N 970 -440 1180 -440 {
lab=OUT-}
N 540 -560 710 -560 {
lab=VDD}
N 520 -560 540 -560 {
lab=VDD}
N 520 -630 520 -560 {
lab=VDD}
N 520 -600 1060 -600 {
lab=VDD}
N 340 -650 340 -630 {
lab=VDD}
N 340 -650 520 -650 {
lab=VDD}
N 520 -650 520 -630 {
lab=VDD}
N 540 -190 540 -160 {
lab=VDD}
N 540 -200 540 -190 {
lab=VDD}
N -310 -710 -310 -690 {
lab=#net1}
N 140 -460 200 -460 {
lab=B1}
N -310 -630 -310 -580 {
lab=VSS}
N -210 -690 -210 -670 {
lab=#net2}
N -210 -610 -210 -560 {
lab=VSS}
N -170 -670 -170 -650 {
lab=#net3}
N -170 -590 -170 -540 {
lab=VSS}
N -130 -650 -130 -630 {
lab=#net4}
N -130 -570 -130 -520 {
lab=VSS}
N -90 -630 -90 -610 {
lab=#net5}
N -90 -550 -90 -500 {
lab=VSS}
N -50 -610 -50 -590 {
lab=#net6}
N -50 -530 -50 -480 {
lab=VSS}
N 1180 -580 1180 -540 {
lab=VDD}
N 1180 -480 1180 -450 {
lab=OUT-}
N 1490 -440 1490 -430 {
lab=#net7}
N 180 -440 240 -440 {
lab=B2}
N 220 -420 280 -420 {
lab=B3}
N 260 -400 320 -400 {
lab=B4}
N 300 -380 360 -380 {
lab=B5}
N 340 -360 400 -360 {
lab=B6}
C {devices/vsource.sym} 280 -570 0 0 {name=V1 value=0}
C {devices/vsource.sym} 340 -570 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 280 -510 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 280 -620 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 340 -620 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 340 -520 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 650 -660 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1490 -830 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_LSBs_magic.spice"
.option savecurrents
.control
save all
op

tran 10n 3.2u
plot v(OUT+) v(OUT-) 
write LSB_TB.raw
.endc
"}
C {devices/lab_wire.sym} 930 -440 0 1 {name=p10 sig_type=std_logic lab=OUT-}
C {devices/lab_wire.sym} 1010 -460 0 1 {name=p5 sig_type=std_logic lab=OUT+}
C {devices/vsource.sym} 260 -340 0 0 {name=V6 value="pulse(0 3.3 0 10p 10p 400n 800n)"}
C {devices/lab_wire.sym} 260 -290 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 300 -320 0 0 {name=V7 value="pulse(0 3.3 0 10p 10p 800n 1.6u)"}
C {devices/lab_wire.sym} 300 -270 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 340 -300 0 0 {name=V8 value="pulse(0 3.3 0 10p 10p 1.6u 3.2u)"}
C {devices/lab_wire.sym} 340 -250 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 220 -360 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 200n 400n)"}
C {devices/lab_wire.sym} 220 -310 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 180 -380 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 100n 200n)"}
C {devices/lab_wire.sym} 180 -330 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 140 -400 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 50n 100n)"}
C {devices/lab_wire.sym} 140 -350 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 540 -260 2 0 {name=I0 value=2.5u}
C {devices/lab_pin.sym} 730 -240 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1060 -540 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1180 -510 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 480 -460 0 0 {name=p3 sig_type=std_logic lab=B1}
C {devices/lab_wire.sym} 470 -440 0 0 {name=p7 sig_type=std_logic lab=B2}
C {devices/lab_wire.sym} 480 -420 0 0 {name=p16 sig_type=std_logic lab=B3}
C {devices/lab_wire.sym} 480 -400 0 0 {name=p18 sig_type=std_logic lab=B4}
C {devices/lab_wire.sym} 480 -380 0 0 {name=p20 sig_type=std_logic lab=B5}
C {devices/lab_wire.sym} 480 -360 0 0 {name=p21 sig_type=std_logic lab=B6}
C {devices/lab_pin.sym} 540 -320 0 0 {name=p2 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 540 -170 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -310 -660 0 0 {name=V3 value=0}
C {devices/lab_wire.sym} -310 -610 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -210 -640 0 0 {name=V4 value=0}
C {devices/lab_wire.sym} -210 -590 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -170 -620 0 0 {name=V5 value=0}
C {devices/lab_wire.sym} -170 -570 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -130 -600 0 0 {name=V9 value=3.3}
C {devices/lab_wire.sym} -130 -550 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -90 -580 0 0 {name=V13 value=0}
C {devices/lab_wire.sym} -90 -530 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -50 -560 0 0 {name=V14 value=0}
C {devices/lab_wire.sym} -50 -510 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {pex_LSBs_magic.sym} 740 -390 0 0 {name=x1}
