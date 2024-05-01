v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -290 90 -290 {
lab=VSS}
N 170 -210 180 -210 {
lab=OPA1}
N 90 -110 230 -110 {
lab=VDD}
N 230 -110 230 -90 {
lab=VDD}
N 0 -190 10 -190 {
lab=#net1}
N 0 -270 0 -190 {
lab=#net1}
N -80 -270 0 -270 {
lab=#net1}
N -10 -210 10 -210 {
lab=#net2}
N -80 -190 -10 -190 {
lab=#net2}
N -20 -230 10 -230 {
lab=#net3}
N -20 -230 -20 -70 {
lab=#net3}
N -80 -70 -20 -70 {
lab=#net3}
N -140 30 10 30 {
lab=#net4}
N 10 -170 10 30 {
lab=#net4}
N -140 110 200 110 {
lab=VSS}
N 200 100 200 110 {
lab=VSS}
N -70 -290 -70 110 {
lab=VSS}
N -80 -90 -70 -90 {
lab=VSS}
N -80 -210 -70 -210 {
lab=VSS}
N -80 70 120 70 {
lab=#net5}
N 120 -40 120 70 {
lab=#net5}
N 120 -40 130 -40 {
lab=#net5}
N -60 -20 130 -20 {
lab=#net6}
N -60 -210 -60 -20 {
lab=#net6}
N -80 -250 -60 -250 {
lab=#net6}
N -80 -130 -50 -130 {
lab=#net7}
N -50 -120 -50 0 {
lab=#net7}
N -50 0 130 0 {
lab=#net7}
N -80 -30 -40 -30 {
lab=#net8}
N -40 -10 -40 20 {
lab=#net8}
N -40 20 130 20 {
lab=#net8}
N -390 -290 -380 -290 {
lab=RST}
N -400 -270 -380 -270 {
lab=CLK}
N -390 -310 -390 -290 {
lab=RST}
N -420 -270 -400 -270 {
lab=CLK}
N -390 -290 -390 -90 {
lab=RST}
N -390 -90 -380 -90 {
lab=RST}
N -390 -210 -380 -210 {
lab=RST}
N -400 -270 -400 -160 {
lab=CLK}
N -400 -190 -380 -190 {
lab=CLK}
N -400 -160 -400 -70 {
lab=CLK}
N -400 -70 -380 -70 {
lab=CLK}
N -400 -70 -400 70 {
lab=CLK}
N -400 70 -180 70 {
lab=CLK}
N 270 0 280 0 {
lab=Vdiv}
N 90 -290 100 -290 {
lab=VSS}
N 90 -110 90 -100 {
lab=VDD}
N 180 -210 200 -210 {
lab=OPA1}
N 170 -190 190 -190 {
lab=OPA0}
N 180 -210 180 -100 {
lab=OPA1}
N 200 -190 200 -100 {
lab=OPA0}
N 190 -190 200 -190 {
lab=OPA0}
N -60 -250 -60 -210 {
lab=#net6}
N -10 -210 -10 -190 {
lab=#net2}
N -50 -130 -50 -120 {
lab=#net7}
N -40 -30 -40 -10 {
lab=#net8}
N -80 -50 -80 -30 {
lab=#net8}
C {devices/ipin.sym} -60 -340 0 0 {name=p9 lab=CLK}
C {devices/iopin.sym} -40 -340 0 0 {name=p12 lab=VSS
}
C {devices/iopin.sym} 30 -340 0 0 {name=p13 lab=VDD}
C {devices/ipin.sym} -130 -340 0 0 {name=p30 lab=RST}
C {devices/opin.sym} 110 -340 0 0 {name=p18 lab=Vdiv}
C {devices/ipin.sym} -220 -340 0 0 {name=p4 lab=OPA1}
C {devices/ipin.sym} -330 -340 0 0 {name=p8 lab=OPA0}
C {devices/lab_pin.sym} -390 -310 0 0 {name=p5 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -420 -270 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 280 0 2 0 {name=p7 sig_type=std_logic lab=Vdiv}
C {devices/lab_pin.sym} 100 -290 2 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 90 -100 3 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 180 -210 2 0 {name=p10 sig_type=std_logic lab=OPA1}
C {devices/lab_pin.sym} 190 -190 2 0 {name=p14 sig_type=std_logic lab=OPA0}
C {CLK_div_2.sym} -230 -270 0 0 {name=x1}
C {CLK_div_3.sym} -230 -170 0 0 {name=x2}
C {CLK_div_4.sym} -230 -70 0 0 {name=x3}
C {4x1_mux_ibr..sym} -150 110 0 0 {name=x4}
C {decoder_2x4_ibr.sym} 430 -390 2 0 {name=x5}
C {buffer_opd.sym} -200 180 0 0 {name=x6}
