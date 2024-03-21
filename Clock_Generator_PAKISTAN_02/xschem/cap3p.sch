v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -410 100 -390 {
lab=Pp}
N 100 -330 100 -310 {
lab=Nn}
C {symbols/cap_mim_2p0fF.sym} 100 -360 0 0 {name=C1
W=42.5e-6
L=42.5e-6
model=cap_mim_2f0_m4m5_noshield
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 100 -410 0 0 {name=p1 sig_type=std_logic lab=Pp}
C {devices/lab_pin.sym} 100 -320 0 0 {name=p2 sig_type=std_logic lab=Nn}
C {devices/iopin.sym} 30 -450 0 0 {name=p3 lab=Pp}
C {devices/iopin.sym} 100 -450 0 0 {name=p4 lab=Nn}
