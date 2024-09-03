v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -445 50 -415 {
lab=GND}
N 50 -535 50 -505 {
lab=VSS}
N 110 -535 110 -505 {
lab=VDD}
N 110 -445 110 -415 {
lab=VSS}
N 170 -285 170 -255 {
lab=#net1}
N 170 -195 170 -165 {
lab=VSS}
N 210 -265 210 -235 {
lab=#net2}
N 210 -175 210 -145 {
lab=VSS}
N 250 -245 250 -215 {
lab=#net3}
N 250 -155 250 -125 {
lab=VSS}
N 130 -305 130 -275 {
lab=#net4}
N 130 -215 130 -185 {
lab=VSS}
N 90 -325 90 -295 {
lab=#net5}
N 90 -235 90 -205 {
lab=VSS}
N 50 -345 50 -315 {
lab=#net6}
N 50 -255 50 -225 {
lab=VSS}
N 180 -535 180 -505 {
lab=VDD}
N 180 -445 180 -415 {
lab=I1}
N 410 -165 410 -135 {
lab=#net7}
N 410 -75 410 -45 {
lab=VSS}
N 450 -145 450 -115 {
lab=#net8}
N 450 -55 450 -25 {
lab=VSS}
N 490 -125 490 -95 {
lab=#net9}
N 490 -35 490 -5 {
lab=VSS}
N 370 -185 370 -155 {
lab=#net10}
N 370 -95 370 -65 {
lab=VSS}
N 330 -205 330 -175 {
lab=#net11}
N 330 -115 330 -85 {
lab=VSS}
N 290 -225 290 -195 {
lab=#net12}
N 290 -135 290 -105 {
lab=VSS}
N 270 -535 270 -505 {
lab=VDD}
N 270 -445 270 -415 {
lab=I2}
N 50 -345 750 -345 {
lab=#net6}
N 90 -325 750 -325 {
lab=#net5}
N 130 -305 750 -305 {
lab=#net4}
N 170 -285 750 -285 {
lab=#net1}
N 210 -265 750 -265 {
lab=#net2}
N 250 -245 750 -245 {
lab=#net3}
N 290 -225 750 -225 {
lab=#net12}
N 330 -205 750 -205 {
lab=#net11}
N 370 -185 750 -185 {
lab=#net10}
N 410 -165 750 -165 {
lab=#net7}
N 450 -145 750 -145 {
lab=#net8}
N 490 -125 750 -125 {
lab=#net9}
N 885 -415 885 -375 {
lab=VDD}
N 920 -435 920 -375 {
lab=I2}
N 955 -465 955 -375 {
lab=I1}
N 900 -55 900 -5 {
lab=VSS}
N 1200 -230 1230 -230 {
lab=Out-}
N 1230 -230 1250 -230 {
lab=Out-}
N 1250 -170 1250 -140 {
lab=VDD}
N 1280 -250 1310 -250 {
lab=Out+}
N 1310 -250 1330 -250 {
lab=Out+}
N 1330 -190 1330 -160 {
lab=VDD}
N 1170 -230 1200 -230 {
lab=Out-}
N 1170 -250 1280 -250 {
lab=Out+}
N 1140 -250 1170 -250 {
lab=Out+}
N 1140 -230 1170 -230 {
lab=Out-}
N 1070 -250 1140 -250 {
lab=Out+}
N 1070 -230 1140 -230 {
lab=Out-}
N 1050 -250 1070 -250 {
lab=Out+}
N 1050 -225 1070 -225 {
lab=Out-}
N 1070 -230 1070 -225 {
lab=Out-}
C {devices/vsource.sym} 50 -475 0 0 {name=V1 value=0}
C {devices/vsource.sym} 110 -475 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 50 -415 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 50 -525 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 -525 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 110 -425 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 170 -225 0 0 {name=V6 value="pulse(0 3.3 0 10p 10p 20n 40n)"}
C {devices/lab_wire.sym} 170 -175 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 210 -205 0 0 {name=V7 value="pulse(0 3.3 0 10p 10p 40n 80n)"}
C {devices/lab_wire.sym} 210 -155 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 250 -185 0 0 {name=V8 value="pulse(0 3.3 0 10p 10p 80n 160n)"}
C {devices/lab_wire.sym} 250 -135 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 130 -245 0 0 {name=V10 value="pulse(0 3.3 0 10p 10p 10n 20n)"}
C {devices/lab_wire.sym} 130 -195 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 90 -265 0 0 {name=V11 value="pulse(0 3.3 0 10p 10p 5n 10n)"}
C {devices/lab_wire.sym} 90 -215 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 50 -285 0 0 {name=V12 value="pulse(0 3.3 0 10p 10p 2.5n 5n)"}
C {devices/lab_wire.sym} 50 -235 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 180 -475 0 0 {name=I0 value=20u}
C {devices/lab_wire.sym} 180 -535 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 180 -415 0 0 {name=p11 sig_type=std_logic lab=I1}
C {devices/vsource.sym} 410 -105 0 0 {name=V3 value="pulse(0 3.3 0 10p 10p 1280n 2560n)"}
C {devices/lab_wire.sym} 410 -55 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 450 -85 0 0 {name=V4 value="pulse(0 3.3 0 10p 10p 2560n 5120n)"}
C {devices/lab_wire.sym} 450 -35 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 490 -65 0 0 {name=V5 value="pulse(0 3.3 0 10p 10p 5120n 10240n)"}
C {devices/lab_wire.sym} 490 -15 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 370 -125 0 0 {name=V9 value="pulse(0 3.3 0 10p 10p 640n 1280n)"}
C {devices/lab_wire.sym} 370 -75 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 330 -145 0 0 {name=V13 value="pulse(0 3.3 0 10p 10p 320n 640n)"}
C {devices/lab_wire.sym} 330 -95 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 290 -165 0 0 {name=V14 value="pulse(0 3.3 0 10p 10p 160n 320n)"}
C {devices/lab_wire.sym} 290 -115 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 270 -475 0 0 {name=I1 value=20u}
C {devices/lab_wire.sym} 270 -535 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 270 -415 0 0 {name=p13 sig_type=std_logic lab=I2}
C {devices/lab_wire.sym} 885 -415 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 900 -5 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 955 -465 0 0 {name=p18 sig_type=std_logic lab=I1}
C {devices/lab_wire.sym} 920 -435 0 0 {name=p20 sig_type=std_logic lab=I2}
C {devices/code_shown.sym} 320 -525 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1330 -535 0 1 {name=NGSPICE only_toplevel=true
value="
.options savecurrents
.control
save all
op

tran 1000p 10240n
plot v(Out-) v(Out+)

write DAC_12bit_TB_V2.raw
.endc
"}
C {devices/res.sym} 1330 -220 0 0 {name=R1
value=25
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1250 -200 0 0 {name=R2
value=25
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1250 -140 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1330 -160 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1130 -250 0 0 {name=p24 sig_type=std_logic lab=Out+}
C {devices/lab_pin.sym} 1160 -230 0 0 {name=p26 sig_type=std_logic lab=Out-}
C {DAC_12Bit_V2.sym} 900 -215 0 0 {name=x1}
