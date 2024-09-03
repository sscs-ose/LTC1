v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 820 -100 1620 300 {flags=graph
y1=0
y2=150u
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.66
x2=2.64
divx=5
subdivx=1
node="i(@M.xm1.m0[id])"
color="4"
dataset=-1
unitx=1
logx=0
logy=0
}
N 110 140 220 140 {
lab=g}
N 260 40 260 110 {
lab=d}
N 260 40 440 40 {
lab=d}
N 440 40 440 140 {
lab=d}
N 260 170 260 240 {
lab=GND}
N 260 240 440 240 {
lab=GND}
N 440 200 440 240 {
lab=GND}
N 110 240 260 240 {
lab=GND}
N 110 200 110 240 {
lab=GND}
N 260 140 350 140 {
lab=GND}
N 350 140 350 240 {
lab=GND}
C {devices/netlist_not_shown.sym} 0 -50 0 0 {name=simulation only_toplevel=false 
value="

*Parameters
.param vds = 200m
.param vgs = 1.2

.options TEMP = 50.0

*Models

*Data to save
.save all
+ @M.xm1.m0[id]
+ @M.xm1.m0[vds]
+ @M.xm1.m0[vgs]
+ @M.xm1.m0[vth]
+ @M.xm1.m0[cgg]
+ @M.xm1.m0[cgs]
+ @M.xm1.m0[gds]
+ @M.xm1.m0[gm]
+ @M.xm1.m0[vdsat]

*Simulation
.control

dc VDS 0 3.3 0.01
setplot dc1
plot @M.xm1.m0[id] ylabel Id xlabel Vds
set filetype = binary
write nmos_char_dc_1.raw

reset
dc VGS 0 3.3 0.01
setplot dc2
plot @M.xm1.m0[id] ylabel Id xlabel Vgs
set filetype = binary
write nmos_char_dc_2.raw

reset
op
save all
set filetype = binary
write nmos_char_dc.raw

.endc
.end
"}
C {symbols/nfet_03v3.sym} 240 140 0 0 {name=M1
L=.28u
W=.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/vsource.sym} 110 170 0 0 {name=VGS value=DC\{vgs\}}
C {devices/vsource.sym} 440 170 0 0 {name=VDS value=DC\{vds\}}
C {devices/lab_wire.sym} 170 140 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} 350 40 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/gnd.sym} 280 240 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} 310 -50 0 0 {name=h1
descr=Backannotate 
tclcommand="xschem annotate_op"}
C {devices/ngspice_get_value.sym} 600 -10 0 0 {name=r1 node=i(@M.xm1.m0[id])
descr="Id= "}
C {devices/ngspice_get_value.sym} 700 -10 0 0 {name=r2 node=v(@M.xm1.m0[vds])
descr="Vds= "}
C {devices/ngspice_get_value.sym} 600 70 0 0 {name=r3 node=v(@M.xm1.m0[vgs])
descr="Vgs= "}
C {devices/ngspice_get_value.sym} 700 70 0 0 {name=r4 node=v(@M.xm1.m0[vth])
descr="Vth= "}
C {devices/ngspice_get_value.sym} 590 140 0 0 {name=r5 node=@M.xm1.m0[cgg]
descr="Cgg= "}
C {devices/ngspice_get_value.sym} 690 140 0 0 {name=r6 node=@M.xm1.m0[cgs]
descr="Cgs= "}
C {devices/ngspice_get_value.sym} 590 210 0 0 {name=r7 node=@M.xm1.m0[gds]
descr="gds= "}
C {devices/ngspice_get_value.sym} 690 210 0 0 {name=r8 node=@M.xm1.m0[gm]
descr="gm= "}
C {devices/launcher.sym} 860 -200 0 0 {name=h5
descr="load waves Id vs Vds" 
tclcommand="xschem raw_read $netlist_dir/nmos_char_dc_1.raw dc"
}
C {devices/launcher.sym} 1230 -200 0 0 {name=h2
descr="load waves Id vs Vgs" 
tclcommand="xschem raw_read $netlist_dir/nmos_char_dc_2.raw dc"
}
C {devices/code_shown.sym} 250 -430 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/ngspice_get_value.sym} 600 300 0 0 {name=r9 node=v(@M.xm1.m0[Vdsat])
descr="vdsat="}
