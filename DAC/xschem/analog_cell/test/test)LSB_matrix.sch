v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 710 -790 710 -760 {
lab=VDD}
N 850 -790 850 -760 {
lab=VDD}
N 260 -450 420 -450 {
lab=#net1}
N 260 -450 260 -410 {
lab=#net1}
N 620 -530 710 -530 {
lab=OUT+}
N 710 -640 710 -530 {
lab=OUT+}
N 620 -430 850 -430 {
lab=OUT-}
N 850 -640 850 -430 {
lab=OUT-}
N 140 -480 140 -430 {
lab=#net1}
N 140 -370 140 -340 {
lab=0}
N 100 -400 140 -400 {
lab=0}
N 140 -450 190 -450 {
lab=#net1}
N 190 -450 190 -400 {
lab=#net1}
N 180 -400 190 -400 {
lab=#net1}
N 190 -400 260 -400 {
lab=#net1}
N 260 -410 260 -400 {
lab=#net1}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Junbeom Park"}
C {devices/code.sym} -640 -255 0 0 {name=COMMANDS
only_toplevel=false
value="

.options savecurrents

.control
	tran 1u 320u
	plot v(CLK)
	plot i(Vmeas1) i(Vmeas2)
	plot v(Q0) 
	plot v(Q1) 
	plot v(Q2) 
	plot v(Q3)

.endc

.save all
"}
C {devices/lab_pin.sym} 710 -640 0 1 {name=p9 sig_type=std_logic lab=OUT+}
C {devices/lab_pin.sym} 850 -640 0 1 {name=p14 sig_type=std_logic lab=OUT-}
C {devices/lab_pin.sym} 710 -790 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 850 -790 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/res.sym} 710 -730 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 850 -730 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {devices/ammeter.sym} 710 -670 0 0 {name=Vmeas1}
C {devices/ammeter.sym} 850 -670 0 0 {name=Vmeas2}
C {devices/vsource.sym} 1110 -130 0 0 {name=VDD value=3.3}
C {devices/lab_pin.sym} 1110 -100 0 1 {name=p6 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1110 -160 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1180 -130 0 0 {name=VSS
value=0}
C {devices/lab_pin.sym} 1180 -100 0 1 {name=p8 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1180 -160 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -580 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -380 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -430 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} 420 -530 0 0 {name=p3 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 420 -510 0 0 {name=p5 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 420 -490 0 0 {name=p7 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 420 -470 0 0 {name=p13 sig_type=std_logic lab=Q3}
C {devices/vsource.sym} 1305 -400 0 0 {name=V2
*value="pulse 0 3.3 70n 0.1n 0.1n 79.8n 160n"
value="pulse 0 3.3 60u 0.1u 0.1u 79.8u 160u"
*value=0}
C {devices/lab_pin.sym} 1305 -430 0 1 {name=p625 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 1305 -370 2 1 {name=p626 sig_type=std_logic lab=0}
C {devices/vsource.sym} 1305 -310 0 0 {name=V1
*value="pulse 0 3.3 30n 0.1n 0.1n 39.8n 80n"
value="pulse 0 3.3 20u 0.1u 0.1u 39.8u 80u"
*value=0}
C {devices/lab_pin.sym} 1305 -340 0 1 {name=p627 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 1305 -280 2 1 {name=p628 sig_type=std_logic lab=0}
C {devices/vsource.sym} 1305 -220 0 0 {name=V0
*value="pulse 0 3.3 10n 0.1n 0.1n 19.8n 40n"
value="pulse 0 3.3 0 0.1u 0.1u 19.8u 40u"
*value=0}
C {devices/lab_pin.sym} 1305 -250 0 1 {name=p629 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 1305 -190 2 1 {name=p630 sig_type=std_logic lab=0}
C {devices/vsource.sym} 1305 -130 0 0 {name=Vclk
*value="pulse 0 3.3 0 0.1n 0.1n 9.8n 20n"
value="pulse 0 3.3 0u 10n 10n 9.98u 20u"
*value=0}
C {devices/lab_pin.sym} 1305 -100 2 1 {name=p632 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 1305 -160 0 1 {name=p2 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 1305 -490 0 0 {name=V3
*value="pulse 0 3.3 150n 0.1n 0.1n 159.8n 320n"
value="pulse 0 3.3 140u 0.1u 0.1u 159.8u 320u"
*value=0}
C {devices/lab_pin.sym} 1305 -520 0 1 {name=p17 sig_type=std_logic lab=Q3}
C {devices/lab_pin.sym} 1305 -460 2 1 {name=p18 sig_type=std_logic lab=0}
C {devices/code_shown.sym} -640 -500 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.include $::180MCU_REF_7T5V0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
*.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {designs/analog_cell/LSB_matrix.sym} 570 -480 0 0 {name=x1}
C {devices/isource.sym} 140 -510 0 0 {name=I1 value=1.9u}
C {devices/lab_pin.sym} 140 -540 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 160 -400 0 1 {name=M9
L=0.4u
W=0.28u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 140 -340 0 1 {name=p22 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 100 -400 0 0 {name=p23 sig_type=std_logic lab=0}
