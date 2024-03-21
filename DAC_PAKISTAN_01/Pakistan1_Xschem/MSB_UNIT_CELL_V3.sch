v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 -255 580 -255 {
lab=#net1}
N 370 -290 580 -290 {
lab=VSS}
N 240 -290 240 -260 {
lab=#net2}
N 240 -290 330 -290 {
lab=#net2}
N 240 -240 620 -240 {
lab=#net3}
N 620 -290 620 -240 {
lab=#net3}
N 480 -190 510 -190 {
lab=VSS}
N 510 -190 510 -70 {
lab=VSS}
N 480 -100 510 -100 {
lab=VSS}
N 140 -190 140 -70 {
lab=VSS}
N 140 -320 140 -310 {
lab=VDD}
N 480 -65 480 -40 {
lab=VSS}
N 480 -40 480 -35 {
lab=VSS}
N 140 -70 140 -20 {
lab=VSS}
N 140 -20 510 -20 {
lab=VSS}
N 510 -70 510 -20 {
lab=VSS}
N 480 -35 480 -20 {
lab=VSS}
N 480 -155 480 -135 {
lab=#net4}
N 480 -255 480 -225 {
lab=#net1}
N 370 -340 370 -325 {
lab=IOUT+}
N 580 -340 580 -325 {
lab=IOUT-}
N 425 -190 440 -190 {
lab=IM_T}
N 415 -100 440 -100 {
lab=IM}
C {Local_Enc.sym} 90 -250 0 0 {name=x1}
C {devices/iopin.sym} 140 -320 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 510 -70 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 60 -270 0 0 {name=p3 lab=Ri-1}
C {devices/ipin.sym} 60 -250 0 0 {name=p4 lab=Ri}
C {devices/ipin.sym} 60 -230 0 0 {name=p5 lab=Ci}
C {devices/lab_pin.sym} 470 -290 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 425 -190 0 0 {name=p7 lab=IM_T}
C {devices/ipin.sym} 415 -100 0 0 {name=p8 lab=IM}
C {devices/opin.sym} 370 -340 0 0 {name=p9 lab=IOUT+}
C {devices/opin.sym} 580 -340 0 0 {name=p10 lab=IOUT-}
C {nfet_03V3_m128.sym} 480 -100 0 0 {name=x2}
C {nfet_03V3_m128.sym} 480 -190 0 0 {name=x3}
C {nfet_03V3_m128.sym} 370 -290 0 0 {name=x4}
C {nfet_03V3_m128.sym} 580 -290 0 1 {name=x5}
