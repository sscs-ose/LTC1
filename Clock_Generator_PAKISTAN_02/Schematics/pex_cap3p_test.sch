v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 940 -570 1530 -110 {flags=graph
y1=-0.12
y2=2.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1



unitx=1
dataset=-1
color="4 4"
node="in
Pp"}
B 2 1530 -570 2120 -110 {flags=graph
y1=-2.6e-11
y2=7.9e-11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1



unitx=1
dataset=-1
color=4
node="\\"Capac; i(v1) Pp deriv() /\\""}
N 420 -500 420 -450 {
lab=Pp}
N 240 -520 420 -520 {
lab=Pp}
N 420 -520 420 -500 {
lab=Pp}
N 240 -360 240 -340 {
lab=Nn}
N 240 -340 420 -340 {
lab=Nn}
N 240 -460 240 -420 {
lab=IN}
N 50 -310 50 -300 {
lab=GND}
N 50 -380 50 -370 {
lab=Nn}
N 420 -360 420 -340 {
lab=Nn}
C {devices/code_shown.sym} 220 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 580 -480 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_cap3p_layout.spice"
.control
save all
tran 0.1n 200n
write pex_cap3p_test.raw
.endc
"}
C {devices/title.sym} 350 -60 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {devices/launcher.sym} 375 -665 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/vsource.sym} 240 -390 0 0 {name=V1 value="pwl 0 0 200n 3.3"}
C {devices/res.sym} 240 -490 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 240 -440 0 0 {name=l1 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 420 -520 0 1 {name=l3 sig_type=std_logic lab=Pp}
C {devices/lab_pin.sym} 420 -350 0 1 {name=l4 sig_type=std_logic lab=Nn}
C {devices/gnd.sym} 50 -300 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 50 -340 0 0 {name=V2 value=0}
C {pex_cap3p.sym} 360 -340 0 0 {name=x1}
C {devices/lab_pin.sym} 50 -380 0 1 {name=l7 sig_type=std_logic lab=Nn}
