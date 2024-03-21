v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 840 -570 840 -540 {
lab=GND}
N 840 -660 840 -630 {
lab=VSS}
N 900 -660 900 -630 {
lab=VDD}
N 900 -570 900 -540 {
lab=VSS}
N 1480 -470 1510 -470 {
lab=OUT-}
N 1510 -470 1530 -470 {
lab=OUT-}
N 1560 -490 1590 -490 {
lab=OUT+}
N 1590 -490 1610 -490 {
lab=OUT+}
N 820 -430 820 -400 {
lab=B4}
N 820 -340 820 -310 {
lab=VSS}
N 860 -410 860 -380 {
lab=B5}
N 860 -320 860 -290 {
lab=VSS}
N 900 -390 900 -360 {
lab=B6}
N 900 -300 900 -270 {
lab=VSS}
N 780 -450 780 -420 {
lab=B3}
N 780 -360 780 -330 {
lab=VSS}
N 740 -470 740 -440 {
lab=B2}
N 740 -380 740 -350 {
lab=VSS}
N 700 -490 700 -460 {
lab=B1}
N 700 -400 700 -370 {
lab=VSS}
N 760 -490 1150 -490 {
lab=B1}
N 800 -470 1150 -470 {
lab=B2}
N 840 -450 1150 -450 {
lab=B3}
N 880 -430 1150 -430 {
lab=B4}
N 920 -410 1150 -410 {
lab=B5}
N 960 -390 1150 -390 {
lab=B6}
N 1450 -470 1480 -470 {
lab=OUT-}
N 1450 -490 1560 -490 {
lab=OUT+}
N 1100 -260 1100 -230 {
lab=VDD}
N 1100 -350 1100 -320 {
lab=ITAIL}
N 1310 -590 1310 -520 {
lab=VDD}
N 1290 -270 1290 -200 {
lab=VSS}
N 1100 -350 1150 -350 {
lab=ITAIL}
N 1620 -540 1620 -490 {
lab=OUT+}
N 1610 -490 1620 -490 {
lab=OUT+}
N 1620 -630 1620 -600 {
lab=VDD}
N 1740 -620 1740 -610 {
lab=VDD}
N 1620 -620 1740 -620 {
lab=VDD}
N 1740 -480 1740 -470 {
lab=OUT-}
N 1530 -470 1740 -470 {
lab=OUT-}
N 1100 -590 1270 -590 {
lab=VDD}
N 1080 -590 1100 -590 {
lab=VDD}
N 1080 -660 1080 -590 {
lab=VDD}
N 1080 -630 1620 -630 {
lab=VDD}
N 900 -680 900 -660 {
lab=VDD}
N 900 -680 1080 -680 {
lab=VDD}
N 1080 -680 1080 -660 {
lab=VDD}
N 1100 -220 1100 -190 {
lab=VDD}
N 1100 -230 1100 -220 {
lab=VDD}
N 700 -490 760 -490 {
lab=B1}
N 430 -680 430 -660 {
lab=SEL_L}
N 430 -600 430 -550 {
lab=VSS}
N 1740 -610 1740 -570 {
lab=VDD}
N 1740 -510 1740 -480 {
lab=OUT-}
N 740 -470 800 -470 {
lab=B2}
N 780 -450 840 -450 {
lab=B3}
N 820 -430 880 -430 {
lab=B4}
N 860 -410 920 -410 {
lab=B5}
N 900 -390 960 -390 {
lab=B6}
N 1270 -590 1310 -590 {
lab=VDD}
N 1250 -560 1250 -520 {
lab=SEL_L}
N 430 -700 430 -680 {
lab=SEL_L}
N 1450 -320 1620 -320 {
lab=C32_U}
N 1620 -320 1620 -190 {
lab=C32_U}
N 1620 -190 1700 -190 {
lab=C32_U}
N 1450 -300 1600 -300 {
lab=C32_D}
N 1600 -300 1600 -90 {
lab=C32_D}
N 1600 -90 1700 -90 {
lab=C32_D}
N 1740 -160 1740 -120 {
lab=#net1}
N 1740 -190 1760 -190 {
lab=VSS}
N 1760 -190 1760 -90 {
lab=VSS}
N 1740 -90 1760 -90 {
lab=VSS}
N 1740 -90 1740 -60 {
lab=VSS}
N 1740 -60 1740 -40 {
lab=VSS}
N 1880 -240 1880 -200 {
lab=VDD}
N 1740 -300 1740 -220 {
lab=V_ext}
N 1740 -300 1880 -300 {
lab=V_ext}
C {devices/vsource.sym} 840 -600 0 0 {name=V1 value=0}
C {devices/vsource.sym} 900 -600 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 840 -540 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 840 -650 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 900 -650 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 900 -550 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 1210 -690 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 2050 -860 0 1 {name=NGSPICE only_toplevel=true
value="
.include "pex_LSBs_magic_TG.spice"
.option savecurrents
.control
save all
op

tran 10n 3.2u
plot v(OUT+) v(OUT-) 
write pex_LSBs_magic_TG_TB.raw
.endc
"}
C {devices/lab_wire.sym} 1490 -470 0 1 {name=p10 sig_type=std_logic lab=OUT-}
C {devices/lab_wire.sym} 1570 -490 0 1 {name=p5 sig_type=std_logic lab=OUT+}
C {devices/vsource.sym} 820 -370 0 0 {name=V6 value="pulse(0 3.3 0 10p 10p 400n 800n)"}
C {devices/lab_wire.sym} 820 -320 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 860 -350 0 0 {name=V7 value="pulse(0 3.3 0 10p 10p 800n 1.6u)"}
C {devices/lab_wire.sym} 860 -300 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 900 -330 0 0 {name=V8 value="pulse(0 3.3 0 10p 10p 1.6u 3.2u)"}
C {devices/lab_wire.sym} 900 -280 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 780 -390 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 200n 400n)"}
C {devices/lab_wire.sym} 780 -340 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 740 -410 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 100n 200n)"}
C {devices/lab_wire.sym} 740 -360 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 700 -430 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 50n 100n)"}
C {devices/lab_wire.sym} 700 -380 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 1100 -290 2 0 {name=I0 value=2.5u}
C {devices/lab_pin.sym} 1290 -220 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1620 -570 0 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1740 -540 0 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1040 -490 0 0 {name=p3 sig_type=std_logic lab=B1}
C {devices/lab_wire.sym} 1030 -470 0 0 {name=p7 sig_type=std_logic lab=B2}
C {devices/lab_wire.sym} 1040 -450 0 0 {name=p16 sig_type=std_logic lab=B3}
C {devices/lab_wire.sym} 1040 -430 0 0 {name=p18 sig_type=std_logic lab=B4}
C {devices/lab_wire.sym} 1040 -410 0 0 {name=p20 sig_type=std_logic lab=B5}
C {devices/lab_wire.sym} 1040 -390 0 0 {name=p21 sig_type=std_logic lab=B6}
C {devices/lab_pin.sym} 1100 -350 0 0 {name=p2 sig_type=std_logic lab=ITAIL}
C {devices/lab_wire.sym} 1100 -200 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 430 -630 0 0 {name=V9 value=3.3}
C {devices/lab_wire.sym} 430 -580 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {pex_LSBs_magic_TG.sym} 1300 -420 0 0 {name=x1}
C {devices/lab_pin.sym} 1250 -540 0 0 {name=p26 sig_type=std_logic lab=SEL_L}
C {devices/lab_pin.sym} 430 -690 0 1 {name=p28 sig_type=std_logic lab=SEL_L}
C {symbols/nfet_03v3.sym} 1720 -190 0 0 {name=M1
L=0.5u
W=19.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1720 -90 0 0 {name=M2
L=0.5u
W=19.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 1740 -40 3 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1580 -320 0 0 {name=p30 sig_type=std_logic lab=C32_U}
C {devices/lab_pin.sym} 1600 -240 0 0 {name=p32 sig_type=std_logic lab=C32_D}
C {devices/res.sym} 1880 -270 0 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1880 -210 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1800 -300 0 0 {name=p9 sig_type=std_logic lab=V_ext}
