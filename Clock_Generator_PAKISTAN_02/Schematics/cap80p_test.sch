v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 770 -580 1360 -120 {flags=graph
y1=0.34
y2=3.74
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.36872e-07
x2=6.20732e-07
divx=5
subdivx=1



unitx=1
dataset=-1
color="4 7"
node="in
p"}
B 2 1360 -580 1950 -120 {flags=graph
y1=-8e-11
y2=-7.9e-11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.36872e-07
x2=6.20732e-07
divx=5
subdivx=1



unitx=1
dataset=-1
color=4
node="\\"Capac; i(v1) p deriv() /\\""}
N 250 -510 250 -460 {
lab=P}
N 70 -530 250 -530 {
lab=P}
N 250 -530 250 -510 {
lab=P}
N 70 -370 70 -350 {
lab=N}
N 70 -350 250 -350 {
lab=N}
N 70 -470 70 -430 {
lab=IN}
N 250 -390 250 -350 {
lab=N}
N 380 -340 380 -330 {
lab=GND}
N 380 -410 380 -400 {
lab=N}
C {devices/code_shown.sym} 50 -240 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 410 -490 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 0.1n 200n
write cap80p_test.raw
.endc
"}
C {devices/title.sym} 180 -70 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {devices/launcher.sym} 205 -675 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/vsource.sym} 70 -400 0 0 {name=V1 value="pwl 0 0 200n 3.3"}
C {devices/res.sym} 70 -500 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 70 -450 0 0 {name=l1 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 250 -530 0 1 {name=l3 sig_type=std_logic lab=P}
C {cap80p.sym} 160 -340 0 0 {name=x1}
C {devices/gnd.sym} 380 -330 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 380 -370 0 0 {name=V2 value=0}
C {devices/lab_pin.sym} 380 -410 0 1 {name=l4 sig_type=std_logic lab=N}
C {devices/lab_pin.sym} 250 -350 0 1 {name=l2 sig_type=std_logic lab=N}
