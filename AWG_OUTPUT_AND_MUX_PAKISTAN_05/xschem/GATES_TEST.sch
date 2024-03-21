v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 110 -300 130 {
lab=GND}
N -300 30 -300 50 {
lab=B}
N -70 110 -70 130 {
lab=GND}
N 30 110 30 130 {
lab=GND}
N 30 30 30 50 {
lab=VDD}
N -70 10 -70 50 {
lab=VSS}
N -210 100 -210 120 {
lab=GND}
N -210 20 -210 40 {
lab=C}
N -300 130 -210 130 {
lab=GND}
N -210 120 -210 130 {
lab=GND}
N -250 130 -250 150 {
lab=GND}
N -360 110 -360 130 {
lab=GND}
N -360 130 -300 130 {
lab=GND}
N -360 30 -360 50 {
lab=A}
N 30 -180 70 -180 {
lab=A}
N 30 -160 70 -160 {
lab=B}
N 30 -140 70 -140 {
lab=C}
N 370 -140 410 -140 {
lab=S1}
N 370 -120 410 -120 {
lab=S2}
N 370 -100 410 -100 {
lab=S3}
N 370 -80 410 -80 {
lab=S4}
N 370 -60 410 -60 {
lab=S5}
N 370 -40 410 -40 {
lab=S6}
N 370 -160 410 -160 {
lab=VSS}
N 370 -180 410 -180 {
lab=VDD}
C {devices/vsource.sym} -500 190 0 0 {name=V3 value="pulse(0 0 0 100p 100p 50n 100n)"}
C {devices/vsource.sym} -70 80 0 0 {name=V4 value=0}
C {devices/gnd.sym} -70 130 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 30 80 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 30 130 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 30 30 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -70 30 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -580 30 0 0 {name=V6 value="pulse(0 0 0 100p 100p 50n 100n)"}
C {devices/lab_pin.sym} -300 30 0 0 {name=p12 sig_type=std_logic lab=B
}
C {devices/lab_pin.sym} -210 20 0 0 {name=p13 sig_type=std_logic lab=C
}
C {devices/gnd.sym} -250 150 0 0 {name=l3 lab=GND
value=1.5}
C {devices/vsource.sym} -450 150 0 0 {name=V1 value="pulse(0 0 0 100p 100p 50n 100n)"}
C {devices/lab_pin.sym} -360 30 0 0 {name=p1 sig_type=std_logic lab=A
}
C {devices/code_shown.sym} -170 310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 510 -360 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_PGA_DECODER_magic.spice"
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
dc V7 0 3 1
dc V8 0 3 1
tran 10p 100n
*let gain = (maximum(outp)-minimum(outn))/2e-3
*print gain

*ac dec 50 1 1e9
*let tf = OUTN/in2
*let gain = db(tf)
*let phase = (180/pi)*ph(tf)

*plot gain
*plot phase
*let myval=mean(out1)

*print myval
*let my_vect = [123 23 42 12 45 76]
*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 100p 100n

plot v(S1) 
plot v(S2) 
plot v(S3) 
plot v(S4) 
plot v(S5) 
plot v(S6)
plot v(in1) v(in2) v(in3) 
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
display all
.endc
"}
C {devices/lab_wire.sym} 410 -40 2 1 {name=p5 sig_type=std_logic lab=S6}
C {devices/lab_wire.sym} 410 -60 2 1 {name=p3 sig_type=std_logic lab=S5}
C {devices/lab_wire.sym} 410 -80 2 1 {name=p4 sig_type=std_logic lab=S4}
C {devices/lab_wire.sym} 410 -100 2 1 {name=p6 sig_type=std_logic lab=S3}
C {devices/lab_wire.sym} 410 -120 2 1 {name=p7 sig_type=std_logic lab=S2}
C {devices/lab_pin.sym} 30 -180 0 0 {name=p17 sig_type=std_logic lab=A
}
C {devices/lab_pin.sym} 30 -160 0 0 {name=p18 sig_type=std_logic lab=B
}
C {devices/lab_pin.sym} 30 -140 0 0 {name=p19 sig_type=std_logic lab=C
}
C {devices/lab_wire.sym} 405 -140 0 0 {name=p2 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} 400 -180 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 410 -160 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {pex_PGA_DECODER_magic.sym} -240 -180 0 0 {name=x1}
C {PGA_DECODER_4.sym} 220 -110 0 0 {name=x2}
C {devices/vsource.sym} -360 80 0 0 {name=V2 value=0}
C {devices/vsource.sym} -300 80 0 0 {name=V7 value=3.3}
C {devices/vsource.sym} -210 70 0 0 {name=V8 value=3.3}
