v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -130 -60 -110 {
lab=P}
N -100 -80 -80 -80 {
lab=VDD}
N -60 -50 -60 -30 {
lab=M}
N 60 -110 80 -110 {
lab=VDD}
C {symbols/ppolyf_u.sym} -60 -80 0 0 {name=R1
W=1.1e-6
L=2.6e-6
model=ppolyf_u
spiceprefix=X
m=75}
C {devices/lab_pin.sym} -100 -80 0 0 {name=l2 sig_type=std_logic lab=VDD
m=1}
C {devices/lab_pin.sym} -60 -130 0 0 {name=l1 sig_type=std_logic lab=P}
C {devices/iopin.sym} -210 -60 0 0 {name=p1 lab=P}
C {devices/iopin.sym} -210 -30 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} -210 20 0 0 {name=p3 lab=M}
C {devices/lab_pin.sym} -60 -30 0 0 {name=l3 sig_type=std_logic lab=M}
C {symbols/ppolyf_u.sym} 80 -80 0 0 {name=R2
W=48.4e-6
L=2.6e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 60 -110 0 0 {name=l4 sig_type=std_logic lab=VDD
m=1}
C {devices/lab_pin.sym} 60 -80 0 0 {name=l5 sig_type=std_logic lab=VDD
m=1}
C {devices/lab_pin.sym} 80 -50 0 0 {name=l6 sig_type=std_logic lab=VDD
m=1}
