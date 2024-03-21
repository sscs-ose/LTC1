v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -70 60 -40 {
lab=r1}
N 60 -70 100 -70 {
lab=r1}
N 60 20 60 60 {
lab=r2}
N 60 60 110 60 {
lab=r2}
N -30 -10 40 -10 {
lab=VDD}
C {symbols/ppolyf_u.sym} 60 -10 0 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/lab_wire.sym} 80 -70 0 0 {name=p1 sig_type=std_logic lab=r1}
C {devices/lab_wire.sym} 90 60 0 0 {name=p2 sig_type=std_logic lab=r2}
C {devices/lab_wire.sym} 0 -10 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 220 -120 0 0 {name=p4 lab=r1}
C {devices/iopin.sym} 220 -90 0 0 {name=p5 lab=r2}
C {devices/iopin.sym} 220 -60 0 0 {name=p6 lab=VDD}
