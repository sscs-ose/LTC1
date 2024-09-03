v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -40 30 -40 {
lab=IN}
N -90 -170 90 -170 {
lab=VDD}
N 90 -170 90 -100 {
lab=VDD}
N 90 40 90 70 {
lab=VSS}
N 220 -30 270 -30 {
lab=VOUT}
N -450 -240 -450 -210 {
lab=VDD}
N -450 -150 -450 -120 {
lab=VSS}
N -380 -240 -380 -210 {
lab=IN}
N -380 -150 -380 -120 {
lab=VSS}
N 90 70 90 100 {
lab=VSS}
N -550 -150 -550 -120 {
lab=GND}
N -550 -240 -550 -210 {
lab=VSS}
C {inverter.sym} 180 -20 0 0 {name=x1}
C {devices/lab_wire.sym} 260 -30 0 0 {name=p1 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} -20 -170 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -480 -330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -450 -180 0 0 {name=V4 value=3.3}
C {devices/lab_wire.sym} -450 -230 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -380 -180 0 0 {name=V5 value="pulse(0 3.3 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} -380 -230 0 0 {name=p6 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} -450 -130 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -380 -130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -10 -40 0 0 {name=p3 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 90 60 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 460 -330 0 1 {name=NGSPICE only_toplevel=true
value="

.control
save all
*plot v(IN) v(OUT)

tran 10p 1u 
plot v(IN) 
plot v(VOUT)
*write test_nfet_03v3.raw
.endc
"}
C {devices/vsource.sym} -550 -180 0 0 {name=V1 value=0}
C {devices/gnd.sym} -550 -120 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -550 -230 0 0 {name=p4 sig_type=std_logic lab=VSS}
