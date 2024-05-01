v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -110 80 -100 {
lab=A}
N 80 -40 80 -30 {
lab=B}
N 40 -70 60 -70 {
lab=VDD}
N 40 -100 40 -70 {
lab=VDD}
N 40 -110 40 -100 {
lab=VDD}
C {symbols/ppolyf_u.sym} 80 -70 0 0 {name=R1
W=0.8e-6
L=100e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 80 -110 2 0 {name=p1 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 80 -30 2 0 {name=p2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 40 -110 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 20 -160 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 100 -160 0 0 {name=p5 lab=A}
C {devices/iopin.sym} 170 -160 0 0 {name=p6 lab=B}
