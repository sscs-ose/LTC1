v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 670 -700 1260 -240 {flags=graph
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
B 2 670 -1160 1260 -700 {flags=graph
y1=-0
y2=58000
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
node="\\"resistance; a i(vp) / -1 *\\""}
N 260 -650 260 -600 {
lab=A}
N 290 -630 290 -600 {
lab=VDD}
N 270 -500 270 -430 {
lab=B}
C {devices/code_shown.sym} 110 -320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_pin.sym} 260 -650 0 0 {name=l2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 270 -430 0 0 {name=l3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 290 -630 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1580 -800 0 0 {name=NGSPICE only_toplevel=true

value="
vp a 0 0
vm b 0 0
vb vdd 0 3.3
.include "pex_res_48k_lay.spice"
.control
save all
dc vp 0 3.3 0.01
write pex_res_sch_test.raw
.endc
"}
C {devices/title.sym} 250 -190 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {devices/launcher.sym} 155 -805 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {pex_res_sch48new.sym} 170 -420 0 0 {name=x1}
