v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 530 -170 530 -150 {
lab=VSS}
N 530 -330 530 -310 {
lab=VNW}
C {designs/digital_cell/local_decoder.sym} 200 -220 0 0 {name=x1 VDD=VDD VNW=VNW VPW=VPW VSS=VSS}
C {std_cells/dffqnq_1.sym} 390 -250 0 0 {name=x2 VDD=VDD VNW=VNW VPW=VPW VSS=VSS}
C {devices/ipin.sym} 70 -380 0 0 {name=p1 lab=Cj}
C {devices/opin.sym} 40 -410 0 0 {name=p2 lab=OUT+}
C {devices/lab_pin.sym} 180 -280 0 0 {name=p3 sig_type=std_logic lab=Ri}
C {devices/lab_pin.sym} 180 -240 0 0 {name=p4 sig_type=std_logic lab=Rk}
C {devices/lab_pin.sym} 240 -320 0 0 {name=p5 sig_type=std_logic lab=Cj}
C {devices/lab_pin.sym} 300 -240 3 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 480 -220 0 0 {name=p7 sig_type=std_logic lab=REF}
C {devices/lab_pin.sym} 530 -170 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 -220 0 1 {name=p9 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 620 -260 0 1 {name=p10 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 530 -310 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 70 -360 0 0 {name=p12 lab=Ri}
C {devices/ipin.sym} 70 -340 0 0 {name=p13 lab=Rk}
C {devices/ipin.sym} 70 -240 0 0 {name=p14 lab=CLK}
C {devices/ipin.sym} 70 -260 0 0 {name=p15 lab=REF}
C {devices/ipin.sym} 70 -310 0 0 {name=p16 lab=VSS}
C {devices/ipin.sym} 70 -290 0 0 {name=p17 lab=VDD}
C {devices/opin.sym} 40 -430 0 0 {name=p18 lab=OUT-}
C {devices/lab_pin.sym} 530 -150 0 0 {name=p19 sig_type=std_logic lab=VPW}
C {devices/lab_pin.sym} 530 -330 0 0 {name=p20 sig_type=std_logic lab=VNW}
C {designs/analog_cell/current_unit.sym} 550 -240 0 0 {name=x3 Mn=1 Wp=0.3u Wn=0.3u}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Junbeom Park"}
