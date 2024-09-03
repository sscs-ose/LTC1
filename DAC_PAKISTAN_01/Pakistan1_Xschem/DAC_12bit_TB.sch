v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -450 50 -420 {
lab=GND}
N 50 -540 50 -510 {
lab=VSS}
N 110 -540 110 -510 {
lab=VDD}
N 110 -450 110 -420 {
lab=VSS}
N 170 -290 170 -260 {
lab=B4}
N 170 -200 170 -170 {
lab=VSS}
N 210 -270 210 -240 {
lab=B5}
N 210 -180 210 -150 {
lab=VSS}
N 250 -250 250 -220 {
lab=B6}
N 250 -160 250 -130 {
lab=VSS}
N 130 -310 130 -280 {
lab=B3}
N 130 -220 130 -190 {
lab=VSS}
N 90 -330 90 -300 {
lab=B2}
N 90 -240 90 -210 {
lab=VSS}
N 50 -350 50 -320 {
lab=B1}
N 50 -260 50 -230 {
lab=VSS}
N 410 -170 410 -140 {
lab=B10}
N 410 -80 410 -50 {
lab=VSS}
N 450 -150 450 -120 {
lab=B11}
N 450 -60 450 -30 {
lab=VSS}
N 490 -130 490 -100 {
lab=B12}
N 490 -40 490 -10 {
lab=VSS}
N 370 -190 370 -160 {
lab=B9}
N 370 -100 370 -70 {
lab=VSS}
N 330 -210 330 -180 {
lab=B8}
N 330 -120 330 -90 {
lab=VSS}
N 290 -230 290 -200 {
lab=B7}
N 290 -140 290 -110 {
lab=VSS}
N 270 -540 270 -510 {
lab=VDD}
N 270 -450 270 -420 {
lab=ITAIL}
N 50 -350 750 -350 {
lab=B1}
N 90 -330 750 -330 {
lab=B2}
N 130 -310 750 -310 {
lab=B3}
N 170 -290 750 -290 {
lab=B4}
N 210 -270 750 -270 {
lab=B5}
N 250 -250 750 -250 {
lab=B6}
N 290 -230 750 -230 {
lab=B7}
N 330 -210 750 -210 {
lab=B8}
N 370 -190 750 -190 {
lab=B9}
N 410 -170 750 -170 {
lab=B10}
N 450 -150 750 -150 {
lab=B11}
N 490 -130 750 -130 {
lab=B12}
N 885 -420 885 -380 {
lab=VDD}
N 900 -60 900 -10 {
lab=VSS}
N 1200 -235 1230 -235 {
lab=OUT-}
N 1170 -235 1200 -235 {
lab=OUT-}
N 1210 -255 1240 -255 {
lab=OUT+}
N 1140 -235 1170 -235 {
lab=OUT-}
N 1140 -255 1210 -255 {
lab=OUT+}
N 1070 -235 1140 -235 {
lab=OUT-}
N 1120 -255 1140 -255 {
lab=OUT+}
N 1070 -235 1070 -230 {
lab=OUT-}
N 915 -405 915 -380 {
lab=SEL_L}
N 675 -110 750 -110 {
lab=ITAIL}
N 1050 -230 1070 -230 {
lab=OUT-}
N 1050 -255 1120 -255 {
lab=OUT+}
N -950 -650 -950 -620 {
lab=#net1}
N -950 -560 -950 -530 {
lab=VSS}
N -910 -630 -910 -600 {
lab=#net2}
N -910 -540 -910 -510 {
lab=VSS}
N -870 -610 -870 -580 {
lab=#net3}
N -870 -520 -870 -490 {
lab=VSS}
N -830 -590 -830 -560 {
lab=#net4}
N -830 -500 -830 -470 {
lab=VSS}
N -790 -570 -790 -540 {
lab=#net5}
N -790 -480 -790 -450 {
lab=VSS}
N -750 -550 -750 -520 {
lab=#net6}
N -750 -460 -750 -430 {
lab=VSS}
N -710 -530 -710 -500 {
lab=#net7}
N -710 -440 -710 -410 {
lab=VSS}
N -670 -510 -670 -480 {
lab=#net8}
N -670 -420 -670 -390 {
lab=VSS}
N -630 -490 -630 -460 {
lab=#net9}
N -630 -400 -630 -370 {
lab=VSS}
N -590 -470 -590 -440 {
lab=#net10}
N -590 -380 -590 -350 {
lab=VSS}
N -550 -450 -550 -420 {
lab=#net11}
N -550 -360 -550 -330 {
lab=VSS}
N -510 -430 -510 -400 {
lab=#net12}
N -510 -340 -510 -310 {
lab=VSS}
N 910 -490 910 -460 {
lab=SEL_L}
N 910 -580 910 -550 {
lab=VSS}
N 910 -460 915 -460 {
lab=SEL_L}
N 915 -460 915 -405 {
lab=SEL_L}
C {devices/vsource.sym} 50 -480 0 0 {name=V1 value=0}
C {devices/vsource.sym} 110 -480 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 50 -420 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 50 -530 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 -530 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 110 -430 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 170 -230 0 0 {name=V6 value="pulse(0 3.3 0 10p 10p 400n 800n)"}
C {devices/lab_wire.sym} 170 -180 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 210 -210 0 0 {name=V7 value="pulse(0 3.3 0 10p 10p 800n 1.6u)"}
C {devices/lab_wire.sym} 210 -160 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 250 -190 0 0 {name=V8 value="pulse(0 3.3 0 10p 10p 1.6u 3.2u)"}
C {devices/lab_wire.sym} 250 -140 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 130 -250 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 200n 400n)"}
C {devices/lab_wire.sym} 130 -200 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 90 -270 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 100n 200n)"}
C {devices/lab_wire.sym} 90 -220 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 50 -290 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 50n 100n)"}
C {devices/lab_wire.sym} 50 -240 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 -60 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 450 -40 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 490 -20 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 370 -80 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 330 -150 0 0 {name=V13 value="pulse(0 3.3 0 10p 10p 6.4u 12.8u)"}
C {devices/lab_wire.sym} 330 -100 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 290 -170 0 0 {name=V14 value="pulse(0 3.3 0 10p 10p 3.2u 6.4u)"}
C {devices/lab_wire.sym} 290 -120 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 270 -480 0 0 {name=I1 value=100u}
C {devices/lab_wire.sym} 270 -540 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 270 -420 0 0 {name=p13 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 885 -420 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 900 -10 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 320 -530 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1485 -595 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_DAC_12_Bit_V3.spice"
.option set gmin=1e-12
.control
.options savecurrents
save all
op

tran 100n 6.4u
plot v(OUT+) v(OUT-)

*write DAC_12bit_TB.raw
.endc
"}
C {devices/lab_wire.sym} 685 -110 0 0 {name=p9 sig_type=std_logic lab=ITAIL}
C {devices/vsource.sym} 370 -130 0 0 {name=V9 value="pulse(0 3.3 0 10p 10p 12.8u 25.6u)"}
C {devices/vsource.sym} 410 -110 0 0 {name=V3 value="pulse(0 3.3 0 10p 10p 25.6u 51.2u)"}
C {devices/vsource.sym} 450 -90 0 0 {name=V4 value="pulse(0 3.3 0 10p 10p 51.2u 102.4u)"}
C {devices/vsource.sym} 490 -70 0 0 {name=V5 value="pulse(0 3.3 0 10p 10p 102.4u 204.8u)"}
C {devices/vsource.sym} -950 -590 0 0 {name=V15 value=3.3}
C {devices/lab_wire.sym} -950 -540 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -910 -570 0 0 {name=V16 value=3.3}
C {devices/lab_wire.sym} -910 -520 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -870 -550 0 0 {name=V17 value=3.3}
C {devices/lab_wire.sym} -870 -500 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -830 -530 0 0 {name=V18 value=3.3}
C {devices/lab_wire.sym} -830 -480 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -790 -510 0 0 {name=V19 value=3.3}
C {devices/lab_wire.sym} -790 -460 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -750 -490 0 0 {name=V20 value=3.3}
C {devices/lab_wire.sym} -750 -440 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -710 -470 0 0 {name=V21 value=3.3}
C {devices/lab_wire.sym} -710 -420 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -670 -450 0 0 {name=V22 value=3.3}
C {devices/lab_wire.sym} -670 -400 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -630 -430 0 0 {name=V23 value=3.3}
C {devices/lab_wire.sym} -630 -380 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -590 -410 0 0 {name=V24 value=3.3}
C {devices/lab_wire.sym} -590 -360 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -550 -390 0 0 {name=V25 value=3.3}
C {devices/lab_wire.sym} -550 -340 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -510 -370 0 0 {name=V26 value=3.3}
C {devices/lab_wire.sym} -510 -320 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 690 -350 0 0 {name=p37 sig_type=std_logic lab=B1}
C {devices/lab_wire.sym} 690 -330 0 0 {name=p38 sig_type=std_logic lab=B2}
C {devices/lab_wire.sym} 690 -310 0 0 {name=p39 sig_type=std_logic lab=B3}
C {devices/lab_wire.sym} 690 -290 0 0 {name=p40 sig_type=std_logic lab=B4}
C {devices/lab_wire.sym} 690 -270 0 0 {name=p41 sig_type=std_logic lab=B5}
C {devices/lab_wire.sym} 690 -250 0 0 {name=p42 sig_type=std_logic lab=B6}
C {devices/lab_wire.sym} 690 -230 0 0 {name=p43 sig_type=std_logic lab=B7}
C {devices/lab_wire.sym} 690 -210 0 0 {name=p44 sig_type=std_logic lab=B8}
C {devices/lab_wire.sym} 690 -190 0 0 {name=p45 sig_type=std_logic lab=B9}
C {devices/lab_wire.sym} 690 -170 0 0 {name=p46 sig_type=std_logic lab=B10}
C {devices/lab_wire.sym} 690 -150 0 0 {name=p47 sig_type=std_logic lab=B11}
C {devices/lab_wire.sym} 690 -130 0 0 {name=p48 sig_type=std_logic lab=B12}
C {devices/vsource.sym} 910 -520 2 0 {name=V27 value=3.3}
C {devices/lab_wire.sym} 910 -570 2 0 {name=p49 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 915 -445 0 0 {name=p50 sig_type=std_logic lab=SEL_L}
C {devices/lab_pin.sym} 1210 -255 0 0 {name=p24 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 1160 -235 0 0 {name=p26 sig_type=std_logic lab=OUT-}
C {top_level_DAC.sym} 900 -220 0 0 {name=x1}
C {devices/code_shown.sym} 670 -810 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
