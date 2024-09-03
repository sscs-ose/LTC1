v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -260 410 -250 {
lab=VSS}
N 410 -340 410 -320 {
lab=VDD}
N 490 -340 490 -320 {
lab=VSS}
N 490 -260 490 -240 {
lab=GND}
N 560 -260 560 -250 {
lab=VSS}
N 560 -340 560 -320 {
lab=IN1}
N 130 -220 150 -220 {
lab=IN1}
N 130 -200 150 -200 {
lab=IN2}
N 230 -120 230 -100 {
lab=VSS}
N 230 -320 230 -300 {
lab=VDD}
N 310 -240 320 -240 {
lab=D0}
N 410 -410 410 -400 {
lab=VSS}
N 410 -480 410 -470 {
lab=IN2}
N 310 -220 320 -220 {
lab=D1}
N 310 -200 320 -200 {
lab=D2}
N 310 -180 320 -180 {
lab=D3}
C {devices/vsource.sym} 410 -290 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 490 -290 0 0 {name=V2 value=0}
C {devices/vsource.sym} 560 -290 0 0 {name=V3 value="pulse(3.3 0 0 100p 100p 50n 100n)"}
C {devices/vsource.sym} 410 -440 0 0 {name=V4 value="pulse(3.3 0 0 100p 100p 100n 200n)"}
C {devices/lab_wire.sym} 490 -340 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 -250 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 410 -340 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 560 -340 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 560 -250 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 130 -220 0 0 {name=p7 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 130 -200 0 0 {name=p8 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 230 -100 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 230 -320 1 0 {name=p10 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 320 -240 2 0 {name=p11 sig_type=std_logic lab=D0}
C {devices/lab_wire.sym} 410 -480 0 0 {name=p12 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 410 -400 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 490 -240 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 570 -580 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1220 -490 0 1 {name=NGSPICE1 only_toplevel=true
value="
.control
save all
tran 50p 500n 
plot v(IN1) V(IN2)+4 v(D0)+8 v(D1)+12 v(D2)+16 v(D3)+20


*write test_nfet_03v3.raw
.endc
"}
C {devices/lab_wire.sym} 320 -220 2 0 {name=p2 sig_type=std_logic lab=D1}
C {devices/lab_wire.sym} 320 -200 2 0 {name=p14 sig_type=std_logic lab=D2}
C {devices/lab_wire.sym} 320 -180 2 0 {name=p15 sig_type=std_logic lab=D3}
C {decoder_2x4_ibr.sym} -110 -20 0 0 {name=x1}
