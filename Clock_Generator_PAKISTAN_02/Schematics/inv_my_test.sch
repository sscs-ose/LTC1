v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1010 -330 1040 -330 {
lab=IN}
N 1090 -410 1090 -380 {
lab=VDD}
N 1090 -270 1090 -250 {
lab=VSS}
N 1200 -330 1230 -330 {
lab=OUT}
N 590 -300 590 -290 {
lab=GND}
N 590 -370 590 -360 {
lab=VSS}
N 740 -370 740 -360 {
lab=IN}
N 740 -300 740 -280 {
lab=VSS}
N 1250 -330 1250 -320 {
lab=OUT}
N 1230 -330 1250 -330 {
lab=OUT}
N 1250 -260 1250 -240 {
lab=VSS}
N 670 -360 670 -350 {
lab=VDD}
N 670 -290 670 -270 {
lab=VSS}
C {inv_my.sym} 600 -200 0 0 {name=x1}
C {devices/capa.sym} 1250 -290 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 740 -330 0 0 {name=V1 value="pulse (0 3.3 0 100p 100p 100n 200n)"}
C {devices/vsource.sym} 590 -330 0 0 {name=V2 value=0}
C {devices/gnd.sym} 590 -290 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 670 -320 0 0 {name=V3 value=3.3}
C {devices/lab_wire.sym} 590 -370 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 740 -370 0 0 {name=p2 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 740 -280 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1010 -330 0 0 {name=p4 sig_type=std_logic lab=IN}
C {devices/lab_wire.sym} 1090 -250 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 1090 -410 0 0 {name=p6 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 1250 -330 2 0 {name=p7 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 1250 -240 2 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 670 -360 0 0 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/lab_wire.sym} 670 -270 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 270 -560 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 790 -680 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
dc v1 0 3.3 0.1  
plot v(IN) v(OUT)

tran 10p 1u 
plot v(IN) v(OUT)
plot ()
*write test_nfet_03v3.raw
.endc
"}
