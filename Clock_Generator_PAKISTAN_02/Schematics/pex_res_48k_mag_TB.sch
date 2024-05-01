v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 720 -570 1310 -110 {flags=graph
y1=-0.027
y2=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=m
x1=0
x2=3.3
divx=5
subdivx=1
node=i(vp)
color=4

unitx=1
dataset=-1}
B 2 720 -1030 1310 -570 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3
divx=5
subdivx=1



unitx=1
dataset=-1
color=4
node="\\"resistance; a i(va) / -1 *\\""}
N 310 -520 310 -470 {
lab=A}
N 340 -500 340 -470 {
lab=VDD}
N 320 -370 320 -300 {
lab=B}
C {devices/code_shown.sym} 160 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_pin.sym} 340 -500 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1380 -250 0 0 {name=NGSPICE only_toplevel=true
value="
.include "pex_res_48k_mag.spice"
va a 0 0
vb b 0 0
vvdd VDD 0 3.3

.control
save all
dc va 0 3.3 0.01
write pex_res_48k_mag_TB.raw
.endc
"}
C {devices/title.sym} 300 -60 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {devices/launcher.sym} 205 -675 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {pex_res_48k_mag.sym} 220 -290 0 0 {name=x1}
C {devices/lab_pin.sym} 320 -340 2 0 {name=l1 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 310 -500 0 0 {name=l2 sig_type=std_logic lab=A}
