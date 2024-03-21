v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 460 -40 510 -40 {
lab=IN1}
N 510 -40 580 -40 {
lab=IN1}
N 460 -20 510 -20 {
lab=IN2}
N 510 -20 580 -20 {
lab=IN2}
N 1000 180 1000 210 {
lab=VDD}
N 920 180 920 210 {
lab=VSS}
N 330 -120 330 -90 {
lab=I_TM}
N 360 -120 360 -90 {
lab=VDD}
N 650 -120 650 -90 {
lab=I_PGA}
N 680 -120 680 -90 {
lab=VDD}
N 560 340 620 340 {
lab=IN_P}
N 450 180 450 210 {
lab=VDD}
N 370 180 370 210 {
lab=VSS}
N 900 470 900 500 {
lab=A1}
N 950 470 950 500 {
lab=B1}
N 1000 470 1000 500 {
lab=C1}
N 350 470 350 500 {
lab=A1}
N 400 470 400 500 {
lab=B1}
N 450 470 450 500 {
lab=C1}
N 200 250 260 250 {
lab=IN1P}
N 200 330 260 330 {
lab=IN5P}
N 750 250 810 250 {
lab=IN1N}
N 750 330 810 330 {
lab=IN5N}
N 330 50 330 80 {
lab=VCM}
N 360 50 360 80 {
lab=VSS}
N 650 70 650 100 {
lab=VCM}
N 680 70 680 100 {
lab=VSS}
N 550 0 580 0 {
lab=A}
N 550 20 580 20 {
lab=B}
N 550 40 580 40 {
lab=C}
N 770 -40 800 -40 {
lab=OUT1}
N 770 -20 800 -20 {
lab=OUT2}
N 220 -40 250 -40 {
lab=IN_P}
N 220 -20 250 -20 {
lab=IN_N}
N 220 20 250 20 {
lab=SEL}
N 1110 340 1170 340 {
lab=IN_N}
N 870 100 870 130 {
lab=VSS}
N 870 10 870 40 {
lab=OUT1}
N 960 100 960 130 {
lab=VSS}
N 960 10 960 40 {
lab=OUT2}
N 1270 220 1270 240 {
lab=GND}
N 1270 130 1270 160 {
lab=VSS}
N 1360 130 1360 160 {
lab=VDD}
N 1360 220 1360 250 {
lab=VSS}
N 1460 130 1460 160 {
lab=VDD}
N 1460 220 1460 250 {
lab=I_TM}
N 1560 130 1560 160 {
lab=I_PGA}
N 1560 220 1560 250 {
lab=VSS}
N 1180 130 1180 160 {
lab=VCM}
N 1180 220 1180 250 {
lab=VSS}
N 1270 330 1270 360 {
lab=SEL}
N 1270 420 1270 450 {
lab=VSS}
N 1360 330 1360 360 {
lab=A1}
N 1360 420 1360 450 {
lab=VSS}
N 1460 330 1460 360 {
lab=B1}
N 1460 420 1460 450 {
lab=VSS}
N 1560 330 1560 360 {
lab=C1}
N 1560 420 1560 450 {
lab=VSS}
N 1060 -70 1060 -40 {
lab=IN1P}
N 1060 20 1060 50 {
lab=VSS}
N 1190 -70 1190 -40 {
lab=IN5P}
N 1190 20 1190 50 {
lab=VSS}
N 1320 -70 1320 -40 {
lab=IN1N}
N 1320 20 1320 50 {
lab=VSS}
N 1450 -70 1450 -40 {
lab=IN5N}
N 1450 20 1450 50 {
lab=VSS}
N 1060 50 1190 50 {
lab=VSS}
N 1130 50 1130 80 {
lab=VSS}
N 1320 50 1450 50 {
lab=VSS}
N 1390 50 1390 80 {
lab=VSS}
N 1680 330 1680 360 {
lab=A}
N 1680 420 1680 450 {
lab=VSS}
N 1780 330 1780 360 {
lab=B}
N 1780 420 1780 450 {
lab=VSS}
N 1880 330 1880 360 {
lab=C}
N 1880 420 1880 450 {
lab=VSS}
C {devices/lab_pin.sym} 210 250 0 0 {name=p1 sig_type=std_logic lab=IN1P}
C {devices/lab_pin.sym} 210 330 0 0 {name=p2 sig_type=std_logic lab=IN5P
}
C {devices/lab_pin.sym} 760 250 0 0 {name=p3 sig_type=std_logic lab=IN1N}
C {devices/lab_pin.sym} 760 330 0 0 {name=p4 sig_type=std_logic lab=IN5N
}
C {devices/lab_pin.sym} 610 340 0 1 {name=p5 sig_type=std_logic lab=IN_P}
C {devices/lab_pin.sym} 1160 340 0 1 {name=p6 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 230 -40 0 0 {name=p7 sig_type=std_logic lab=IN_P}
C {devices/lab_pin.sym} 230 -20 0 0 {name=p8 sig_type=std_logic lab=IN_N}
C {devices/lab_pin.sym} 450 180 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1000 190 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 680 -110 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -110 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 370 190 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 70 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 680 90 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 920 190 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 490 0 0 {name=p17 sig_type=std_logic lab=A1}
C {devices/lab_pin.sym} 400 490 0 0 {name=p18 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} 450 490 0 0 {name=p19 sig_type=std_logic lab=C1}
C {devices/lab_pin.sym} 900 490 0 0 {name=p20 sig_type=std_logic lab=A1}
C {devices/lab_pin.sym} 950 490 0 0 {name=p21 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} 1000 490 0 0 {name=p22 sig_type=std_logic lab=C1}
C {devices/lab_pin.sym} 560 0 0 0 {name=p23 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 560 20 0 0 {name=p24 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 560 40 0 0 {name=p25 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} 230 20 0 0 {name=p26 sig_type=std_logic lab=SEL}
C {devices/capa.sym} 870 70 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 870 120 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 870 20 0 0 {name=p28 sig_type=std_logic lab=OUT1}
C {devices/capa.sym} 960 70 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 960 120 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 960 20 0 0 {name=p30 sig_type=std_logic lab=OUT2}
C {devices/lab_pin.sym} 790 -40 0 1 {name=p31 sig_type=std_logic lab=OUT1}
C {devices/lab_pin.sym} 790 -20 0 1 {name=p32 sig_type=std_logic lab=OUT2}
C {devices/vsource.sym} 1270 190 0 0 {name=V1 value=0}
C {devices/gnd.sym} 1270 240 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1270 140 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1360 190 0 0 {name=V2 value=3.3}
C {devices/lab_pin.sym} 1360 140 0 1 {name=p34 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1360 240 0 1 {name=p35 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 1460 190 0 0 {name=I0 value=20u}
C {devices/lab_pin.sym} 1460 140 0 1 {name=p36 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1460 240 0 1 {name=p37 sig_type=std_logic lab=I_TM}
C {devices/lab_pin.sym} 330 -110 0 0 {name=p38 sig_type=std_logic lab=I_TM}
C {devices/isource.sym} 1560 190 0 0 {name=I1 value=20u}
C {devices/lab_pin.sym} 1560 140 0 1 {name=p39 sig_type=std_logic lab=I_PGA}
C {devices/lab_pin.sym} 1560 240 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -110 0 0 {name=p41 sig_type=std_logic lab=I_PGA}
C {devices/vsource.sym} 1180 190 0 0 {name=V3 value=1.6}
C {devices/lab_pin.sym} 1180 140 0 1 {name=p42 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 1180 240 0 1 {name=p43 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 90 0 0 {name=p44 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 330 70 0 0 {name=p45 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 1270 390 0 0 {name=V4 value=0}
C {devices/lab_pin.sym} 1270 340 0 1 {name=p46 sig_type=std_logic lab=SEL}
C {devices/lab_pin.sym} 1270 440 0 1 {name=p47 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1360 390 0 0 {name=V5 value=0}
C {devices/lab_pin.sym} 1360 340 0 1 {name=p48 sig_type=std_logic lab=A1}
C {devices/lab_pin.sym} 1360 440 0 1 {name=p49 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1460 390 0 0 {name=V6 value=0}
C {devices/lab_pin.sym} 1460 340 0 1 {name=p50 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} 1460 440 0 1 {name=p51 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1560 390 0 0 {name=V7 value=0}
C {devices/lab_pin.sym} 1560 340 0 1 {name=p52 sig_type=std_logic lab=C1}
C {devices/lab_pin.sym} 1560 440 0 1 {name=p53 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1060 -10 0 0 {name=V8 value="0.2 AC 1u"}
C {devices/lab_pin.sym} 1060 -60 0 1 {name=p54 sig_type=std_logic lab=IN1P}
C {devices/lab_pin.sym} 1190 -60 0 1 {name=p56 sig_type=std_logic lab=IN5P}
C {devices/vsource.sym} 1320 -10 0 0 {name=V10 value="0.2 AC 1u 180"}
C {devices/lab_pin.sym} 1320 -60 0 1 {name=p58 sig_type=std_logic lab=IN1N}
C {devices/lab_pin.sym} 1450 -60 0 1 {name=p60 sig_type=std_logic lab=IN5N}
C {devices/lab_pin.sym} 1130 70 0 1 {name=p55 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1390 70 0 1 {name=p59 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1680 390 0 0 {name=V12 value=3.3}
C {devices/lab_pin.sym} 1680 340 0 1 {name=p57 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 1680 440 0 1 {name=p61 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1780 390 0 0 {name=V13 value=3.3}
C {devices/lab_pin.sym} 1780 340 0 1 {name=p62 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 1780 440 0 1 {name=p63 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 1880 390 0 0 {name=V14 value=3.3}
C {devices/lab_pin.sym} 1880 340 0 1 {name=p64 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} 1880 440 0 1 {name=p65 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 1480 -160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 2020 -270 0 0 {name=NGSPICE only_toplevel=true
value="
.control
*save all
*.options savecurrents
save all 
save @m.x1.xm1.m0[vds]
+ @m.x1.xm4.m0[vds]
+ @m.x1.xm7.m0[vds]
+ @m.x1.xm5.m0[vds]

*tran 100n 50u
*dc V1 0 3 10m
*plot v(OUT1) v(OUT2)
*plot v(IN1) v(IN2)
*plot v(IN1P) v(IN1N)
*print mean(@m.xm2.m0[vds]) mean(@m.xm4.m0[vds]) mean(@m.xm7.m0[vds])

ac dec 50 1 1e9
let tf = OUT1/IN_P
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
C {devices/vsource.sym} 1190 -10 0 0 {name=V9 value="0m AC 1u"}
C {devices/vsource.sym} 1450 -10 0 0 {name=V11 value="100m AC 1u 180"}
C {devices/lab_pin.sym} 520 -40 1 0 {name=p66 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 520 -20 1 1 {name=p67 sig_type=std_logic lab=IN2}
C {/home/shahid/GF180Projects/Tapeout/Xschem/TransImpedance/transimpedence_block.sym} 360 -20 0 0 {name=x2}
C {/home/shahid/GF180Projects/Tapeout/Xschem/PGA_Block/PGA_block.sym} 680 -10 0 0 {name=x3}
C {/home/shahid/GF180Projects/Tapeout/Xschem/MUX_8x1/muxWnon-ovpclk.sym} 410 340 0 0 {name=x1}
C {/home/shahid/GF180Projects/Tapeout/Xschem/MUX_8x1/muxWnon-ovpclk.sym} 960 340 0 0 {name=x4}
