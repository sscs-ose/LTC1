v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -140 130 -110 {
lab=VDD}
N 130 80 130 110 {
lab=VSS}
N 20 -80 50 -80 {
lab=CLK}
N 20 -60 50 -60 {
lab=D}
N 200 -30 240 -30 {
lab=Q}
N -490 -120 -490 -90 {
lab=GND}
N -490 -210 -490 -180 {
lab=VSS}
N -430 -210 -430 -180 {
lab=VDD}
N -430 -120 -430 -90 {
lab=VSS}
N -360 -210 -360 -180 {
lab=CLK}
N -360 -120 -360 -90 {
lab=VSS}
N -110 -330 -110 -300 {
lab=D}
N -110 -240 -110 -210 {
lab=VSS}
C {DFF.sym} 200 -60 0 0 {name=x1}
C {devices/vsource.sym} -490 -150 0 0 {name=V1 value=0}
C {devices/vsource.sym} -430 -150 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -490 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -490 -200 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -430 -200 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -360 -150 0 0 {name=V3 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -360 -200 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} -430 -100 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -360 -100 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -600 40 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 560 -290 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all

tran 10p 1u 
plot v(D) 
plot v(CLK)
plot v(Q)
*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 30 -60 0 0 {name=p2 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} 130 -120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 130 100 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 230 -30 0 0 {name=p7 sig_type=std_logic lab=Q}
C {devices/vsource.sym} -110 -270 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 200n 400n)"}
C {devices/lab_wire.sym} -110 -320 0 0 {name=p10 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} -110 -220 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 30 -80 0 0 {name=p12 sig_type=std_logic lab=CLK}
