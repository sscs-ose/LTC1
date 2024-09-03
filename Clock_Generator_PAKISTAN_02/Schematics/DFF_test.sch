v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 150 60 160 {
lab=VSS}
N 60 70 60 90 {
lab=VDD}
N 140 70 140 90 {
lab=VSS}
N 140 150 140 170 {
lab=GND}
N 210 150 210 160 {
lab=VSS}
N 210 70 210 90 {
lab=CLK}
N -160 -30 -160 -10 {
lab=VSS}
N -180 -180 -180 -160 {
lab=VDD}
N -530 180 -530 190 {
lab=VSS}
N -530 110 -530 120 {
lab=D}
N -90 -120 -80 -120 {
lab=Q}
N -90 -80 -80 -80 {
lab=QB}
N -250 -120 -230 -120 {
lab=D}
N -250 -70 -230 -70 {
lab=CLK}
N -140 -180 -140 -160 {
lab=RST}
N -30 150 -30 160 {
lab=VSS}
N -30 80 -30 90 {
lab=RST}
N -80 -120 -20 -120 {
lab=Q}
N -40 -80 -40 -40 {
lab=QB}
N -80 -80 -40 -80 {
lab=QB}
N -90 -80 -80 -80 {
lab=QB}
C {devices/vsource.sym} 60 120 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 140 120 0 0 {name=V2 value=0}
C {devices/vsource.sym} 210 120 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 50n 100n)"}
C {devices/vsource.sym} -530 150 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} 140 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 60 160 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 60 70 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 210 70 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 210 160 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -160 -10 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -180 -180 1 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} -530 110 0 0 {name=p12 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} -530 190 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 140 170 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 220 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 870 -80 0 1 {name=NGSPICE1 only_toplevel=true
value="

.control
save all
tran 50p 500n
plot v(D)
plot V(CLK) 
plot v(Q)
plot v(QB)
plot V(RST)

*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} -80 -120 2 0 {name=p2 sig_type=std_logic lab=Q}
C {devices/lab_wire.sym} -80 -80 2 0 {name=p14 sig_type=std_logic lab=QB}
C {devices/lab_wire.sym} -250 -120 0 0 {name=p11 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} -250 -70 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {DFF.sym} -520 -90 0 0 {name=x1}
C {devices/lab_wire.sym} -140 -180 1 0 {name=p7 sig_type=std_logic lab=RST

}
C {devices/vsource.sym} -30 120 0 0 {name=V5 value=0}
C {devices/lab_wire.sym} -30 80 0 0 {name=p8 sig_type=std_logic lab=RST}
C {devices/lab_wire.sym} -30 160 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/capa.sym} -40 -10 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -20 -90 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} -40 20 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 -60 2 0 {name=p18 sig_type=std_logic lab=VSS}
