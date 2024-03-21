v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 190 540 210 {
lab=GND}
N 540 110 540 130 {
lab=VIN_P}
N 770 190 770 210 {
lab=GND}
N 870 190 870 210 {
lab=GND}
N 870 110 870 130 {
lab=VDD}
N 770 90 770 130 {
lab=VSS}
N 630 180 630 200 {
lab=GND}
N 630 100 630 120 {
lab=VIN_N}
N 540 210 630 210 {
lab=GND}
N 630 200 630 210 {
lab=GND}
N 590 210 590 230 {
lab=GND}
N 400 130 400 190 {
lab=IREF}
N 400 250 400 300 {
lab=VSS}
N 665 -150 705 -150 {
lab=VIN_P}
N 705 -150 715 -150 {
lab=VIN_P}
N 645 -130 715 -130 {
lab=VIN_N}
N 1050 200 1050 220 {
lab=GND}
N 1050 120 1050 140 {
lab=A}
N 1120 200 1120 220 {
lab=GND}
N 1120 120 1120 140 {
lab=B}
N 1190 200 1190 220 {
lab=GND}
N 1190 120 1190 140 {
lab=C}
N 940 180 940 200 {
lab=GND}
N 940 100 940 120 {
lab=VCM}
N 1050 -30 1050 -20 {
lab=GND}
N 1000 -30 1050 -30 {
lab=GND}
N 1000 -50 1000 -30 {
lab=GND}
N 1050 -30 1090 -30 {
lab=GND}
N 1090 -50 1090 -30 {
lab=GND}
N 645 -150 665 -150 {
lab=VIN_P}
N 1090 -140 1090 -110 {
lab=VOUT1}
N 920 -140 1090 -140 {
lab=VOUT1}
N 920 -80 955 -80 {
lab=VOUT2}
N 955 -115 955 -80 {
lab=VOUT2}
N 955 -115 1000 -115 {
lab=VOUT2}
N 1000 -115 1000 -110 {
lab=VOUT2}
N 715 -150 730 -150 {
lab=VIN_P}
N 715 -130 725 -130 {
lab=VIN_N}
N 725 -130 730 -130 {
lab=VIN_N}
N 695 -100 730 -100 {
lab=A}
N 695 -80 730 -80 {
lab=B}
N 695 -60 730 -60 {
lab=C}
N 820 -225 820 -190 {
lab=VDD}
N 790 -240 790 -200 {
lab=IREF}
N 820 -50 820 -15 {
lab=VSS}
N 780 -30 780 5 {
lab=VCM}
N 920 -160 920 -140 {
lab=VOUT1}
N 900 -160 920 -160 {
lab=VOUT1}
N 900 -80 920 -80 {
lab=VOUT2}
N 900 -90 900 -80 {
lab=VOUT2}
C {devices/vsource.sym} 770 160 0 0 {name=V4 value=0}
C {devices/gnd.sym} 770 210 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 870 160 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 870 210 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 870 110 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 770 110 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 400 220 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 400 150 0 0 {name=p8 sig_type=std_logic lab=IREF}
C {devices/gnd.sym} 590 230 0 0 {name=l3 lab=GND
value=1.5}
C {devices/lab_wire.sym} 400 290 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 685 -150 0 0 {name=p15 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} 685 -130 0 0 {name=p16 sig_type=std_logic lab=VIN_N
}
C {devices/vsource.sym} 1050 170 0 0 {name=V7 value=0}
C {devices/gnd.sym} 1050 220 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1120 170 0 0 {name=V8 value=3.3}
C {devices/gnd.sym} 1120 220 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 1190 170 0 0 {name=V9 value=0
}
C {devices/gnd.sym} 1190 220 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 940 150 0 0 {name=V12 value=1.6}
C {devices/gnd.sym} 940 200 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 1050 130 2 1 {name=p45 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 1120 130 2 1 {name=p46 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 1190 130 2 1 {name=p47 sig_type=std_logic lab=C}
C {devices/lab_wire.sym} 940 110 0 0 {name=p50 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 540 160 0 0 {name=V3 value="2 AC 1u"}
C {devices/vsource.sym} 630 150 0 0 {name=V6 value="2 AC 1u 180"}
C {devices/code_shown.sym} 1300 -220 0 0 {name=NGSPICE1 only_toplevel=true
value="
.control
set color0=white
set color1=black
save all

*.options savecurrents
save @m.x1.xm23.m0[vds] @m.x1.xm24.m0[vds] 
*@m.xm4.m0[vds]
*save @m.xm8.m0[vds]
*save @m.xm10.m0[vds]
*save @m.xm12.m0[vds]
*-@m.xm1.m0[vdsat]
*dc V6 0 0.1 0.01m

*tran 10p 100n
*let gain = (maximum(outp)-minimum(outn))/2e-3
*print gain

ac dec 50 1 1e9
let tf = VOUT1/VIN_P
let gain = db(tf)
let phase = (180/pi)*ph(tf)

plot gain
plot phase

*tran 0.1n 0.2u 
*plot v(in1)
*plot v(in2)

*plot v(VOUT1)
*plot v(VOUT2)

*let myval=mean(out1)

*print myval
*let my_vect = [123 23 42 12 45 76]
*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 100p 100n

*plot v(outp) v(outn) 
*plot v(in1) v(in2)
*plot v(i1)
*plot vdiff
let m1vds = minimum(@m.x1.xm23.m0[vds])
let m2vds = minimum(@m.x1.xm24.m0[vds])
*let m4vds = minimum(@m.xm4.m0[vds])
*let m8vds = maximum(@m.xm8.m0[vds])
*let m10vds = maximum(@m.xm10.m0[vds])
*let m12vds = minimum(@m.xm12.m0[vds])
print m1vds m2vds 
*m4vds m8vds m10vds m12vds
write PGA_2_TEST.raw
display all
.endc
"}
C {devices/capa.sym} 1000 -80 0 0 {name=C3
m=1
value=12p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1090 -80 0 0 {name=C4
m=1
value=12p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1050 -20 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 700 -100 0 1 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 700 -80 0 1 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_wire.sym} 705 -60 0 1 {name=p3 sig_type=std_logic lab=C}
C {devices/lab_wire.sym} 1035 -140 0 0 {name=p10 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} 980 -115 0 0 {name=p11 sig_type=std_logic lab=VOUT2}
C {devices/lab_wire.sym} 820 -25 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 820 -210 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 790 -235 0 0 {name=p12 sig_type=std_logic lab=IREF}
C {devices/lab_wire.sym} 780 -10 2 0 {name=p13 sig_type=std_logic lab=VCM}
C {PGA_FINAL.sym} 850 210 0 0 {name=x1}
C {devices/code_shown.sym} 690 300 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
C {devices/lab_wire.sym} 540 117 0 0 {name=p4 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} 630 107 0 0 {name=p6 sig_type=std_logic lab=VIN_N
}
