v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -80 70 -80 {
lab=P}
N 70 -20 100 -20 {
lab=M}
C {devices/lab_pin.sym} 50 -80 2 1 {name=l3 sig_type=std_logic lab=P}
C {devices/lab_pin.sym} 100 -20 0 1 {name=l1 sig_type=std_logic lab=M}
C {devices/iopin.sym} -70 -100 0 0 {name=p1 lab=P}
C {devices/iopin.sym} -70 -60 0 0 {name=p2 lab=M}
C {symbols/cap_mim_2p0fF.sym} 70 -50 0 0 {name=C2
W=30e-6
L=30e-6
model=cap_mim_2f0_m4m5_noshield
spiceprefix=X
m=6}
