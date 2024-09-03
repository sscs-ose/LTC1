v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -160 180 -160 220 {
lab=A}
N -160 280 -160 320 {
lab=GND}
N 270 -100 270 -80 {
lab=GND}
N 240 -160 270 -160 {
lab=VDD}
N -110 270 -110 290 {
lab=GND}
N -110 180 -110 210 {
lab=B}
N 40 -110 90 -110 {
lab=A}
N 40 -90 80 -90 {
lab=B}
N 80 -90 90 -90 {
lab=B}
N 40 -70 90 -70 {
lab=C}
N 40 -50 90 -50 {
lab=D}
N 40 -30 90 -30 {
lab=E}
N 40 -10 90 -10 {
lab=F}
N 40 10 90 10 {
lab=G}
N 40 30 90 30 {
lab=H}
N 40 50 90 50 {
lab=VDD}
C {devices/code_shown.sym} 60 280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_pin.sym} 260 -160 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -160 250 0 0 {name=V1 value=3}
C {devices/gnd.sym} -160 320 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -160 190 0 0 {name=l6 sig_type=std_logic lab=A}
C {devices/vsource.sym} 270 -130 0 0 {name=V2 value=3}
C {devices/gnd.sym} 270 -80 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -110 290 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 370 -50 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_pga_res_magice_parallel.spice"
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
C {devices/vsource.sym} -110 240 0 0 {name=V3 value=0}
C {devices/lab_pin.sym} 80 -110 0 1 {name=l2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 80 -90 0 1 {name=l3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 80 -70 0 1 {name=l7 sig_type=std_logic lab=C}
C {devices/lab_pin.sym} 80 -50 0 1 {name=l9 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 80 -30 0 1 {name=l10 sig_type=std_logic lab=E}
C {devices/lab_pin.sym} 80 -10 0 1 {name=l11 sig_type=std_logic lab=F}
C {devices/lab_pin.sym} 80 10 0 1 {name=l12 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 80 30 0 1 {name=l13 sig_type=std_logic lab=H}
C {devices/lab_pin.sym} 70 50 1 1 {name=l14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -110 190 0 1 {name=l15 sig_type=std_logic lab=B}
C {pex_pga_res_magice_parallel.sym} -110 -30 0 0 {name=x1}
