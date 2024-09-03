v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -100 270 -100 {
lab=#net1}
N 270 -140 270 -100 {
lab=#net1}
N 270 -140 320 -140 {
lab=#net1}
N 230 -80 270 -80 {
lab=#net2}
N 270 -80 270 -30 {
lab=#net2}
N 270 -30 320 -30 {
lab=#net2}
N 290 -160 320 -160 {
lab=VDD}
N 290 -160 290 -10 {
lab=VDD}
N 290 -10 320 -10 {
lab=VDD}
N 440 -150 490 -150 {
lab=VOUT-}
N 440 -20 490 -20 {
lab=VOUT+}
N 380 -130 380 -40 {
lab=VSS}
N 360 -170 380 -170 {
lab=VDD}
N 360 -170 360 0 {
lab=VDD}
N 360 0 380 0 {
lab=VDD}
N 120 -190 120 -170 {
lab=VDD}
N 160 -190 160 -170 {
lab=#net3}
N 140 -10 140 10 {
lab=VSS}
N -180 -330 -180 -300 {
lab=GND}
N -180 -420 -180 -390 {
lab=VSS}
N -120 -420 -120 -390 {
lab=VDD}
N -120 -330 -120 -300 {
lab=VSS}
N 180 -150 180 -120 {
lab=VSS}
N -0 -140 50 -140 {
lab=VDD}
N -0 -140 -0 -40 {
lab=VDD}
N -0 -40 50 -40 {
lab=VDD}
N 0 -60 50 -60 {
lab=VDD}
N 0 -80 50 -80 {
lab=VDD}
N 0 -100 50 -100 {
lab=VDD}
N 0 -120 50 -120 {
lab=VDD}
N 160 -270 160 -250 {
lab=VDD}
N 120 -270 120 -190 {
lab=VDD}
N 120 -270 160 -270 {
lab=VDD}
N 490 -90 490 -60 {
lab=VDD}
N 490 40 490 70 {
lab=VDD}
N 160 -270 280 -270 {
lab=VDD}
N 280 -270 290 -270 {
lab=VDD}
N 290 -270 290 -160 {
lab=VDD}
C {MSB_6Bit.sym} 150 -90 0 0 {name=x1}
C {TG.sym} 380 -150 0 0 {name=x2}
C {TG.sym} 380 -20 2 1 {name=x3}
C {devices/vsource.sym} -180 -360 0 0 {name=V1 value=0}
C {devices/vsource.sym} -120 -360 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -180 -300 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -180 -410 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -120 -410 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -120 -310 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -60 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 730 -400 0 1 {name=NGSPICE only_toplevel=true
value="
.options savecurrents

.control
save all
**dc v3 0 3.3 0.1
**plot v(IN) v(OUT)

tran 1n 500n
plot v(VOUT-) v(VOUT+)
*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 120 -190 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 360 -80 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 140 10 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 380 -90 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 180 -130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 10 -140 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 160 -220 0 0 {name=I0 value=2u}
C {devices/res.sym} 490 -120 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 490 10 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 480 -150 0 0 {name=p12 sig_type=std_logic lab=VOUT-}
C {devices/lab_pin.sym} 480 -20 0 0 {name=p13 sig_type=std_logic lab=VOUT+}
C {devices/lab_wire.sym} 490 -60 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 490 70 0 0 {name=p11 sig_type=std_logic lab=VDD}
