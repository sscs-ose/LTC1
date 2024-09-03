v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2230 -710 2230 -660 {
lab=IBIAS}
N 2290 -710 2290 -660 {
lab=VDD}
N 2350 -710 2350 -660 {
lab=VSS}
N 2410 -580 2480 -580 {
lab=VOUT_N}
N 2410 -540 2480 -540 {
lab=VOUT_P}
N 2130 -520 2170 -520 {
lab=VCM}
N 2130 -520 2130 -460 {
lab=VCM}
N 2090 -560 2170 -560 {
lab=VOUT_OPAMP_P}
N 2130 -600 2170 -600 {
lab=VOUT_OPAMP_N}
N 2450 -780 2450 -580 {
lab=VOUT_N}
N 1920 -780 2450 -780 {
lab=VOUT_N}
N 2460 -540 2460 -350 {
lab=VOUT_P}
N 2460 -350 2460 -300 {
lab=VOUT_P}
N 1510 -140 1510 -120 {
lab=GND}
N 1510 -220 1510 -200 {
lab=VIN_P}
N 1740 -140 1740 -120 {
lab=GND}
N 1840 -140 1840 -120 {
lab=GND}
N 1840 -220 1840 -200 {
lab=VDD}
N 1740 -240 1740 -200 {
lab=VSS}
N 1600 -150 1600 -130 {
lab=GND}
N 1600 -230 1600 -210 {
lab=VIN_N}
N 1510 -120 1600 -120 {
lab=GND}
N 1600 -130 1600 -120 {
lab=GND}
N 1560 -120 1560 -100 {
lab=GND}
N 1370 -200 1370 -140 {
lab=IBIAS}
N 1370 -80 1370 -30 {
lab=VSS}
N 1980 -140 1980 -120 {
lab=GND}
N 1980 -220 1980 -200 {
lab=VCM}
N 1570 -230 1600 -230 {
lab=VIN_N}
N 1910 -620 1940 -620 {
lab=VDD}
N 1910 -560 2090 -560 {
lab=VOUT_OPAMP_P}
N 1910 -580 2130 -580 {
lab=VOUT_OPAMP_N}
N 2130 -600 2130 -580 {
lab=VOUT_OPAMP_N}
N 1920 -780 1920 -600 {
lab=VOUT_N}
N 1910 -600 1920 -600 {
lab=VOUT_N}
N 1920 -300 2460 -300 {
lab=VOUT_P}
N 1920 -540 1920 -300 {
lab=VOUT_P}
N 1910 -540 1920 -540 {
lab=VOUT_P}
N 1560 -620 1610 -620 {
lab=VIN_N}
N 1560 -600 1610 -600 {
lab=VIN_P}
C {devices/iopin.sym} 1460 -1040 0 0 {name=p21 lab=VDD}
C {devices/iopin.sym} 1460 -1010 0 0 {name=p22 lab=VSS}
C {devices/opin.sym} 1450 -950 0 0 {name=p36 lab=VOUT_N}
C {devices/opin.sym} 1450 -920 0 0 {name=p37 lab=VOUT_P}
C {devices/ipin.sym} 1510 -885 0 0 {name=p14 lab=VIN_N
}
C {devices/ipin.sym} 1510 -860 0 0 {name=p72 lab=VIN_P}
C {devices/ipin.sym} 1510 -835 0 0 {name=p8 lab=IBIAS
}
C {devices/ipin.sym} 1510 -805 0 0 {name=p9 lab=VCM
}
C {devices/lab_pin.sym} 2230 -700 2 0 {name=p1 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 2290 -700 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2350 -700 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2130 -480 2 0 {name=p6 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 2470 -580 2 0 {name=p18 sig_type=std_logic lab=VOUT_N}
C {devices/lab_pin.sym} 2470 -540 2 0 {name=p19 sig_type=std_logic lab=VOUT_P}
C {devices/vsource.sym} 1510 -170 0 0 {name=V3 value="0.5 AC 1u"}
C {devices/vsource.sym} 1740 -170 0 0 {name=V4 value=0}
C {devices/gnd.sym} 1740 -120 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1840 -170 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 1840 -120 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 1840 -220 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1740 -220 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1600 -180 0 0 {name=V6 value="0.5 AC 1u 180"}
C {devices/isource.sym} 1370 -110 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 1370 -180 0 0 {name=p25 sig_type=std_logic lab=IBIAS}
C {devices/gnd.sym} 1560 -100 0 0 {name=l3 lab=GND
value=1.5}
C {devices/lab_wire.sym} 1370 -40 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1980 -170 0 0 {name=V1 value=1.6}
C {devices/gnd.sym} 1980 -120 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1980 -220 0 0 {name=p31 sig_type=std_logic lab=VCM}
C {devices/code_shown.sym} 2700 710 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
C {devices/lab_pin.sym} 1510 -210 0 0 {name=p32 sig_type=std_logic lab=VIN_P
}
C {devices/lab_pin.sym} 1585 -230 0 0 {name=p33 sig_type=std_logic lab=VIN_N
}
C {devices/code_shown.sym} 2910 -860 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_Folded_Diff_Op_Amp_Layout.spice"
.include "pex_filter_res_magic.spice"
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

*tran 150p 300n
*let gain = (maximum(outp)-minimum(outn))/2e-3
*print gain


*plot v(outp) v(outn) 
*plot v(in1) v(in2)
*plot v(buff_in1) v(buff_in2)

ac dec 50 1 1e9
let tf = VOUT_N/VIN_P
let gain = db(tf)
let phase = (180/pi)*ph(tf)

*let tf1 = OUTp/IN1
*let gain1 = db(tf1)
*let phase1 = (180/pi)*ph(tf1)

plot gain
plot phase

*plot gain1
*plot phase1
*let myval=mean(out1)

*print myval
*let my_vect = [123 23 42 12 45 76]
*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 100p 100n


*plot v(i1)
*plot vdiff
let m1vds = minimum(@m.x1.xm23.m0[vds])
let m2vds = minimum(@m.x1.xm24.m0[vds])
*let m4vds = minimum(@m.xm4.m0[vds])
*let m8vds = maximum(@m.xm8.m0[vds])
*let m10vds = maximum(@m.xm10.m0[vds])
*let m12vds = minimum(@m.xm12.m0[vds])
*print m1vds m2vds 
*m4vds m8vds m10vds m12vds
*display all
.endc
"}
C {devices/lab_pin.sym} 1930 -620 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1570 -600 0 0 {name=p3 sig_type=std_logic lab=VIN_P
}
C {devices/lab_pin.sym} 1575 -620 0 0 {name=p7 sig_type=std_logic lab=VIN_N
}
C {pex_filter_res_magic.sym} 1760 -580 0 0 {name=x2}
C {devices/lab_pin.sym} 2020 -560 3 0 {name=p10 sig_type=std_logic lab=VOUT_OPAMP_P}
C {devices/lab_pin.sym} 2020 -580 1 0 {name=p11 sig_type=std_logic lab=VOUT_OPAMP_N}
C {Folded_Cascode_Diff_PEX.sym} 2320 -520 0 0 {name=x1}
