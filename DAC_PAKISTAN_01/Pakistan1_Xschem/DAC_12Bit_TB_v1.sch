v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -480 90 -450 {
lab=GND}
N 90 -570 90 -540 {
lab=VSS}
N 150 -570 150 -540 {
lab=VDD}
N 150 -480 150 -450 {
lab=VSS}
N 210 -320 210 -290 {
lab=#net1}
N 210 -230 210 -200 {
lab=VSS}
N 250 -300 250 -270 {
lab=#net2}
N 250 -210 250 -180 {
lab=VSS}
N 290 -280 290 -250 {
lab=#net3}
N 290 -190 290 -160 {
lab=VSS}
N 170 -340 170 -310 {
lab=#net4}
N 170 -250 170 -220 {
lab=VSS}
N 130 -360 130 -330 {
lab=#net5}
N 130 -270 130 -240 {
lab=VSS}
N 90 -380 90 -350 {
lab=#net6}
N 90 -290 90 -260 {
lab=VSS}
N 220 -570 220 -540 {
lab=VDD}
N 220 -480 220 -450 {
lab=I1}
N 450 -200 450 -170 {
lab=#net7}
N 450 -110 450 -80 {
lab=VSS}
N 490 -180 490 -150 {
lab=#net8}
N 490 -90 490 -60 {
lab=VSS}
N 530 -160 530 -130 {
lab=#net9}
N 530 -70 530 -40 {
lab=VSS}
N 410 -220 410 -190 {
lab=#net10}
N 410 -130 410 -100 {
lab=VSS}
N 370 -240 370 -210 {
lab=#net11}
N 370 -150 370 -120 {
lab=VSS}
N 330 -260 330 -230 {
lab=#net12}
N 330 -170 330 -140 {
lab=VSS}
N 310 -570 310 -540 {
lab=VDD}
N 310 -480 310 -450 {
lab=I2}
N 90 -380 790 -380 {
lab=#net6}
N 130 -360 790 -360 {
lab=#net5}
N 170 -340 790 -340 {
lab=#net4}
N 210 -320 790 -320 {
lab=#net1}
N 250 -300 790 -300 {
lab=#net2}
N 290 -280 790 -280 {
lab=#net3}
N 330 -260 790 -260 {
lab=#net12}
N 370 -240 790 -240 {
lab=#net11}
N 410 -220 790 -220 {
lab=#net10}
N 450 -200 790 -200 {
lab=#net7}
N 490 -180 790 -180 {
lab=#net8}
N 530 -160 790 -160 {
lab=#net9}
N 925 -450 925 -410 {
lab=VDD}
N 960 -470 960 -410 {
lab=I2}
N 995 -500 995 -410 {
lab=I1}
N 940 -90 940 -40 {
lab=VSS}
N 1240 -265 1270 -265 {
lab=Out-}
N 1270 -265 1290 -265 {
lab=Out-}
N 1290 -205 1290 -175 {
lab=VDD}
N 1320 -285 1350 -285 {
lab=Out+}
N 1350 -285 1370 -285 {
lab=Out+}
N 1370 -225 1370 -195 {
lab=VDD}
N 1210 -265 1240 -265 {
lab=Out-}
N 1210 -285 1320 -285 {
lab=Out+}
N 1180 -285 1210 -285 {
lab=Out+}
N 1180 -265 1210 -265 {
lab=Out-}
N 1110 -285 1180 -285 {
lab=Out+}
N 1110 -265 1180 -265 {
lab=Out-}
N 1090 -285 1110 -285 {
lab=Out+}
N 1090 -260 1110 -260 {
lab=Out-}
N 1110 -265 1110 -260 {
lab=Out-}
C {devices/vsource.sym} 90 -510 0 0 {name=V1 value=0}
C {devices/vsource.sym} 150 -510 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 90 -450 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 90 -560 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 150 -560 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 150 -460 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 210 -260 0 0 {name=V6 value="pulse(0 3.3 0 10p 10p 400n 800n)"}
C {devices/lab_wire.sym} 210 -210 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 250 -240 0 0 {name=V7 value="pulse(0 3.3 0 10p 10p 800n 1.6u)"}
C {devices/lab_wire.sym} 250 -190 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 290 -220 0 0 {name=V8 value="pulse(0 3.3 0 10p 10p 1.6u 3.2u)"}
C {devices/lab_wire.sym} 290 -170 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 170 -280 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 200n 400n)"}
C {devices/lab_wire.sym} 170 -230 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 130 -300 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 100n 200n)"}
C {devices/lab_wire.sym} 130 -250 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 90 -320 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 50n 100n)"}
C {devices/lab_wire.sym} 90 -270 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 220 -510 0 0 {name=I0 value=2.5u}
C {devices/lab_wire.sym} 220 -570 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 220 -450 0 0 {name=p11 sig_type=std_logic lab=I1}
C {devices/vsource.sym} 450 -140 0 0 {name=V3 value="pulse(0 3.3 0 10p 10p 25.6u 51.2u)"}
C {devices/lab_wire.sym} 450 -90 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 490 -120 0 0 {name=V4 value="pulse(0 3.3 0 10p 10p 51.2u 102.4u)"}
C {devices/lab_wire.sym} 490 -70 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 530 -100 0 0 {name=V5 value="pulse(0 3.3 0 10p 10p 102.4u 204.8u)"}
C {devices/lab_wire.sym} 530 -50 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 410 -160 0 0 {name=V9 value="pulse(0 3.3 0 10p 10p 12.8u 25.6u)"}
C {devices/lab_wire.sym} 410 -110 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 370 -180 0 0 {name=V13 value="pulse(0 3.3 0 10p 10p 6.4u 12.8u)"}
C {devices/lab_wire.sym} 370 -130 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 330 -200 0 0 {name=V14 value="pulse(0 3.3 0 10p 10p 3.2u 6.4u)"}
C {devices/lab_wire.sym} 330 -150 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 310 -510 0 0 {name=I1 value=2.5u}
C {devices/lab_wire.sym} 310 -570 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 310 -450 0 0 {name=p13 sig_type=std_logic lab=I2}
C {devices/lab_wire.sym} 925 -450 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 940 -40 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 995 -500 0 0 {name=p18 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 960 -470 0 0 {name=p20 sig_type=std_logic lab=I2}
C {devices/code_shown.sym} 360 -560 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1370 -570 0 1 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control
save all
op

tran 50n 80u
plot v(Out-) v(Out+)

write DAC_12Bit_TB_v1.raw
.endc
"}
C {devices/res.sym} 1370 -255 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1290 -235 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1290 -175 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1370 -195 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1170 -285 0 0 {name=p24 sig_type=std_logic lab=Out+}
C {devices/lab_pin.sym} 1200 -265 0 0 {name=p26 sig_type=std_logic lab=Out-}
C {DAC_12Bit_V1.sym} 940 -250 0 0 {name=x1}
