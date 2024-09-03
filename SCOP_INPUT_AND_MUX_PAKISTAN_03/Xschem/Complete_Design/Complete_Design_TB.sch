v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 430 -130 460 {
lab=TRS}
N -130 520 -130 550 {
lab=VSS}
N -40 430 -40 460 {
lab=MUX_1}
N -40 520 -40 550 {
lab=VSS}
N 60 430 60 460 {
lab=MUX_2}
N 60 520 60 550 {
lab=VSS}
N 160 430 160 460 {
lab=MUX_3}
N 160 520 160 550 {
lab=VSS}
N 420 430 420 460 {
lab=PGA_1}
N 420 520 420 550 {
lab=VSS}
N 420 610 420 640 {
lab=PGA_2}
N 420 700 420 730 {
lab=VSS}
N 420 770 420 800 {
lab=PGA_3}
N 420 860 420 890 {
lab=VSS}
N 190 720 190 740 {
lab=GND}
N 190 630 190 660 {
lab=VSS}
N 280 630 280 660 {
lab=VDD}
N 280 720 280 750 {
lab=VSS}
N -470 630 -470 660 {
lab=IN1_1}
N -470 720 -470 750 {
lab=VSS}
N -340 630 -340 660 {
lab=IN5_1}
N -340 720 -340 750 {
lab=VSS}
N -210 630 -210 660 {
lab=IN1_2}
N -210 720 -210 750 {
lab=VSS}
N -80 630 -80 660 {
lab=IN5_2}
N -80 720 -80 750 {
lab=VSS}
N -470 750 -340 750 {
lab=VSS}
N -400 750 -400 780 {
lab=VSS}
N -210 750 -80 750 {
lab=VSS}
N -140 750 -140 780 {
lab=VSS}
N -70 230 -70 270 {
lab=TRS}
N -90 230 -90 270 {
lab=EN}
N -210 70 -180 70 {
lab=MUX_1}
N -210 90 -180 90 {
lab=MUX_2}
N -210 110 -180 110 {
lab=MUX_3}
N -210 150 -180 150 {
lab=PGA_1}
N -210 170 -180 170 {
lab=PGA_2}
N -210 190 -180 190 {
lab=PGA_3}
N -200 430 -200 460 {
lab=EN}
N -200 520 -200 550 {
lab=VSS}
N -40 -340 -40 -290 {
lab=VDD}
N -20 -340 -20 -290 {
lab=VSS}
N -670 390 -670 420 {
lab=G_sink_dn}
N -670 360 -640 360 {
lab=VSS}
N -640 360 -640 500 {
lab=VSS}
N -670 500 -640 500 {
lab=VSS}
N -670 480 -670 500 {
lab=VSS}
N -670 450 -640 450 {
lab=VSS}
N -670 500 -670 520 {
lab=VSS}
N -730 450 -710 450 {
lab=G_sink_dn}
N -730 410 -730 450 {
lab=G_sink_dn}
N -730 410 -670 410 {
lab=G_sink_dn}
N -730 360 -710 360 {
lab=G_sink_up}
N -730 310 -730 360 {
lab=G_sink_up}
N -730 310 -670 310 {
lab=G_sink_up}
N -670 310 -670 330 {
lab=G_sink_up}
N -670 200 -670 240 {
lab=VDD}
N -670 300 -670 310 {
lab=G_sink_up}
N 10 230 10 270 {
lab=G_sink_up}
N 30 230 30 270 {
lab=G_sink_dn}
N -240 -260 -180 -260 {
lab=IN1_1}
N -240 -240 -180 -240 {
lab=IN1_2}
N -240 -100 -180 -100 {
lab=IN5_1}
N -240 -80 -180 -80 {
lab=IN5_2}
N 120 -170 190 -170 {
lab=OUT_P}
N 120 -150 190 -150 {
lab=OUT_N}
N 320 -100 320 -60 {
lab=VSS}
N 410 -100 410 -60 {
lab=VSS}
N 320 -200 320 -160 {
lab=OUT_P}
N 410 -200 410 -160 {
lab=OUT_N}
C {devices/code_shown.sym} 780 -330 0 0 {name=NGSPICE only_toplevel=true
value="
.control
*save all
*.options savecurrents
save all 
save @m.x1.xm1.m0[vds]
+ @m.x1.xm4.m0[vds]
+ @m.x1.xm7.m0[vds]
+ @m.x1.xm5.m0[vds]

*tran 100n 20u
*dc V1 0 3 10m
*plot v(OUT_P) v(OUT_N)
*plot v(IN1_1) v(IN1_2)
*plot v(IN1P) v(IN1N)
*print mean(@m.xm2.m0[vds]) mean(@m.xm4.m0[vds]) mean(@m.xm7.m0[vds])

ac dec 50 1 1e9
let tf = OUT_P/IN1_1
let gain = db(tf)
let phase = (180/pi)*ph(tf)

plot gain
plot phase

*write pmos_nmos.raw
*let vdiff = @m.xm1.m0[vdsat]+vds
*plot @m.xm1.m0[vdsat]
*tran 1u 2m
*let gain = (maximum(out1)-minimum(out2) )* 1000
*print vbb

let m1vds = minimum(@m.x1.xm1.m0[vds])
let m4vds = minimum(@m.x1.xm4.m0[vds])
let m5vds = minimum(@m.x1.xm5.m0[vds])
let m7vds = minimum(@m.x1.xm7.m0[vds])
*let m10vds = maximum(@m.xm10.m0[vds])
*let m12vds = minimum(@m.xm12.m0[vds])
print m1vds m4vds m5vds m7vds 
*m10vds m12vds

*plot vdiff
display all
.endc
"}
C {comple_PICO.sym} -30 -30 0 0 {name=x1}
C {devices/vsource.sym} -130 490 0 0 {name=V4 value=0}
C {devices/lab_pin.sym} -130 440 0 1 {name=p46 sig_type=std_logic lab=TRS}
C {devices/lab_pin.sym} -130 540 0 1 {name=p47 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -40 490 0 0 {name=V5 value=0}
C {devices/lab_pin.sym} -40 440 0 1 {name=p48 sig_type=std_logic lab=MUX_1}
C {devices/lab_pin.sym} -40 540 0 1 {name=p49 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 60 490 0 0 {name=V6 value=0}
C {devices/lab_pin.sym} 60 540 0 1 {name=p51 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 160 490 0 0 {name=V7 value=0}
C {devices/lab_pin.sym} 160 540 0 1 {name=p53 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 420 490 0 0 {name=V12 value=3.3}
C {devices/lab_pin.sym} 420 440 0 1 {name=p57 sig_type=std_logic lab=PGA_1}
C {devices/lab_pin.sym} 420 540 0 1 {name=p61 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 420 670 0 0 {name=V13 value=3.3}
C {devices/lab_pin.sym} 420 720 0 1 {name=p63 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 420 830 0 0 {name=V14 value=3.3}
C {devices/lab_pin.sym} 420 880 0 1 {name=p65 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 190 690 0 0 {name=V1 value=0}
C {devices/gnd.sym} 190 740 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 190 640 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 280 690 0 0 {name=V2 value=3.3}
C {devices/lab_pin.sym} 280 640 0 1 {name=p34 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 280 740 0 1 {name=p35 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -470 690 0 0 {name=V8 value="0.2 AC 1m"}
C {devices/lab_pin.sym} -470 640 0 1 {name=p54 sig_type=std_logic lab=IN1_1}
C {devices/lab_pin.sym} -340 640 0 1 {name=p56 sig_type=std_logic lab=IN5_1}
C {devices/vsource.sym} -210 690 0 0 {name=V10 value="0.2 AC 1m 180"}
C {devices/lab_pin.sym} -210 640 0 1 {name=p58 sig_type=std_logic lab=IN1_2}
C {devices/lab_pin.sym} -80 640 0 1 {name=p60 sig_type=std_logic lab=IN5_2}
C {devices/lab_pin.sym} -400 770 0 1 {name=p55 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -140 770 0 1 {name=p59 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -340 690 0 0 {name=V9 value=0}
C {devices/vsource.sym} -80 690 0 0 {name=V11 value=0}
C {devices/code_shown.sym} 760 640 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_pin.sym} 60 440 0 1 {name=p1 sig_type=std_logic lab=MUX_2}
C {devices/lab_pin.sym} 160 440 0 1 {name=p2 sig_type=std_logic lab=MUX_3}
C {devices/lab_pin.sym} -210 70 0 0 {name=p3 sig_type=std_logic lab=MUX_1}
C {devices/lab_pin.sym} -210 90 0 0 {name=p4 sig_type=std_logic lab=MUX_2}
C {devices/lab_pin.sym} -210 110 0 0 {name=p5 sig_type=std_logic lab=MUX_3}
C {devices/lab_pin.sym} 420 620 0 1 {name=p6 sig_type=std_logic lab=PGA_2}
C {devices/lab_pin.sym} 420 780 0 1 {name=p7 sig_type=std_logic lab=PGA_3}
C {devices/lab_pin.sym} -210 150 0 0 {name=p8 sig_type=std_logic lab=PGA_1}
C {devices/lab_pin.sym} -210 170 0 0 {name=p9 sig_type=std_logic lab=PGA_2}
C {devices/lab_pin.sym} -210 190 0 0 {name=p10 sig_type=std_logic lab=PGA_3}
C {devices/lab_pin.sym} -70 260 0 1 {name=p11 sig_type=std_logic lab=TRS}
C {devices/vsource.sym} -200 490 0 0 {name=V15 value=3.3}
C {devices/lab_pin.sym} -200 440 0 1 {name=p12 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} -200 540 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -90 260 0 0 {name=p14 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} -40 -330 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -20 -330 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} -690 360 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} -690 450 0 0 {name=M2
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
C {devices/isource.sym} -670 270 0 0 {name=I2 value=20u}
C {devices/lab_pin.sym} 30 270 3 0 {name=p17 sig_type=std_logic lab=G_sink_dn}
C {devices/lab_pin.sym} 10 270 3 0 {name=p18 sig_type=std_logic lab=G_sink_up}
C {devices/lab_pin.sym} -730 430 0 0 {name=p19 sig_type=std_logic lab=G_sink_dn}
C {devices/lab_pin.sym} -730 340 0 0 {name=p20 sig_type=std_logic lab=G_sink_up}
C {devices/lab_pin.sym} -670 220 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -670 520 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -260 0 0 {name=p23 sig_type=std_logic lab=IN1_1}
C {devices/lab_pin.sym} -240 -100 0 0 {name=p24 sig_type=std_logic lab=IN5_1}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p25 sig_type=std_logic lab=IN1_2}
C {devices/lab_pin.sym} -240 -80 0 0 {name=p26 sig_type=std_logic lab=IN5_2}
C {devices/capa.sym} 320 -130 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 410 -130 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 320 -70 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -70 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 190 -170 0 1 {name=p29 sig_type=std_logic lab=OUT_P}
C {devices/lab_pin.sym} 190 -150 0 1 {name=p30 sig_type=std_logic lab=OUT_N}
C {devices/lab_pin.sym} 320 -190 0 1 {name=p31 sig_type=std_logic lab=OUT_P}
C {devices/lab_pin.sym} 410 -190 0 1 {name=p32 sig_type=std_logic lab=OUT_N}
