v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -50 20 -30 {
lab=P}
N 20 30 20 50 {
lab=M}
N -20 0 0 -0 {
lab=VDD}
N 90 -20 170 -20 {
lab=P}
N 90 -40 90 -20 {
lab=P}
N 20 -40 90 -40 {
lab=P}
N 120 10 150 10 {
lab=VDD}
N 70 40 170 40 {
lab=P}
N 70 -40 70 40 {
lab=P}
C {symbols/ppolyf_u.sym} 20 0 0 0 {name=R1
W=1.1e-6
L=195e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/lab_pin.sym} -20 0 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 20 -50 0 0 {name=l1 sig_type=std_logic lab=P}
C {devices/lab_pin.sym} 20 50 0 0 {name=l3 sig_type=std_logic lab=M}
C {devices/iopin.sym} -210 -60 0 0 {name=p1 lab=P}
C {devices/iopin.sym} -210 -30 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} -210 20 0 0 {name=p3 lab=M}
C {symbols/ppolyf_u.sym} 170 10 0 0 {name=R2
W=48.4e-6
L=2.6e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 130 10 0 0 {name=l4 sig_type=std_logic lab=VDD}
