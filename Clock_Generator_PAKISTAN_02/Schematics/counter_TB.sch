v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -40 210 -40 {
lab=OUT}
N -190 -20 -190 0 {
lab=IN}
N -190 -30 -190 -20 {
lab=IN}
N -190 -40 -190 -30 {
lab=IN}
N -100 -40 -0 -40 {
lab=IN}
N -190 -40 -100 -40 {
lab=IN}
N -130 0 -130 20 {
lab=#net1}
N -130 -10 -130 0 {
lab=#net1}
N -130 -20 -130 -10 {
lab=#net1}
N -130 -20 0 -20 {
lab=#net1}
N -30 -0 0 0 {
lab=#net2}
N -30 0 -30 80 {
lab=#net2}
N -130 80 -30 80 {
lab=#net2}
N 210 20 210 40 {}
N -130 80 -130 100 {}
N -190 60 -190 80 {}
C {/home/shahid/EDA_TOOLs/xschem/xschem_library/ngspice/counter_6bit_ngspice.sym} 80 -20 0 0 {name=x1}
C {devices/capa.sym} 210 -10 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -190 30 0 0 {name=V2 value=3.3}
C {devices/gnd.sym} 210 40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -190 80 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -420 -230 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all
dc v2 0 3.3 0.01
*write test_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} -130 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -130 50 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} -130 100 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -110 -40 1 0 {name=p1 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 180 -40 1 0 {name=p2 sig_type=std_logic lab=OUT}
