v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -160 -20 190 {
lab=VDD}
N -20 190 -20 270 {
lab=VDD}
N -20 270 170 270 {
lab=VDD}
N 170 -150 170 270 {
lab=VDD}
N 170 -230 170 -150 {
lab=VDD}
N 170 -230 470 -230 {
lab=VDD}
N 470 -230 470 -160 {
lab=VDD}
N 430 -130 450 -130 {
lab=VDD}
N 430 -180 430 -130 {
lab=VDD}
N 430 -180 470 -180 {
lab=VDD}
N 0 -130 0 -100 {
lab=#net1}
N 0 -40 0 -10 {
lab=#net2}
N -0 50 0 70 {
lab=#net3}
N 0 130 0 160 {
lab=#net4}
N -0 220 0 250 {
lab=#net5}
N 0 250 190 250 {
lab=#net5}
N 190 220 190 250 {
lab=#net5}
N 0 -250 0 -190 {
lab=A}
N 430 -100 470 -100 {}
N 430 -130 430 -100 {}
C {symbols/ppolyf_u.sym} 0 -160 0 0 {name=R1
W=2e-6
L=8e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 0 -70 0 0 {name=R2
W=2e-6
L=8e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 0 20 0 0 {name=R3
W=2e-6
L=8e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 0 100 0 0 {name=R4
W=2e-6
L=8e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 0 190 0 0 {name=R5
W=2e-6
L=8e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 470 -130 0 0 {name=R11
W=2e-6
L=8e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/iopin.sym} 210 -380 0 0 {name=p1 lab=A}
C {devices/iopin.sym} 210 -350 0 0 {name=p2 lab=B}
C {devices/iopin.sym} 210 -320 0 0 {name=p3 lab=VDD}
C {devices/lab_pin.sym} 170 -220 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 0 -230 0 0 {name=p5 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 190 230 0 1 {name=p6 sig_type=std_logic lab=B}
