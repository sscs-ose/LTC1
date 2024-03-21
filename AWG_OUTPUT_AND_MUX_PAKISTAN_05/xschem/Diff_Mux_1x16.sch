v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 340 -740 340 -680 {
lab=VDD}
N 340 -420 340 -370 {
lab=VSS}
N 170 -550 240 -550 {
lab=VOUTB}
N 450 -650 510 -650 {
lab=A0B}
N 450 -630 510 -630 {
lab=A1B}
N 450 -610 510 -610 {
lab=A2B}
N 450 -590 510 -590 {
lab=A3B}
N 450 -570 510 -570 {
lab=A4B}
N 450 -550 510 -550 {
lab=A5B}
N 450 -530 510 -530 {
lab=A6B}
N 450 -510 510 -510 {
lab=A7B}
N 450 -510 510 -510 {
lab=A7B}
N 450 -490 510 -490 {
lab=S0}
N 450 -470 510 -470 {
lab=S1}
N 450 -450 510 -450 {
lab=S2}
N 780 -740 780 -680 {
lab=VDD}
N 780 -420 780 -370 {
lab=VSS}
N 610 -550 680 -550 {
lab=VOUT}
N 890 -650 950 -650 {
lab=A0}
N 890 -630 950 -630 {
lab=A1}
N 890 -610 950 -610 {
lab=A2}
N 890 -590 950 -590 {
lab=A3}
N 890 -570 950 -570 {
lab=A4}
N 890 -550 950 -550 {
lab=A5}
N 890 -530 950 -530 {
lab=A6}
N 890 -510 950 -510 {
lab=A7}
N 890 -510 950 -510 {
lab=A7}
N 890 -490 950 -490 {
lab=S0}
N 890 -470 950 -470 {
lab=S1}
N 890 -450 950 -450 {
lab=S2}
C {mux_1.sym} 110 -500 0 0 {name=x1}
C {devices/lab_wire.sym} 340 -390 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 340 -720 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 190 -550 0 0 {name=p2 sig_type=std_logic lab=VOUTB}
C {devices/lab_wire.sym} 490 -650 0 0 {name=p7 sig_type=std_logic lab=A0B}
C {devices/lab_wire.sym} 490 -630 0 0 {name=p8 sig_type=std_logic lab=A1B}
C {devices/lab_wire.sym} 490 -610 0 0 {name=p9 sig_type=std_logic lab=A2B}
C {devices/lab_wire.sym} 490 -590 0 0 {name=p10 sig_type=std_logic lab=A3B}
C {devices/lab_wire.sym} 490 -570 0 0 {name=p11 sig_type=std_logic lab=A4B}
C {devices/lab_wire.sym} 490 -550 0 0 {name=p12 sig_type=std_logic lab=A5B}
C {devices/lab_wire.sym} 490 -510 0 0 {name=p14 sig_type=std_logic lab=A7B}
C {devices/lab_wire.sym} 490 -490 0 0 {name=p15 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} 490 -470 0 0 {name=p16 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} 490 -450 0 0 {name=p17 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} 490 -530 0 0 {name=p18 sig_type=std_logic lab=A6B}
C {mux_1.sym} 550 -500 0 0 {name=x2}
C {devices/lab_wire.sym} 780 -390 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 780 -720 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 630 -550 0 0 {name=p5 sig_type=std_logic lab=VOUT}
C {devices/lab_wire.sym} 930 -650 0 0 {name=p13 sig_type=std_logic lab=A0}
C {devices/lab_wire.sym} 930 -630 0 0 {name=p19 sig_type=std_logic lab=A1}
C {devices/lab_wire.sym} 930 -610 0 0 {name=p20 sig_type=std_logic lab=A2}
C {devices/lab_wire.sym} 930 -590 0 0 {name=p21 sig_type=std_logic lab=A3}
C {devices/lab_wire.sym} 930 -570 0 0 {name=p22 sig_type=std_logic lab=A4}
C {devices/lab_wire.sym} 930 -550 0 0 {name=p23 sig_type=std_logic lab=A5}
C {devices/lab_wire.sym} 930 -510 0 0 {name=p24 sig_type=std_logic lab=A7}
C {devices/lab_wire.sym} 930 -490 0 0 {name=p25 sig_type=std_logic lab=S0}
C {devices/lab_wire.sym} 930 -470 0 0 {name=p26 sig_type=std_logic lab=S1}
C {devices/lab_wire.sym} 930 -450 0 0 {name=p27 sig_type=std_logic lab=S2}
C {devices/lab_wire.sym} 930 -530 0 0 {name=p28 sig_type=std_logic lab=A6}
C {devices/iopin.sym} -120 -720 2 0 {name=p55 lab=VDD}
C {devices/iopin.sym} -120 -690 2 0 {name=p56 lab=VSS}
C {devices/iopin.sym} -120 -660 2 0 {name=p57 lab=A0}
C {devices/iopin.sym} -120 -630 2 0 {name=p58 lab=A1}
C {devices/iopin.sym} -120 -600 2 0 {name=p59 lab=A2}
C {devices/iopin.sym} -120 -570 2 0 {name=p60 lab=A3}
C {devices/iopin.sym} -120 -540 2 0 {name=p61 lab=A4}
C {devices/iopin.sym} -120 -510 2 0 {name=p62 lab=A5}
C {devices/iopin.sym} -120 -480 2 0 {name=p63 lab=A6}
C {devices/iopin.sym} -120 -450 2 0 {name=p64 lab=A7}
C {devices/ipin.sym} -120 -410 0 0 {name=p65 lab=S0}
C {devices/ipin.sym} -120 -380 0 0 {name=p66 lab=S1}
C {devices/ipin.sym} -120 -350 0 0 {name=p67 lab=S2}
C {devices/iopin.sym} -20 -660 2 0 {name=p68 lab=VOUT}
C {devices/iopin.sym} -310 -660 2 0 {name=p29 lab=A0B}
C {devices/iopin.sym} -310 -630 2 0 {name=p30 lab=A1B}
C {devices/iopin.sym} -310 -600 2 0 {name=p31 lab=A2B}
C {devices/iopin.sym} -310 -570 2 0 {name=p32 lab=A3B}
C {devices/iopin.sym} -310 -540 2 0 {name=p33 lab=A4B}
C {devices/iopin.sym} -310 -510 2 0 {name=p34 lab=A5B}
C {devices/iopin.sym} -310 -480 2 0 {name=p35 lab=A6B}
C {devices/iopin.sym} -310 -450 2 0 {name=p36 lab=A7B}
C {devices/iopin.sym} -210 -660 2 0 {name=p40 lab=VOUTB}
