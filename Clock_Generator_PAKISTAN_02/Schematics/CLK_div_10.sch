v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 600 150 630 150 {
lab=#net3}
N 600 250 760 250 {
lab=#net4}
N 250 320 360 320 {
lab=Q3}
N 230 0 290 -0 {
lab=Q0}
N 240 200 300 200 {
lab=Q2}
N 230 80 280 80 {
lab=Q1}
N 280 80 280 230 {
lab=Q1}
N 280 230 300 230 {
lab=Q1}
N 300 200 300 210 {
lab=Q2}
N 360 320 740 320 {
lab=Q3}
N 740 270 740 320 {
lab=Q3}
N 1330 230 1350 230 {
lab=VSS}
N 1330 250 1350 250 {
lab=VDD}
N 1330 270 1350 270 {
lab=Vdiv10}
N 930 190 950 190 {
lab=VDD}
N 930 130 930 150 {
lab=VSS}
N 600 110 620 110 {
lab=VSS}
N 600 130 620 130 {
lab=VDD}
N 600 210 620 210 {
lab=VSS}
N 600 230 620 230 {
lab=VDD}
N 950 190 950 210 {
lab=VDD}
N -140 300 -80 300 {
lab=#net5}
N -90 -80 -80 -80 {
lab=CLK}
N -90 40 -90 160 {
lab=Q0}
N -90 160 -90 280 {
lab=Q0}
N -90 280 -80 280 {
lab=Q0}
N -100 -40 -80 -40 {
lab=RST}
N -100 -40 -100 80 {
lab=RST}
N -100 80 -80 80 {
lab=RST}
N -100 80 -100 200 {
lab=RST}
N -100 200 -80 200 {
lab=RST}
N -100 200 -100 320 {
lab=RST}
N -100 320 -80 320 {
lab=RST}
N -110 -60 -80 -60 {
lab=VDD}
N -110 -60 -110 -20 {
lab=VDD}
N -110 -20 -80 -20 {
lab=VDD}
N -110 180 -80 180 {
lab=VDD}
N -110 180 -110 220 {
lab=VDD}
N -110 220 -80 220 {
lab=VDD}
N -110 100 -80 100 {
lab=VDD}
N -110 -20 -110 100 {
lab=VDD}
N -110 100 -110 180 {
lab=VDD}
N -110 340 -80 340 {
lab=VDD}
N -110 220 -110 340 {
lab=VDD}
N -140 280 -110 280 {
lab=VDD}
N -140 260 -120 260 {
lab=VSS}
N 220 340 230 340 {
lab=#net6}
N 230 150 230 340 {
lab=#net6}
N 230 140 230 150 {
lab=#net6}
N -120 140 230 140 {
lab=#net6}
N -120 60 -120 140 {
lab=#net6}
N -120 60 -80 60 {
lab=#net6}
N 220 200 240 200 {
lab=Q2}
N 240 200 240 240 {
lab=Q2}
N -450 240 240 240 {
lab=Q2}
N 220 -40 230 -40 {
lab=Q0}
N 230 -40 230 0 {
lab=Q0}
N -80 30 -80 40 {
lab=Q0}
N -80 0 -80 30 {
lab=Q0}
N -80 0 230 0 {
lab=Q0}
N 220 80 230 80 {
lab=Q1}
N 230 80 230 120 {
lab=Q1}
N -80 120 230 120 {
lab=Q1}
N -80 120 -80 160 {
lab=Q1}
N -460 120 -80 120 {
lab=Q1}
N 220 -80 240 -80 {
lab=VSS}
N 220 -60 240 -60 {
lab=VDD}
N 220 40 240 40 {
lab=VSS}
N 220 60 240 60 {
lab=VDD}
N 220 160 240 160 {
lab=VSS}
N 220 180 240 180 {
lab=VDD}
N 220 280 240 280 {
lab=VSS}
N 220 300 240 300 {
lab=VDD}
N 220 320 250 320 {
lab=Q3}
N -90 40 -80 40 {
lab=Q0}
N 220 -20 240 -20 {
lab=#net7}
N 220 100 240 100 {
lab=#net8}
N 220 220 250 220 {
lab=#net9}
N -450 240 -450 280 {}
N -450 280 -440 280 {}
N -460 120 -460 260 {}
N -460 260 -440 260 {}
N 290 -0 290 130 {}
N 290 130 300 130 {}
N 270 110 300 110 {}
N 270 110 270 200 {}
N 930 170 960 170 {}
N 960 170 960 250 {}
N 960 250 1030 250 {}
N 740 230 740 270 {}
N 740 230 1030 230 {}
N 760 250 760 270 {}
N 760 270 1030 270 {}
C {devices/ipin.sym} 30 -160 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} 60 -160 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 130 -160 0 0 {name=p13 lab=VDD}
C {devices/opin.sym} 200 -160 0 0 {name=p14 lab=Q0}
C {devices/opin.sym} 270 -160 0 0 {name=p27 lab=Q1}
C {devices/ipin.sym} -40 -160 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 450 -160 0 0 {name=p18 lab=Vdiv10}
C {devices/opin.sym} 320 -160 0 0 {name=p16 lab=Q2}
C {devices/opin.sym} 390 -160 0 0 {name=p17 lab=Q3}
C {nor_3.sym} 1180 250 0 0 {name=x9}
C {devices/lab_pin.sym} 1350 230 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1350 250 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1350 270 2 0 {name=p25 sig_type=std_logic lab=Vdiv10}
C {devices/lab_pin.sym} 620 110 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 130 2 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 620 210 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 230 2 0 {name=p31 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 950 210 3 0 {name=p33 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 930 130 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {and_2.sym} 450 130 0 0 {name=x6}
C {and_2.sym} 450 230 0 0 {name=x7}
C {JK_flipflop.sym} 70 -50 0 0 {name=x10}
C {JK_flipflop.sym} 70 70 0 0 {name=x11}
C {JK_flipflop.sym} 70 190 0 0 {name=x12}
C {JK_flipflop.sym} 70 310 0 0 {name=x13}
C {devices/lab_pin.sym} 240 -80 2 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 -60 2 0 {name=p36 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 40 2 0 {name=p37 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 60 2 0 {name=p38 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 160 2 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 180 2 0 {name=p40 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 240 280 2 0 {name=p41 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 240 300 2 0 {name=p42 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -110 340 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -120 260 2 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -100 -40 0 0 {name=p45 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 230 -40 2 0 {name=p46 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 230 80 2 0 {name=p47 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 240 200 2 0 {name=p48 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 250 320 2 0 {name=p49 sig_type=std_logic lab=Q3}
C {devices/lab_pin.sym} -90 -80 0 0 {name=p50 sig_type=std_logic lab=CLK}
C {and_2.sym} -290 280 0 0 {name=x14}
C {devices/noconn.sym} 240 -20 2 0 {name=l4}
C {devices/noconn.sym} 240 100 2 0 {name=l5}
C {devices/noconn.sym} 250 220 2 0 {name=l6}
C {Buffer_Delayed.sym} 780 170 0 0 {name=x1}
