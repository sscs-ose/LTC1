v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 20 -110 60 {
lab=VDD}
N -110 120 -110 140 {
lab=GND}
N 180 -40 240 -40 {
lab=VDD}
N 180 -60 240 -60 {
lab=r2}
N 180 -80 240 -80 {
lab=r1}
N -190 20 -190 60 {
lab=r1}
N -190 120 -190 140 {
lab=GND}
N 210 80 210 100 {
lab=GND}
N 210 -20 210 20 {
lab=r2}
C {devices/code_shown.sym} -60 200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 380 -50 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_resis_magic.spice"
.control
save all
dc v2 0 3.3 0.01
let vrd = v(r1)-v(r2)
let ird = v(r2)/1e3
let resis = vrd/ird
plot resis
plot v(r2)
*write test_ppolyf_u.raw
.endc
"}
C {devices/vsource.sym} -110 90 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} -110 140 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -190 90 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} -190 140 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -110 40 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -190 40 0 0 {name=p2 sig_type=std_logic lab=r1}
C {devices/lab_wire.sym} 230 -40 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 220 -80 0 0 {name=p4 sig_type=std_logic lab=r1}
C {devices/res.sym} 210 50 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 210 100 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 220 -60 0 0 {name=p5 sig_type=std_logic lab=r2}
C {devices/lab_wire.sym} 210 0 0 0 {name=p6 sig_type=std_logic lab=r2}
C {pex_resis_magic.sym} 30 -60 0 0 {name=x1}
