v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -500 180 -500 220 {
lab=E}
N -500 280 -500 320 {
lab=GND}
N -70 -100 -70 -80 {
lab=GND}
N -100 -160 -70 -160 {
lab=VDD}
N -450 270 -450 290 {
lab=GND}
N -450 180 -450 210 {
lab=H}
N -300 -110 -250 -110 {
lab=A}
N -300 -90 -260 -90 {
lab=B}
N -260 -90 -250 -90 {
lab=B}
N -300 -70 -250 -70 {
lab=C}
N -300 -50 -250 -50 {
lab=D}
N -300 -30 -250 -30 {
lab=E}
N -300 -10 -250 -10 {
lab=F}
N -300 10 -250 10 {
lab=G}
N -300 30 -250 30 {
lab=H}
N -300 50 -250 50 {
lab=VDD}
C {devices/code_shown.sym} -280 280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_pin.sym} -80 -160 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -500 250 0 0 {name=V1 value=3}
C {devices/gnd.sym} -500 320 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -70 -130 0 0 {name=V2 value=3}
C {devices/gnd.sym} -70 -80 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -450 290 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 30 -50 0 0 {name=NGSPICE only_toplevel=true
value="
*vp p 0 0
*vm m 0 0
*vb b 0 3.3

.control
save all
*dc vp 0 3.3 0.01
dc v1 0.1 3.3 0.1
let i1 = i(v1)
let r  = maximum(v(A)/i(v1))
plot r
display all
*write res_sch_test.raw
.endc
"}
C {pga_res_parallel.sym} -450 -30 0 0 {name=x1}
C {devices/vsource.sym} -450 240 0 0 {name=V3 value=0}
C {devices/lab_pin.sym} -260 -110 0 1 {name=l2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} -260 -90 0 1 {name=l3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} -260 -70 0 1 {name=l7 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} -260 -50 0 1 {name=l9 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} -260 -30 0 1 {name=l10 sig_type=std_logic lab=E}
C {devices/lab_pin.sym} -260 -10 0 1 {name=l11 sig_type=std_logic lab=F}
C {devices/lab_pin.sym} -260 10 0 1 {name=l12 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} -260 30 0 1 {name=l13 sig_type=std_logic lab=H}
C {devices/lab_pin.sym} -270 50 1 1 {name=l14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -500 190 0 1 {name=l15 sig_type=std_logic lab=E}
C {devices/lab_pin.sym} -450 190 0 1 {name=l6 sig_type=std_logic lab=H}
