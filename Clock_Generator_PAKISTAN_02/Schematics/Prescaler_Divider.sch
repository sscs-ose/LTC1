v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -470 600 -470 {
lab=VSS}
N 680 -390 690 -390 {
lab=OPA1}
N 600 -290 740 -290 {
lab=VDD}
N 740 -290 740 -270 {
lab=VDD}
N 510 -370 520 -370 {
lab=#net1}
N 510 -450 510 -370 {
lab=#net1}
N 430 -450 510 -450 {
lab=#net1}
N 500 -390 520 -390 {
lab=#net2}
N 430 -370 500 -370 {
lab=#net2}
N 490 -410 520 -410 {
lab=#net3}
N 490 -410 490 -250 {
lab=#net3}
N 430 -250 490 -250 {
lab=#net3}
N 370 -150 520 -150 {
lab=#net4}
N 520 -350 520 -150 {
lab=#net4}
N 370 -70 710 -70 {
lab=VSS}
N 710 -80 710 -70 {
lab=VSS}
N 440 -470 440 -70 {
lab=VSS}
N 430 -270 440 -270 {
lab=VSS}
N 430 -390 440 -390 {
lab=VSS}
N 430 -110 630 -110 {
lab=#net5}
N 630 -220 630 -110 {
lab=#net5}
N 630 -220 640 -220 {
lab=#net5}
N 450 -200 640 -200 {
lab=#net6}
N 450 -390 450 -200 {
lab=#net6}
N 430 -430 450 -430 {
lab=#net6}
N 430 -310 460 -310 {
lab=#net7}
N 460 -300 460 -180 {
lab=#net7}
N 460 -180 640 -180 {
lab=#net7}
N 430 -210 470 -210 {
lab=#net8}
N 470 -190 470 -160 {
lab=#net8}
N 470 -160 640 -160 {
lab=#net8}
N 120 -470 130 -470 {
lab=RST}
N 110 -450 130 -450 {
lab=CLK}
N 120 -490 120 -470 {
lab=RST}
N 90 -450 110 -450 {
lab=CLK}
N 120 -470 120 -270 {
lab=RST}
N 120 -270 130 -270 {
lab=RST}
N 120 -390 130 -390 {
lab=RST}
N 110 -450 110 -340 {
lab=CLK}
N 110 -370 130 -370 {
lab=CLK}
N 110 -340 110 -250 {
lab=CLK}
N 110 -250 130 -250 {
lab=CLK}
N 110 -250 110 -110 {
lab=CLK}
N 110 -110 330 -110 {
lab=CLK}
N 780 -180 790 -180 {
lab=Vdiv}
N 600 -470 610 -470 {
lab=VSS}
N 600 -290 600 -280 {
lab=VDD}
N 690 -390 710 -390 {
lab=OPA1}
N 680 -370 700 -370 {
lab=OPA0}
N 690 -390 690 -280 {
lab=OPA1}
N 710 -370 710 -280 {
lab=OPA0}
N 700 -370 710 -370 {
lab=OPA0}
N 450 -430 450 -390 {
lab=#net6}
N 500 -390 500 -370 {
lab=#net2}
N 460 -310 460 -300 {
lab=#net7}
N 470 -210 470 -190 {
lab=#net8}
N 430 -230 430 -210 {
lab=#net8}
C {devices/ipin.sym} 450 -520 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} 470 -520 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 540 -520 0 0 {name=p13 lab=VDD}
C {devices/ipin.sym} 380 -520 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 620 -520 0 0 {name=p18 lab=Vdiv}
C {devices/ipin.sym} 290 -520 0 0 {name=p4 lab=OPA1}
C {devices/ipin.sym} 180 -520 0 0 {name=p8 lab=OPA0}
C {devices/lab_pin.sym} 120 -490 0 0 {name=p5 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 90 -450 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 790 -180 2 0 {name=p7 sig_type=std_logic lab=Vdiv}
C {devices/lab_pin.sym} 610 -470 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -280 3 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 690 -390 2 0 {name=p10 sig_type=std_logic lab=OPA1}
C {devices/lab_pin.sym} 700 -370 2 0 {name=p14 sig_type=std_logic lab=OPA0}
C {CLK_div_2.sym} 280 -450 0 0 {name=x1}
C {CLK_div_3.sym} 280 -350 0 0 {name=x2}
C {CLK_div_4.sym} 280 -250 0 0 {name=x3}
C {4x1_mux_ibr..sym} 360 -70 0 0 {name=x4}
C {decoder_2x4_ibr.sym} 940 -570 2 0 {name=x5}
C {buffer_opd.sym} 310 0 0 0 {name=x6}
