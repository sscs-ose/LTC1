v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -410 100 -390 {
lab=P}
N 100 -330 100 -310 {
lab=N}
C {symbols/cap_mim_2p0fF.sym} 100 -360 0 0 {name=C1
W=25e-6
L=25e-6
model=cap_mim_2f0_m4m5_noshield
spiceprefix=X
m=64}
C {devices/lab_pin.sym} 100 -410 0 0 {name=p1 sig_type=std_logic lab=P}
C {devices/lab_pin.sym} 100 -320 0 0 {name=p2 sig_type=std_logic lab=N}
C {devices/iopin.sym} 30 -450 0 0 {name=p3 lab=P}
C {devices/iopin.sym} 100 -450 0 0 {name=p4 lab=N}
