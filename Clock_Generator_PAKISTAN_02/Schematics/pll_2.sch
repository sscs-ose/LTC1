v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1820 -590 1820 -570 {
lab=VDD}
N 1820 -440 1820 -420 {
lab=VSS}
N 1730 -530 1750 -530 {
lab=#net1}
N 1730 -480 1750 -480 {
lab=Vdiv}
N 1890 -480 1910 -480 {
lab=PD}
N 1650 -530 1710 -530 {
lab=#net1}
N 1710 -530 1730 -530 {
lab=#net1}
N 1910 -530 2000 -530 {
lab=PU}
N 1910 -480 2000 -480 {
lab=PD}
N 2190 -530 2340 -530 {
lab=PU}
N 2190 -480 2340 -480 {
lab=PD}
N 1730 -480 1730 -350 {
lab=Vdiv}
N 1730 -250 1730 -220 {
lab=Vdiv}
N 1740 -220 2030 -220 {
lab=Vdiv}
N 3120 -510 3180 -510 {
lab=VCO_op}
N 3060 -510 3120 -510 {
lab=VCO_op}
N 3010 -510 3060 -510 {
lab=VCO_op}
N 2690 -490 2860 -490 {
lab=vcntl}
N 2830 -520 2870 -520 {
lab=VDD_VCO}
N 3010 -490 3040 -490 {
lab=VCO_op_bar}
N 1730 -350 1730 -250 {
lab=Vdiv}
N 1730 -220 1740 -220 {
lab=Vdiv}
N 1890 -530 1910 -530 {
lab=PU}
N 2000 -530 2190 -530 {
lab=PU}
N 2000 -480 2190 -480 {
lab=PD}
N 640 -400 640 -380 {
lab=GND}
N 430 -500 430 -490 {
lab=GND}
N 640 -510 660 -510 {
lab=Vref}
N 460 -710 460 -700 {
lab=VSS}
N 460 -790 460 -770 {
lab=VDD}
N 540 -790 540 -770 {
lab=VSS}
N 540 -710 540 -690 {
lab=GND}
N 2830 -540 2830 -520 {
lab=VDD_VCO}
N 2030 -220 2200 -220 {
lab=Vdiv}
N 2160 -200 2200 -200 {
lab=VDD}
N 2160 -180 2200 -180 {
lab=VSS}
N 2500 -200 2530 -200 {
lab=VCO_op}
N 2500 -180 2530 -180 {
lab=RST}
N 3180 -490 3180 -200 {
lab=VCO_op}
N 2530 -200 3180 -200 {
lab=VCO_op}
N 420 -270 420 -260 {
lab=VSS}
N 420 -350 420 -330 {
lab=RST}
N 3180 -510 3180 -490 {
lab=VCO_op}
N 2860 -490 2870 -490 {
lab=vcntl}
N 430 -560 490 -560 {
lab=VDD_VCO}
N 640 -510 640 -460 {
lab=Vref}
N 1410 -520 1430 -520 {
lab=#net2}
N 1430 -520 1440 -520 {
lab=#net2}
N 1410 -480 1420 -480 {
lab=VSS}
N 1410 -500 1420 -500 {
lab=VDD}
N 1090 -480 1110 -480 {
lab=RST}
N 1090 -540 1110 -540 {
lab=Vref}
N 1090 -520 1110 -520 {
lab=P0}
N 1090 -500 1110 -500 {
lab=P1}
N 1440 -520 1510 -520 {
lab=#net2}
N 720 -190 720 -180 {
lab=VSS}
N 720 -270 720 -250 {
lab=P0}
N 850 -190 850 -180 {
lab=VSS}
N 850 -270 850 -250 {
lab=P1}
N 1540 -620 1540 -590 {
lab=S0}
N 1560 -600 1560 -580 {
lab=VDD}
N 1560 -480 1560 -460 {
lab=VSS}
N 1590 -530 1650 -530 {
lab=#net1}
N 1490 -540 1510 -540 {
lab=Vref}
N 1490 -580 1490 -540 {
lab=Vref}
N 1490 -620 1490 -580 {
lab=Vref}
N 980 -180 980 -170 {
lab=VSS}
N 980 -260 980 -240 {
lab=S0}
N 2450 -590 2450 -570 {
lab=VDD}
N 2450 -410 2450 -390 {
lab=VSS}
N 2340 -530 2340 -510 {
lab=PU}
N 2340 -510 2340 -500 {
lab=PU}
N 2340 -500 2360 -500 {
lab=PU}
N 2340 -480 2360 -480 {
lab=PD}
N 2600 -360 2600 -340 {
lab=VSS}
N 2420 -590 2420 -570 {
lab=IPD+}
N 2420 -410 2420 -390 {
lab=IPD_}
N 2530 -490 2600 -490 {
lab=vcntl}
N 2600 -490 2690 -490 {
lab=vcntl}
N 700 -660 700 -640 {
lab=VSS}
N 770 -660 770 -640 {
lab=IPD+}
N 700 -740 700 -720 {
lab=IPD_}
N 770 -740 770 -720 {
lab=VDD}
N 2620 -490 2620 -470 {
lab=vcntl}
N 2580 -470 2590 -470 {
lab=VDD}
C {PFD.sym} 1530 -320 0 0 {name=x3}
C {devices/lab_wire.sym} 1820 -420 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1900 -220 3 0 {name=p28 sig_type=std_logic lab=Vdiv
}
C {devices/lab_pin.sym} 3180 -510 2 0 {name=p36 sig_type=std_logic lab=VCO_op
}
C {devices/vsource.sym} 640 -430 0 0 {name=VCNTL value="pulse(3.3 0 0 100p 100p 83.333334n 166.666667n)"}
C {devices/gnd.sym} 640 -380 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 430 -490 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 430 -530 0 0 {name=V2 value=" PWL( 0 0 100n 0 100.001n 3.3)"}
C {devices/code_shown.sym} 1620 -880 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 5n 20u 
plot v(VCO_op) v(VCO_op_bar)+4
plot v(vcntl)
plot v(Vdiv)
plot v(vref)
write pll_2.raw
.endc
"}
C {devices/vsource.sym} 460 -740 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 540 -740 0 0 {name=V3 value=0}
C {devices/lab_wire.sym} 540 -790 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 460 -700 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 460 -790 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 540 -690 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 2830 -540 0 0 {name=p2 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 3040 -490 2 0 {name=p5 sig_type=std_logic lab=VCO_op_bar
}
C {devices/lab_pin.sym} 2160 -200 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 2160 -180 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2530 -180 3 0 {name=p8 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 490 -560 1 0 {name=p11 sig_type=std_logic lab=VDD_VCO}
C {devices/lab_pin.sym} 650 -510 2 0 {name=p12 sig_type=std_logic lab=Vref
}
C {devices/lab_wire.sym} 420 -260 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 420 -350 0 0 {name=p17 sig_type=std_logic lab=RST}
C {devices/vsource.sym} 420 -300 0 0 {name=V5 value=" PWL( 0 0 10n 0 10.001n 3)"}
C {devices/lab_pin.sym} 2720 -490 1 0 {name=p14 sig_type=std_logic lab=vcntl
}
C {VCO_smb.sym} 3020 -500 0 0 {name=x2}
C {CLK_div_100.sym} 2350 -200 2 0 {name=x1}
C {devices/lab_pin.sym} 2160 -530 1 0 {name=p18 sig_type=std_logic lab=PU}
C {devices/lab_pin.sym} 2160 -480 1 0 {name=p19 sig_type=std_logic lab=PD}
C {devices/lab_wire.sym} 1420 -480 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1420 -500 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1090 -480 2 1 {name=p25 sig_type=std_logic lab=RST}
C {Prescalar_Divider.sym} 1260 -510 2 1 {name=x4}
C {devices/lab_wire.sym} 1090 -500 2 1 {name=p26 sig_type=std_logic lab=P1}
C {devices/lab_wire.sym} 1090 -520 2 1 {name=p27 sig_type=std_logic lab=P0}
C {devices/lab_pin.sym} 1090 -540 2 1 {name=p9 sig_type=std_logic lab=Vref
}
C {devices/vsource.sym} 720 -220 0 0 {name=V7 value=0}
C {devices/lab_wire.sym} 720 -180 0 0 {name=p22 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 720 -270 0 0 {name=p23 sig_type=std_logic lab=P0}
C {devices/vsource.sym} 850 -220 0 0 {name=V8 value=3.3}
C {devices/lab_wire.sym} 850 -180 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 850 -270 0 0 {name=p29 sig_type=std_logic lab=P1}
C {2x1_mux.sym} 1310 -410 0 0 {name=x5}
C {devices/lab_pin.sym} 1560 -600 2 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1560 -460 2 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1540 -620 0 0 {name=p32 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 1490 -600 2 1 {name=p33 sig_type=std_logic lab=Vref
}
C {devices/vsource.sym} 980 -210 0 0 {name=V4 value=3.3}
C {devices/lab_wire.sym} 980 -170 0 0 {name=p34 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 980 -260 0 0 {name=p35 sig_type=std_logic lab=S0}
C {devices/lab_pin.sym} 1820 -590 2 0 {name=p37 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 2450 -390 2 0 {name=p38 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2450 -590 2 0 {name=p39 sig_type=std_logic lab=VDD}
C {CP.sym} 1870 -290 0 0 {name=x6}
C {LF.sym} 2460 -310 0 0 {name=x7}
C {devices/lab_wire.sym} 2600 -340 2 0 {name=p40 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 2420 -580 0 0 {name=p41 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 2420 -390 0 0 {name=p42 sig_type=std_logic lab=IPD_}
C {devices/isource.sym} 700 -690 0 0 {name=I0 value=20u}
C {devices/isource.sym} 770 -690 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 700 -740 0 0 {name=p15 sig_type=std_logic lab=IPD_}
C {devices/lab_wire.sym} 770 -640 2 0 {name=p16 sig_type=std_logic lab=IPD+}
C {devices/lab_wire.sym} 700 -640 2 0 {name=p43 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 770 -740 2 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2580 -470 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 890 -1180 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
