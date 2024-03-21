v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 610 -590 1200 -130 {flags=graph
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
B 2 610 -1050 1200 -590 {flags=graph
y1=-0
y2=5800
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
node="\\"resistance; p i(vp) / -1 *\\""}
N 200 -540 200 -490 {
lab=P}
N 230 -520 230 -490 {
lab=B}
N 210 -390 210 -320 {
lab=M}
C {devices/code_shown.sym} 50 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/lab_pin.sym} 200 -540 0 0 {name=l2 sig_type=std_logic lab=P}
C {devices/lab_pin.sym} 210 -320 0 0 {name=l3 sig_type=std_logic lab=M}
C {devices/lab_pin.sym} 230 -520 1 0 {name=l4 sig_type=std_logic lab=B}
C {devices/code_shown.sym} 330 -500 0 0 {name=NGSPICE only_toplevel=true
value="
vp p 0 0
vm m 0 0
vb b 0 3.3

.control
save all
dc vp 0 3.3 0.01
write res_sch_test.raw
.endc
"}
C {devices/title.sym} 190 -80 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {devices/launcher.sym} 95 -695 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {res_sch.sym} 110 -310 0 0 {name=x1}
