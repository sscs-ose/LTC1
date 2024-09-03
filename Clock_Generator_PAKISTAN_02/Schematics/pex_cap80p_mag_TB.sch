v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 770 -620 1360 -160 {flags=graph
y1=0.005
y2=3.3
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
color="4 7"
node="in
p"}
B 2 1360 -620 1950 -160 {flags=graph
y1=-8.1e-11
y2=-8e-11
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
node="\\"Capac; i(v1) p deriv() /\\""}
N 250 -550 250 -500 {
lab=P}
N 70 -570 250 -570 {
lab=P}
N 250 -570 250 -550 {
lab=P}
N 70 -410 70 -390 {
lab=N}
N 70 -390 250 -390 {
lab=N}
N 70 -510 70 -470 {
lab=IN}
N 250 -430 250 -390 {
lab=N}
N -120 -360 -120 -350 {
lab=GND}
N -120 -430 -120 -420 {
lab=N}
C {devices/code_shown.sym} 50 -280 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 410 -530 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_cap80p_mag.spice"
.control
save all
tran 0.1n 200n
write pex_cap80p_mag_TB.raw
.endc
"}
C {devices/title.sym} 180 -110 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {devices/launcher.sym} 205 -715 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/vsource.sym} 70 -440 0 0 {name=V1 value="pwl 0 0 200n 3.3"}
C {devices/res.sym} 70 -540 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 70 -490 0 0 {name=l1 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 250 -570 0 1 {name=l3 sig_type=std_logic lab=P}
C {devices/lab_pin.sym} 250 -410 0 1 {name=l4 sig_type=std_logic lab=N}
C {devices/gnd.sym} -120 -350 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -120 -390 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} -120 -430 0 1 {name=l2 sig_type=std_logic lab=N}
C {pex_cap80p_mag.sym} 160 -380 0 0 {name=x1}
