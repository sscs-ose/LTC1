v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -580 170 -530 {
lab=P}
N 200 -560 200 -530 {
lab=B}
N 180 -430 180 -360 {
lab=GND}
N 60 -560 60 -520 {
lab=P}
N 60 -460 60 -420 {
lab=GND}
N 230 -630 230 -610 {
lab=GND}
N 200 -690 200 -560 {
lab=B}
N 200 -690 230 -690 {
lab=B}
N 180 -360 180 -340 {
lab=GND}
C {devices/code_shown.sym} 20 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_pin.sym} 170 -580 0 0 {name=l2 sig_type=std_logic lab=P}
C {devices/lab_pin.sym} 200 -560 1 0 {name=l4 sig_type=std_logic lab=B}
C {res_pga1.sym} 210 -380 0 0 {name=x1}
C {devices/vsource.sym} 60 -490 0 0 {name=V1 value=3}
C {devices/gnd.sym} 60 -420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 60 -550 0 0 {name=l6 sig_type=std_logic lab=P}
C {devices/vsource.sym} 230 -660 0 0 {name=V2 value=3}
C {devices/gnd.sym} 230 -610 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 180 -340 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 330 -580 0 0 {name=NGSPICE only_toplevel=true
value="
*vp p 0 0
*vm m 0 0
*vb b 0 3.3

.control
save all
*dc vp 0 3.3 0.01
dc v1 0.1 3.3 0.1
let i1 = i(v1)
let r  = v(p)/i(v1)
plot r
display all
*write res_sch_test.raw
.endc
"}
