v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} -30 -200 2 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.include $::180MCU_REF_7T5V0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
*.lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/vsource.sym} 170 -120 0 0 {name=VDD value=3.3}
C {devices/lab_pin.sym} 170 -90 0 1 {name=p6 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 170 -150 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 250 -120 0 0 {name=VSS
value=0}
C {devices/lab_pin.sym} 250 -90 0 1 {name=p7 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 250 -150 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 20 -120 0 0 {name=VDD1 value=0}
C {devices/lab_pin.sym} 20 -90 0 1 {name=p9 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 20 -150 0 1 {name=p10 sig_type=std_logic lab=VPW}
C {devices/vsource.sym} 100 -120 0 0 {name=VSS2
value=3.3}
C {devices/lab_pin.sym} 100 -90 0 1 {name=p11 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 100 -150 0 1 {name=p12 sig_type=std_logic lab=VNW
}
C {designs/digital_cell/dec3_7.sym} 190 -520 0 0 {name=x1 VDD=VDD VNW=VNW VPW=VPW VSS=VSS}
C {devices/simulator_commands.sym} -630 -125 0 0 {name=COMMANDS
only_toplevel=false
value="

.control
	tran 0.1n 50n
	plot v(d0)
	plot v(d1)
	plot v(d2)
	plot v(O6)
	plot v(O5)
	plot V(O4)
	plot v(O3)
	plot v(O2)
	plot v(O1)
	plot v(O0)
	write eee.raw
.endc
.save all

"}
C {devices/vsource.sym} 400 -150 0 0 {name=VIN2
value="pwl(0n 0 9.5n 0 10n 3.3 19.5n 3.3 20n 0 29.5n 0 30n 3.3 39.5n 3.3 40n 0)"}
C {devices/vsource.sym} 395 -30 0 0 {name=VIN3 *value=1
value="pwl(0n 0 19.5n 0 20n 3.3 39.5n 3.3 40n 0)"}
C {devices/vsource.sym} 400 -270 0 0 {name=VIN4
value="pwl(0 0 4.5n 0 5n 3.3 9.5n 3.3 10n 0 14.5n 0 15n 3.3 19.5n 3.3 20n 0 24.5n 0 25n 3.3 29.5n 3.3 30n 0 34.5n 0 35n 3.3 39.5n 3.3 40n 0)"}
C {devices/lab_pin.sym} 100 -480 0 0 {name=p14 sig_type=std_logic lab=D0}
C {devices/lab_pin.sym} 400 -240 0 0 {name=p15 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 400 -120 0 0 {name=p16 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 395 0 0 0 {name=p17 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 100 -520 0 0 {name=p18 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} 100 -560 0 0 {name=p19 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} 280 -580 0 1 {name=p20 sig_type=std_logic lab=O6}
C {devices/lab_pin.sym} 280 -560 0 1 {name=p21 sig_type=std_logic lab=O5}
C {devices/lab_pin.sym} 280 -540 0 1 {name=p22 sig_type=std_logic lab=O4}
C {devices/lab_pin.sym} 280 -520 0 1 {name=p23 sig_type=std_logic lab=O3}
C {devices/lab_pin.sym} 280 -500 0 1 {name=p24 sig_type=std_logic lab=O2}
C {devices/lab_pin.sym} 280 -480 0 1 {name=p25 sig_type=std_logic lab=O1}
C {devices/lab_pin.sym} 280 -460 0 1 {name=p26 sig_type=std_logic lab=O0}
C {devices/lab_pin.sym} 395 -60 0 0 {name=p27 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} 400 -180 0 0 {name=p28 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} 400 -300 0 0 {name=p29 sig_type=std_logic lab=D0}
