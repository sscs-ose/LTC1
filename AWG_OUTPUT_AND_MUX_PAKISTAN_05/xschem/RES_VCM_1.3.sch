v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -60 80 -20 {
lab=VDD}
N 80 310 80 350 {
lab=VSS}
N 60 10 60 280 {
lab=VDD}
N 450 50 470 50 {
lab=VDD}
N 470 20 470 50 {
lab=VDD}
N 420 20 470 20 {
lab=VDD}
N 420 20 420 30 {
lab=VDD}
N 330 20 420 20 {
lab=VDD}
N 330 20 330 30 {
lab=VDD}
N 300 20 300 50 {
lab=VDD}
N 300 20 330 20 {
lab=VDD}
N 390 20 390 50 {
lab=VDD}
N 360 20 360 50 {
lab=VDD}
N 80 160 80 190 {
lab=VCM_1.3}
C {symbols/ppolyf_u.sym} 80 10 0 0 {name=R1
W=1e-6
L=8.5e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 80 70 0 0 {name=R2
W=1e-6
L=8.5e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 80 130 0 0 {name=R3
W=1e-6
L=8.5e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 80 220 0 0 {name=R4
W=1e-6
L=8.5e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 80 280 0 0 {name=R5
W=1e-6
L=8.5e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 420 50 1 0 {name=R6
W=1e-6
L=8.5e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 330 50 1 0 {name=R7
W=1e-6
L=8.5e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/iopin.sym} -340 -80 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -260 -80 0 0 {name=p5 lab=VSS}
C {devices/iopin.sym} -170 -80 0 0 {name=p6 lab=VCM_1.3}
C {devices/lab_pin.sym} 310 20 1 0 {name=p9 sig_type=std_logic lab=VDD
L=3.9e-6}
C {devices/lab_pin.sym} 80 -40 2 0 {name=p1 sig_type=std_logic lab=VDD
L=3.9e-6}
C {devices/lab_pin.sym} 80 330 2 0 {name=p2 sig_type=std_logic lab=VSS
L=3.9e-6}
C {devices/lab_pin.sym} 60 100 0 0 {name=p3 sig_type=std_logic lab=VDD
L=3.9e-6}
C {devices/lab_pin.sym} 80 180 2 0 {name=p7 sig_type=std_logic lab=VCM_1.3
L=3.9e-6}
