v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 100 -60 100 {
lab=VIN}
N -130 150 -60 150 {
lab=PH1}
N -150 -100 -100 -100 {
lab=VIN}
N 40 -100 100 -100 {
lab=#net1}
N 100 -110 140 -110 {
lab=#net1}
N 100 -60 140 -60 {
lab=PH2}
N 100 -60 100 -40 {
lab=PH2}
N 80 -40 100 -40 {
lab=PH2}
N 300 -80 340 -80 {
lab=PH1A}
N 400 -160 400 -120 {
lab=VDD}
N 400 -40 400 -10 {
lab=VSS}
N 190 -170 190 -130 {
lab=VDD}
N 190 -20 190 10 {
lab=VSS}
N -40 -170 -40 -140 {
lab=VDD}
N -40 -60 -40 -30 {
lab=VSS}
N 970 -150 970 -120 {
lab=VDD}
N 970 -40 970 -20 {
lab=VSS}
N 1050 -80 1080 -80 {
lab=PH1}
N 750 60 750 90 {
lab=VDD}
N 750 170 750 200 {
lab=VSS}
N 180 50 180 90 {
lab=VDD}
N 180 170 180 210 {
lab=VSS}
N -10 50 -10 80 {
lab=VDD}
N -10 190 -10 230 {
lab=VSS}
N 590 -160 590 -120 {
lab=VDD}
N 590 -40 590 -10 {
lab=VSS}
N 780 -160 780 -120 {
lab=VDD}
N 780 -40 780 -10 {
lab=VSS}
N 370 50 370 90 {
lab=VDD}
N 370 170 370 200 {
lab=VSS}
N 560 50 560 90 {
lab=VDD}
N 560 170 560 200 {
lab=VSS}
N 830 130 900 130 {
lab=PH2}
N 100 -110 100 -100 {
lab=#net1}
N 270 -80 300 -80 {
lab=PH1A}
N 70 130 120 130 {
lab=#net2}
N 260 130 310 130 {
lab=#net3}
N 450 130 500 130 {
lab=#net4}
N 640 130 690 130 {
lab=#net5}
N 660 -80 720 -80 {
lab=#net6}
N 860 -80 910 -80 {
lab=#net7}
N 480 -80 530 -80 {
lab=#net8}
C {devices/iopin.sym} -40 -170 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -40 -30 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -150 -100 2 1 {name=p3 lab=VIN}
C {devices/opin.sym} 1080 -80 0 0 {name=p4 lab=PH1}
C {devices/opin.sym} 900 130 0 0 {name=p5 lab=PH2}
C {devices/lab_pin.sym} 190 -170 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 10 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 400 -160 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 970 -150 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 750 60 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 50 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -10 50 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -10 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 970 -20 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 750 200 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 210 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -10 230 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -130 150 0 0 {name=p19 sig_type=std_logic lab=PH1}
C {devices/lab_pin.sym} -130 100 0 0 {name=p20 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 80 -40 0 0 {name=p21 sig_type=std_logic lab=PH2}
C {devices/lab_pin.sym} 590 -160 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 590 -10 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 780 -160 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 780 -20 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 370 50 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 370 200 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 50 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 560 200 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/Inverter.sym} -10 -30 0 0 {name=x1}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/Inverter.sym} 1000 -10 0 0 {name=x10}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/Inverter.sym} 780 200 0 0 {name=x11}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/INV_16x.sym} 70 -30 0 0 {name=x3}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/INV_16x.sym} 260 -30 0 0 {name=x4}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/INV_16x.sym} 450 -30 0 0 {name=x6}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/INV_16x.sym} -150 180 0 0 {name=x7}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/INV_16x.sym} 40 180 0 0 {name=x8}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/INV_16x.sym} 230 180 0 0 {name=x9}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/NOR.sym} 240 -70 0 0 {name=x2}
C {/home/shahid/GF180Projects/Tapeout/Xschem/Logic_Gates/NOR.sym} 40 140 0 0 {name=x5}
