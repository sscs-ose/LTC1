v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 390 10 410 {
lab=GND}
N 110 390 110 410 {
lab=GND}
N 110 310 110 330 {
lab=VDD}
N 10 290 10 330 {
lab=VSS}
N 210 370 210 390 {
lab=GND}
N 210 290 210 310 {
lab=S_PGA_1}
N -440 -220 -440 -190 {
lab=VSS}
N -510 -280 -510 -200 {
lab=in_P}
N -510 -200 -510 -190 {
lab=in_P}
N -440 -320 -440 -280 {
lab=in_N}
N -440 -340 -440 -320 {
lab=in_N}
N -510 -380 -510 -340 {
lab=VDD}
N 140 -170 140 -110 {
lab=VDD}
N 280 380 280 400 {
lab=GND}
N 280 280 280 320 {
lab=S_PGA_2}
N 360 380 360 400 {
lab=GND}
N 360 300 360 320 {
lab=S_PGA_3}
N 420 380 420 400 {
lab=GND}
N 420 280 420 320 {
lab=ENA}
N 500 380 500 400 {
lab=GND}
N 500 280 500 320 {
lab=S0}
N 580 380 580 400 {
lab=GND}
N 580 300 580 320 {
lab=S1}
N 650 380 650 400 {
lab=GND}
N 650 280 650 320 {
lab=S2}
N 1010 -80 1060 -80 {
lab=MUX_out1}
N 1060 -80 1210 -80 {
lab=MUX_out1}
N 1210 -80 1210 -40 {
lab=MUX_out1}
N 1010 -60 1120 -60 {
lab=MUX_out2}
N 1120 -60 1120 -40 {
lab=MUX_out2}
N 1170 60 1170 70 {
lab=GND}
N 1120 60 1170 60 {
lab=GND}
N 1120 40 1120 60 {
lab=GND}
N 1170 60 1210 60 {
lab=GND}
N 1210 40 1210 60 {
lab=GND}
N 1120 -40 1120 -20 {
lab=MUX_out2}
N 1210 -40 1210 -20 {
lab=MUX_out1}
N 710 -330 710 -290 {
lab=VDD}
N 860 -250 1000 -250 {
lab=MUX_out1}
N 1000 -250 1000 -80 {
lab=MUX_out1}
N 1000 -80 1020 -80 {
lab=MUX_out1}
N 960 -60 1010 -60 {
lab=MUX_out2}
N 960 -230 960 -60 {
lab=MUX_out2}
N 860 -230 960 -230 {
lab=MUX_out2}
N 510 -100 560 -100 {
lab=S0}
N 510 -80 560 -80 {
lab=S1}
N 510 -60 560 -60 {
lab=S2}
N 510 -40 560 -40 {
lab=ENA}
N 520 40 560 40 {
lab=S_PGA_1}
N 510 40 520 40 {
lab=S_PGA_1}
N 510 60 560 60 {
lab=S_PGA_2}
N 510 80 560 80 {
lab=S_PGA_3}
N 580 280 580 300 {
lab=S1}
N 360 280 360 300 {
lab=S_PGA_3}
N 210 280 210 290 {
lab=S_PGA_1}
N 710 240 710 270 {
lab=VSS}
N 140 -50 140 -30 {
lab=G_SINK_UP}
N 140 -40 190 -40 {
lab=G_SINK_UP}
N 190 -40 190 0 {
lab=G_SINK_UP}
N 180 -0 190 0 {
lab=G_SINK_UP}
N 140 30 140 50 {
lab=G_SINK_DOWN}
N 140 50 190 50 {
lab=G_SINK_DOWN}
N 190 50 190 80 {
lab=G_SINK_DOWN}
N 180 80 190 80 {
lab=G_SINK_DOWN}
N 180 80 210 80 {
lab=G_SINK_DOWN}
N 190 -0 210 -0 {
lab=G_SINK_UP}
N 120 80 140 80 {
lab=VSS}
N 120 -0 120 80 {
lab=VSS}
N 120 -0 140 -0 {
lab=VSS}
N 120 80 120 130 {
lab=VSS}
N 120 130 140 130 {
lab=VSS}
N 140 110 140 130 {
lab=VSS}
N 490 -180 560 -180 {
lab=G_SINK_DOWN}
N 490 -160 560 -160 {
lab=G_SINK_UP}
N 510 -240 560 -240 {
lab=in_P}
N 510 -220 560 -220 {
lab=in_N}
C {devices/vsource.sym} 10 360 0 0 {name=V4 value=0}
C {devices/gnd.sym} 10 410 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 110 360 0 0 {name=V5 value=3.3}
C {devices/gnd.sym} 110 410 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 110 310 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 10 310 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 210 340 0 0 {name=V1 value=1.65}
C {devices/gnd.sym} 210 390 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -1010 -320 0 0 {name=NGSPICE only_toplevel=true
value="
.control
set color0=white
set color1=black
save all

*.options savecurrents
*save @m.x1.xm23.m0[vds] @m.x1.xm24.m0[vds] 
*@m.xm4.m0[vds]
*save @m.xm8.m0[vds]
*save @m.xm10.m0[vds]
*save @m.xm12.m0[vds]
*-@m.xm1.m0[vdsat]
*dc V6 0 0.1 0.01m

tran 1n 510n
plot v(in_P) v(in_N)
plot v(buff_out1) v(buff_out2)
plot v(filter_out1) v(filter_out2)
plot v(PGA_out1) v(PGA_out2)
plot v(MUX_out1) v(MUX_out2)

*let gain = (maximum(outp)-minimum(outn))/2e-3
*print gain
*plot v(outp) v(outn) 
*plot v(in1) v(in2)
*plot v(buff_in1) v(buff_in2)
*ac dec 50 1 1e9
*let tf = OUTN/IN2
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
C {devices/lab_wire.sym} -440 -200 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -510 -360 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/isource.sym} -440 -250 0 0 {name=I4 value="pwl(0 0 1n 0 1.1n 1m 101n 1m 101.1n -1m 201n -1m 201.1n 1m 301n 1m 301.1n -1m 401n -1m 401.1n 1m 501n 1m 501.1n 0)"}
C {devices/isource.sym} 140 -80 0 0 {name=I2 value=20u}
C {devices/lab_wire.sym} -510 -220 0 0 {name=p16 sig_type=std_logic lab=in_P}
C {devices/lab_wire.sym} -440 -320 0 0 {name=p21 sig_type=std_logic lab=in_N}
C {devices/vsource.sym} 280 350 0 0 {name=V8 value=3.3}
C {devices/gnd.sym} 280 400 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 360 350 0 0 {name=V9 value=3.3}
C {devices/gnd.sym} 360 400 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 420 350 0 0 {name=V10 value=3.3}
C {devices/gnd.sym} 420 400 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 500 350 0 0 {name=V11 value=0}
C {devices/gnd.sym} 500 400 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 500 300 0 0 {name=p35 sig_type=std_logic lab=S0}
C {devices/vsource.sym} 580 350 0 0 {name=V12 value=0}
C {devices/gnd.sym} 580 400 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 580 300 0 0 {name=p36 sig_type=std_logic lab=S1}
C {devices/vsource.sym} 650 350 0 0 {name=V13 value=0}
C {devices/gnd.sym} 650 400 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 650 300 0 0 {name=p37 sig_type=std_logic lab=S2}
C {devices/capa.sym} 1120 10 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1210 10 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1170 70 0 0 {name=l11 lab=GND}
C {devices/isource.sym} -510 -310 0 0 {name=I3 value="pwl(0 0 1n 0 1.1n 1m 101n 1m 101.1n -1m 201n -1m 201.1n 1m 301n 1m 301.1n -1m 401n -1m 401.1n 1m 501n 1m 501.1n 0)"}
C {devices/lab_wire.sym} 1160 -80 0 0 {name=p49 sig_type=std_logic lab=MUX_out1}
C {devices/lab_wire.sym} 1120 -60 0 0 {name=p50 sig_type=std_logic lab=MUX_out2}
C {devices/isource.sym} -780 -380 0 0 {name=I5 value="pwl(0 0 10n 0 10.1n 125u 20n 125u 20.1n 250u 30n 250u 30.1n 375u 40n 375u 40.1n 500u 50n 500u 50.1n 375u 60n 375u 60.1n 250u 70n 250u 70.1n 125u 80n 125u 80.1n 0 90n 0  90.1n -125u 100n -125u 100.1n -250u 110n -250u 110.1n -375u 120n -375u 120.1n -500u 130n -500u 130.1n -375u 140n -375u 140.1n -250u 150n -250u 150.1n -125u 160n -125u 160.1n 0 170n 0) "}
C {AWG_MUX_FINAL.sym} 710 80 0 0 {name=x1}
C {devices/lab_wire.sym} 420 300 0 0 {name=p1 sig_type=std_logic lab=ENA}
C {devices/lab_wire.sym} 530 -100 0 0 {name=p2 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} 530 -80 0 0 {name=p5 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} 530 -60 0 0 {name=p6 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} 530 -40 0 0 {name=p9 sig_type=std_logic lab=ENA}
C {devices/lab_wire.sym} 210 290 0 0 {name=p10 sig_type=std_logic lab=S_PGA_1}
C {devices/lab_wire.sym} 280 300 0 0 {name=p11 sig_type=std_logic lab=S_PGA_2}
C {devices/lab_wire.sym} 360 300 0 0 {name=p13 sig_type=std_logic lab=S_PGA_3}
C {devices/lab_wire.sym} 540 60 0 0 {name=p15 sig_type=std_logic lab=S_PGA_2}
C {devices/lab_wire.sym} 540 40 0 0 {name=p17 sig_type=std_logic lab=S_PGA_1}
C {devices/lab_wire.sym} 540 80 0 0 {name=p14 sig_type=std_logic lab=S_PGA_3}
C {devices/lab_wire.sym} 710 270 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 710 -310 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 -150 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 160 0 0 1 {name=M7
L=0.5u
W=4.8u
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
C {symbols/nfet_03v3.sym} 160 80 0 1 {name=M1
L=0.5u
W=4.8u
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
C {devices/lab_wire.sym} 130 130 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 -160 0 0 {name=p7 sig_type=std_logic lab=G_SINK_UP}
C {devices/lab_wire.sym} 520 -180 0 0 {name=p8 sig_type=std_logic lab=G_SINK_DOWN}
C {devices/lab_wire.sym} 200 0 0 1 {name=p20 sig_type=std_logic lab=G_SINK_UP}
C {devices/lab_wire.sym} 200 80 0 1 {name=p23 sig_type=std_logic lab=G_SINK_DOWN}
C {devices/lab_wire.sym} 530 -240 0 0 {name=p26 sig_type=std_logic lab=in_P}
C {devices/lab_wire.sym} 530 -220 0 0 {name=p27 sig_type=std_logic lab=in_N}
C {devices/code_shown.sym} -610 320 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
