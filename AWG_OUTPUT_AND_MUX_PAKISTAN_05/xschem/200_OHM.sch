v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 240 -390 290 {
lab=VDD}
N -350 240 -350 270 {
lab=VDD}
N -290 240 -290 270 {
lab=VDD}
N -280 240 -280 270 {
lab=VDD}
N -220 240 -220 270 {
lab=VDD}
N -220 240 -200 240 {
lab=VDD}
N -200 240 -200 270 {
lab=VDD}
N -140 240 -140 270 {
lab=VDD}
N -140 240 -130 240 {
lab=VDD}
N -130 240 -130 270 {
lab=VDD}
N -70 240 -70 270 {
lab=VDD}
N -70 240 -60 240 {
lab=VDD}
N -390 290 -30 290 {
lab=VDD}
N -940 -170 -940 -140 {
lab=COMMON}
N -940 -140 -150 -140 {
lab=COMMON}
N -150 -160 -150 -140 {
lab=COMMON}
N -260 -160 -260 -140 {
lab=COMMON}
N -360 -160 -360 -140 {
lab=COMMON}
N -470 -160 -470 -140 {
lab=COMMON}
N -580 -160 -580 -140 {
lab=COMMON}
N -700 -160 -700 -140 {
lab=COMMON}
N -810 -160 -810 -140 {
lab=COMMON}
N -940 -250 -940 -230 {
lab=R1_IN}
N -940 -250 -150 -250 {
lab=R1_IN}
N -150 -250 -150 -220 {
lab=R1_IN}
N -810 -250 -810 -220 {
lab=R1_IN}
N -810 -250 -700 -250 {
lab=R1_IN}
N -700 -250 -700 -220 {
lab=R1_IN}
N -700 -250 -700 -220 {
lab=R1_IN}
N -700 -250 -580 -250 {
lab=R1_IN}
N -580 -250 -580 -220 {
lab=R1_IN}
N -470 -250 -470 -220 {
lab=R1_IN}
N -360 -250 -360 -220 {
lab=R1_IN}
N -260 -250 -260 -220 {
lab=R1_IN}
N -940 -10 -940 20 {
lab=R2_IN}
N -940 20 -150 20 {
lab=R2_IN}
N -150 0 -150 20 {
lab=R2_IN}
N -260 0 -260 20 {
lab=R2_IN}
N -360 0 -360 20 {
lab=R2_IN}
N -470 0 -470 20 {
lab=R2_IN}
N -580 0 -580 20 {
lab=R2_IN}
N -700 0 -700 20 {
lab=R2_IN}
N -810 0 -810 20 {
lab=R2_IN}
N -940 -90 -940 -70 {
lab=COMMON}
N -940 -90 -150 -90 {
lab=COMMON}
N -150 -90 -150 -60 {
lab=COMMON}
N -810 -90 -810 -60 {
lab=COMMON}
N -810 -90 -700 -90 {
lab=COMMON}
N -700 -90 -700 -60 {
lab=COMMON}
N -700 -90 -700 -60 {
lab=COMMON}
N -700 -90 -580 -90 {
lab=COMMON}
N -580 -90 -580 -60 {
lab=COMMON}
N -470 -90 -470 -60 {
lab=COMMON}
N -360 -90 -360 -60 {
lab=COMMON}
N -260 -90 -260 -60 {
lab=COMMON}
N -180 -140 -180 -90 {
lab=COMMON}
N -170 -190 -170 -30 {
lab=VDD}
N -280 -190 -280 -30 {
lab=VDD}
N -380 -190 -380 -30 {
lab=VDD}
N -490 -190 -490 -30 {
lab=VDD}
N -600 -190 -600 -30 {
lab=VDD}
N -720 -190 -720 -30 {
lab=VDD}
N -830 -190 -830 -30 {
lab=VDD}
N -960 -200 -960 -40 {
lab=VDD}
N -280 -100 -170 -100 {
lab=VDD}
N -380 -100 -280 -100 {
lab=VDD}
N -490 -100 -380 -100 {
lab=VDD}
N -600 -100 -490 -100 {
lab=VDD}
N -720 -100 -600 -100 {
lab=VDD}
N -830 -100 -720 -100 {
lab=VDD}
N -960 -100 -830 -100 {
lab=VDD}
N -1020 -100 -960 -100 {
lab=VDD}
N -940 -290 -940 -250 {
lab=R1_IN}
N -1000 -290 -940 -290 {
lab=R1_IN}
N -940 20 -940 50 {
lab=R2_IN}
N -1000 50 -940 50 {
lab=R2_IN}
N -390 240 -70 240 {
lab=VDD}
C {devices/lab_pin.sym} -1010 -100 0 0 {name=p1 sig_type=std_logic lab=VDD
L=3.9e-6}
C {devices/iopin.sym} -240 -340 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} -160 -340 0 0 {name=p5 lab=R1_IN}
C {devices/iopin.sym} -70 -340 0 0 {name=p6 lab=COMMON}
C {devices/iopin.sym} 40 -340 0 0 {name=p25 lab=R2_IN}
C {devices/lab_pin.sym} -990 -290 3 1 {name=p2 sig_type=std_logic lab=R1_IN
L=3.9e-6}
C {devices/lab_pin.sym} -990 50 1 1 {name=p3 sig_type=std_logic lab=R2_IN
L=3.9e-6}
C {symbols/ppolyf_u.sym} -320 270 3 0 {name=R28
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -250 270 3 0 {name=R29
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -170 270 3 0 {name=R30
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -100 270 3 0 {name=R31
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/lab_pin.sym} -380 290 3 0 {name=p9 sig_type=std_logic lab=VDD
L=3.9e-6}
C {symbols/ppolyf_u.sym} -940 -200 0 0 {name=R6
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -810 -190 0 0 {name=R7
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -700 -190 0 0 {name=R8
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -580 -190 0 0 {name=R9
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -470 -190 0 0 {name=R12
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -360 -190 0 0 {name=R13
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -260 -190 0 0 {name=R14
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -150 -190 0 0 {name=R15
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {devices/lab_pin.sym} -180 -110 2 0 {name=p7 sig_type=std_logic lab=COMMON
L=3.9e-6}
C {symbols/ppolyf_u.sym} -810 -30 0 0 {name=R1
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -700 -30 0 0 {name=R2
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -580 -30 0 0 {name=R3
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -470 -30 0 0 {name=R4
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -360 -30 0 0 {name=R5
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -260 -30 0 0 {name=R10
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -150 -30 0 0 {name=R11
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} -940 -40 0 0 {name=R16
W=1e-6
L=3.9e-6
model=ppolyf_u
spiceprefix=X
m=1}
