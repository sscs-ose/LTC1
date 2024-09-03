v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -70 360 -60 {
lab=VSS}
N 360 -150 360 -130 {
lab=VDD}
N 440 -150 440 -130 {
lab=VSS}
N 440 -70 440 -50 {
lab=GND}
N 360 -220 360 -210 {
lab=VSS}
N 360 -290 360 -280 {
lab=SEL}
N 70 -100 70 -90 {
lab=VSS}
N 70 -180 70 -160 {
lab=IN2}
N 720 -80 740 -80 {
lab=IN2}
N 720 -120 740 -120 {
lab=IN1}
N 810 -20 810 0 {
lab=VSS}
N 740 -80 750 -80 {
lab=IN2}
N 740 -120 750 -120 {
lab=IN1}
N 800 -190 800 -180 {
lab=VDD}
N 810 -30 810 -20 {
lab=VSS}
N 200 -90 200 -80 {
lab=VSS}
N 200 -170 200 -150 {
lab=IN1}
N 800 -200 800 -190 {
lab=VDD}
N 855 -100 865 -100 {
lab=VOUT}
N 865 -100 925 -100 {
lab=VOUT}
N 850 -100 855 -100 {
lab=VOUT}
N 780 -226 780 -186 {
lab=SEL}
N 750 -226 782 -226 {
lab=SEL}
C {devices/vsource.sym} 360 -100 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 440 -100 0 0 {name=V2 value=0}
C {devices/vsource.sym} 360 -250 0 0 {name=V4 value="pulse(0 3.3 0 100p 100p 400n 800n)"}
C {devices/lab_wire.sym} 440 -150 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 -60 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 360 -150 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 360 -290 0 0 {name=p12 sig_type=std_logic lab=SEL
}
C {devices/lab_wire.sym} 360 -210 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 440 -50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 70 -130 0 0 {name=V6 value=1.12}
C {devices/lab_wire.sym} 70 -90 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 70 -180 0 0 {name=p25 sig_type=std_logic lab=IN2}
C {devices/code_shown.sym} 1140 -460 0 1 {name=NGSPICE1 only_toplevel=true
value="
.include "pex_a2x1mux_mag.spice"
.control
save all
tran 50p 800n 
plot v(S)  v(I0)+5 v(I1)+10 v(OUT)+15


**write analog_mux_TB.raw
.endc
"}
C {devices/code_shown.sym} 320 -510 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/lab_wire.sym} 720 -120 0 0 {name=p2 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 720 -80 0 0 {name=p5 sig_type=std_logic lab=IN2}
C {devices/lab_wire.sym} 810 0 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 865 -100 2 0 {name=p9 sig_type=std_logic lab=VOUT
}
C {devices/vsource.sym} 200 -120 0 0 {name=V3 value=2.0}
C {devices/lab_wire.sym} 200 -80 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} 200 -170 0 0 {name=p11 sig_type=std_logic lab=IN1}
C {devices/lab_wire.sym} 800 -200 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 754 -226 0 0 {name=p6 sig_type=std_logic lab=SEL
}
C {pex_a2x1mux_mag.sym} 430 60 0 0 {name=x1}
