v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -230 620 -210 {
lab=VDD}
N 640 -80 640 -60 {
lab=VSS}
N 710 -130 730 -130 {
lab=#net1}
N 550 -170 570 -170 {
lab=VDD}
N 550 -120 570 -120 {
lab=#net2}
N 620 -340 620 -320 {
lab=VDD}
N 640 -490 640 -470 {
lab=VSS}
N 710 -420 730 -420 {
lab=#net3}
N 710 -380 730 -380 {
lab=#net4}
N 550 -380 570 -380 {
lab=VDD}
N 550 -430 570 -430 {
lab=#net5}
N 660 -340 660 -210 {
lab=#net6}
N 1050 -360 1050 -330 {
lab=VDD}
N 1040 -230 1040 -210 {
lab=VSS}
N 1100 -290 1130 -290 {
lab=#net4}
N 730 -380 1010 -380 {
lab=#net4}
N 1130 -380 1130 -290 {
lab=#net4}
N 1100 -270 1130 -270 {
lab=#net7}
N 1130 -270 1130 -170 {
lab=#net7}
N 720 -170 1010 -170 {
lab=#net7}
N 710 -170 720 -170 {
lab=#net7}
N 360 -430 390 -430 {
lab=VREF}
N 370 -120 390 -120 {
lab=VDIV}
N 830 -280 850 -280 {
lab=#net6}
N 950 -280 970 -280 {
lab=#net8}
N 1010 -380 1130 -380 {
lab=#net4}
N 1010 -170 1130 -170 {
lab=#net7}
N 910 -240 910 -220 {
lab=VSS}
N 910 -340 910 -320 {
lab=VDD}
N 440 -50 440 -30 {
lab=VSS}
N 440 -200 440 -180 {
lab=VDD}
N 440 -180 440 -170 {
lab=VDD}
N 440 -60 440 -50 {
lab=VSS}
N 440 -360 440 -340 {
lab=VSS}
N 440 -510 440 -490 {
lab=VDD}
N 440 -490 440 -480 {
lab=VDD}
N 440 -370 440 -360 {
lab=VSS}
N 660 -280 830 -280 {
lab=#net6}
N 970 -280 975 -280 {
lab=#net8}
N 1040 -230 1050 -230 {
lab=VSS}
N 1050 -330 1055 -330 {
lab=VDD}
N 1130 -170 1160 -170 {
lab=#net7}
N 1130 -380 1160 -380 {
lab=#net4}
N 1200 -340 1200 -320 {
lab=VDD}
N 1190 -450 1190 -430 {
lab=VSS}
N 1190 -240 1190 -220 {
lab=VSS}
N 1200 -130 1200 -120 {
lab=VDD}
N 1260 -170 1280 -170 {
lab=PD}
N 1260 -380 1280 -380 {
lab=PU}
C {DFF.sym} 280 -140 0 0 {name=x1}
C {devices/lab_pin.sym} 620 -230 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 640 -60 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 550 -170 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {DFF.sym} 280 -410 2 1 {name=x2}
C {devices/lab_pin.sym} 620 -320 2 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 640 -490 2 1 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 550 -380 2 1 {name=p6 sig_type=std_logic lab=VDD}
C {NAND.sym} 1020 -250 0 1 {name=x3}
C {devices/lab_pin.sym} 1050 -360 2 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1040 -210 2 1 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 360 -430 2 1 {name=p11 sig_type=std_logic lab=VREF
}
C {devices/lab_pin.sym} 370 -120 2 1 {name=p12 sig_type=std_logic lab=VDIV
}
C {devices/iopin.sym} 610 -580 0 0 {name=p13 lab=VDD}
C {devices/iopin.sym} 700 -580 0 0 {name=p14 lab=VSS}
C {devices/ipin.sym} 840 -580 0 0 {name=p15 lab=VREF}
C {devices/ipin.sym} 920 -580 0 0 {name=p16 lab=VDIV}
C {devices/opin.sym} 950 -580 0 0 {name=p17 lab=PU}
C {devices/opin.sym} 1030 -580 0 0 {name=p18 lab=PD}
C {devices/noconn.sym} 730 -130 2 0 {name=l1}
C {devices/noconn.sym} 730 -420 2 0 {name=l2}
C {devices/lab_pin.sym} 910 -340 2 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 910 -220 2 1 {name=p20 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 440 -200 2 1 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 440 -30 2 1 {name=p23 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 440 -510 2 1 {name=p25 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 440 -340 2 1 {name=p26 sig_type=std_logic lab=VSS
}
C {buffer_loading.sym} 1120 -300 0 0 {name=x4}
C {buffer_loading.sym} 1120 -90 0 0 {name=x8}
C {devices/lab_pin.sym} 1200 -330 2 1 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1200 -120 2 1 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1190 -450 2 1 {name=p27 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1190 -240 2 1 {name=p28 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1270 -380 2 0 {name=p29 sig_type=std_logic lab=PU}
C {devices/lab_pin.sym} 1270 -170 2 0 {name=p30 sig_type=std_logic lab=PD}
C {inv_PFD.sym} -50 10 0 0 {name=x6}
C {inv_PFD.sym} -50 -300 0 0 {name=x7}
C {buffer_PFD.sym} 970 -170 0 1 {name=x5}
