v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 50 200 70 {
lab=GND}
N 200 -30 200 -10 {
lab=IN1}
N 430 50 430 70 {
lab=GND}
N 530 50 530 70 {
lab=GND}
N 530 -30 530 -10 {
lab=VDD}
N 430 -50 430 -10 {
lab=VSS}
N 290 40 290 60 {
lab=GND}
N 290 -40 290 -20 {
lab=IN2}
N 200 70 290 70 {
lab=GND}
N 290 60 290 70 {
lab=GND}
N 250 70 250 90 {
lab=GND}
N 60 -10 60 50 {
lab=IREF}
N 60 110 60 160 {
lab=VSS}
N 550 -160 550 -150 {
lab=GND}
N 500 -160 550 -160 {
lab=GND}
N 500 -180 500 -160 {
lab=GND}
N 550 -160 590 -160 {
lab=GND}
N 590 -180 590 -160 {
lab=GND}
N 500 -260 500 -240 {
lab=OUTP}
N 670 50 670 70 {
lab=GND}
N 670 -30 670 -10 {
lab=VCM}
N 250 -330 250 -320 {
lab=IN1}
N 240 -300 250 -300 {
lab=IN2}
N 240 -320 250 -320 {
lab=IN1}
N 260 -40 290 -40 {
lab=IN2}
N 330 -420 330 -390 {
lab=VDD}
N 360 -420 360 -390 {
lab=IREF}
N 350 -250 350 -220 {
lab=VSS}
N 370 -250 370 -220 {
lab=VCM}
N 430 -340 590 -340 {
lab=OUTN}
N 590 -340 590 -240 {
lab=OUTN}
N 430 -280 500 -280 {
lab=OUTP}
N 500 -280 500 -260 {
lab=OUTP}
N 250 -330 290 -330 {
lab=IN1}
N 250 -300 290 -300 {
lab=IN2}
N 290 -300 290 -290 {
lab=IN2}
C {devices/vsource.sym} 200 20 0 0 {name=V3 value="0.5 AC 1u"}
C {devices/vsource.sym} 430 20 0 0 {name=V4 value=0}
C {devices/gnd.sym} 430 70 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 530 20 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 530 70 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 530 -30 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 430 -30 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 290 10 0 0 {name=V6 value="0.5 AC 1u 180"}
C {devices/isource.sym} 60 80 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 60 10 0 0 {name=p8 sig_type=std_logic lab=IREF}
C {devices/gnd.sym} 250 90 0 0 {name=l3 lab=GND
value=1.5}
C {devices/code_shown.sym} 800 -550 0 0 {name=NGSPICE only_toplevel=true
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

*tran 150p 300n
*let gain = (maximum(outp)-minimum(outn))/2e-3
*print gain


*plot v(outp) v(outn) 
*plot v(in1) v(in2)
*plot v(buff_in1) v(buff_in2)

ac dec 50 1 1e9
let tf = OUTN/IN2
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
C {devices/lab_pin.sym} 240 -320 0 0 {name=p1 sig_type=std_logic lab=IN1
}
C {devices/capa.sym} 500 -210 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 590 -210 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 550 -150 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 60 150 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -280 0 0 {name=p9 sig_type=std_logic lab=OUTP}
C {devices/lab_wire.sym} 490 -340 0 0 {name=p10 sig_type=std_logic lab=OUTN}
C {devices/vsource.sym} 670 20 0 0 {name=V1 value=1.6}
C {devices/gnd.sym} 670 70 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 670 -30 0 0 {name=p5 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 245 -300 0 0 {name=p24 sig_type=std_logic lab=IN2
}
C {devices/lab_pin.sym} 200 -30 0 0 {name=p2 sig_type=std_logic lab=IN1
}
C {devices/lab_pin.sym} 275 -40 0 0 {name=p25 sig_type=std_logic lab=IN2
}
C {filter_final.sym} 380 -150 0 0 {name=x3}
C {devices/lab_wire.sym} 350 -230 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 370 -230 0 1 {name=p27 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} 330 -400 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 360 -400 0 1 {name=p31 sig_type=std_logic lab=IREF}
C {devices/code_shown.sym} 0 320 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
