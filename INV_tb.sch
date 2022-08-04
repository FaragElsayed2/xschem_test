v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 560 -540 680 -540 { lab=GND}
N 630 -540 630 -530 { lab=GND}
N 560 -720 560 -700 { lab=#net1}
N 560 -720 620 -720 { lab=#net1}
N 620 -720 680 -720 { lab=#net1}
N 430 -560 430 -550 { lab=GND}
N 430 -550 450 -550 { lab=GND}
N 430 -630 430 -620 { lab=Vin}
N 560 -700 560 -670 { lab=#net1}
N 540 -720 560 -720 { lab=#net1}
N 540 -720 540 -680 { lab=#net1}
N 540 -540 560 -540 { lab=GND}
N 450 -550 540 -550 { lab=GND}
N 562 -590 562 -540 { lab=GND}
N 539 -580 539 -550 { lab=GND}
N 539 -550 539 -540 { lab=GND}
N 539 -540 540 -540 { lab=GND}
N 650 -630 660 -630 { lab=Vout_nvlt}
N 455 -630 470 -630 { lab=Vin}
N 430 -630 455 -630 { lab=Vin}
N 680 -720 680 -705 { lab=#net1}
N 680 -646.25 680 -540 { lab=GND}
N 660 -630 660 -568.75 { lab=Vout_nvlt}
N 827.5 -530 947.5 -530 { lab=GND}
N 897.5 -530 897.5 -520 { lab=GND}
N 827.5 -710 827.5 -690 { lab=#net2}
N 827.5 -710 887.5 -710 { lab=#net2}
N 887.5 -710 947.5 -710 { lab=#net2}
N 827.5 -690 827.5 -660 { lab=#net2}
N 807.5 -710 827.5 -710 { lab=#net2}
N 807.5 -710 807.5 -670 { lab=#net2}
N 807.5 -530 827.5 -530 { lab=GND}
N 829.5 -580 829.5 -530 { lab=GND}
N 806.5 -570 806.5 -540 { lab=GND}
N 806.5 -540 806.5 -530 { lab=GND}
N 806.5 -530 807.5 -530 { lab=GND}
N 917.5 -620 927.5 -620 { lab=Vout_vltn10}
N 722.5 -620 737.5 -620 { lab=Vin}
N 947.5 -710 947.5 -695 { lab=#net2}
N 947.5 -636.25 947.5 -530 { lab=GND}
N 927.5 -620 927.5 -558.75 { lab=Vout_vltn10}
N 1093.75 -531.25 1213.75 -531.25 { lab=GND}
N 1163.75 -531.25 1163.75 -521.25 { lab=GND}
N 1093.75 -711.25 1093.75 -691.25 { lab=#net3}
N 1093.75 -711.25 1153.75 -711.25 { lab=#net3}
N 1153.75 -711.25 1213.75 -711.25 { lab=#net3}
N 1093.75 -691.25 1093.75 -661.25 { lab=#net3}
N 1073.75 -711.25 1093.75 -711.25 { lab=#net3}
N 1073.75 -711.25 1073.75 -671.25 { lab=#net3}
N 1073.75 -531.25 1093.75 -531.25 { lab=GND}
N 1095.75 -581.25 1095.75 -531.25 { lab=GND}
N 1072.75 -571.25 1072.75 -541.25 { lab=GND}
N 1072.75 -541.25 1072.75 -531.25 { lab=GND}
N 1072.75 -531.25 1073.75 -531.25 { lab=GND}
N 1183.75 -621.25 1193.75 -621.25 { lab=Vout_vltp10}
N 988.75 -621.25 1003.75 -621.25 { lab=Vin}
N 1213.75 -711.25 1213.75 -696.25 { lab=#net3}
N 1213.75 -637.5 1213.75 -531.25 { lab=GND}
N 1193.75 -621.25 1193.75 -560 { lab=Vout_vltp10}
C {devices/vsource.sym} 680 -675 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} 630 -530 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 430 -590 0 1 {name=Vin value="dc pulse(0 1.8 0 1p 1p 100p 200p)"}
C {devices/code_shown.sym} 230 -990 0 0 {name=s1 only_toplevel=false value="
.param vlt = 1.8
.temp -40
.options tnom=-40
*.step param vlt 1.62 1.98 0.18
.measure tran tphl_nvlt TRIG v(Vin) VAL=\{0.5*vlt\} RISE=2 TARG v(Vout_nvlt) VAL=\{0.5*vlt\} FALL=2
.measure tran tplh_nvlt TRIG v(Vin) VAL=\{0.5*vlt\} FALL=1 TARG v(Vout_nvlt) VAL=\{0.5*vlt\} RISE=1
.measure tran tpd_nvlt param = \{(tplh_nvlt+tphl_nvlt)/2\}
.measure tran tphl_vltn10 TRIG v(Vin) VAL=\{0.5*vlt\} RISE=2 TARG v(Vout_vltn10) VAL=\{0.5*0.9*vlt\} FALL=2
.measure tran tplh_vltn10 TRIG v(Vin) VAL=\{0.5*vlt\} FALL=1 TARG v(Vout_vltn10) VAL=\{0.5*0.9*vlt\} RISE=1
.measure tran tpd_vltn10 param = \{(tplh_vltn10+tphl_vltn10)/2\}
.measure tran tphl_vltp10 TRIG v(Vin) VAL=\{0.5*vlt\} RISE=2 TARG v(Vout_vltp10) VAL=\{0.5*1.1*vlt\} FALL=2
.measure tran tplh_vltp10 TRIG v(Vin) VAL=\{0.5*vlt\} FALL=1 TARG v(Vout_vltp10) VAL=\{0.5*1.1*vlt\} RISE=1
.measure tran tpd_vltp10 param = \{(tplh_vltp10+tphl_vltp10)/2\}
.control
tran 1p 400p
plot Vin Vout_nvlt
.endc
"}
C {devices/code.sym} 1150 -920 0 0 {name=MODELS
only_toplevel=false
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /foundry/pdks/skywaters/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

"
spice_ignore=false}
C {INV.sym} 620 -630 0 0 {name=x1}
C {devices/lab_pin.sym} 660 -569 2 1 {name=l3 sig_type=std_logic lab=Vout_nvlt}
C {devices/lab_pin.sym} 455 -630 1 0 {name=l4 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} 947.5 -665 0 0 {name=Vdd1 value=1.62}
C {devices/gnd.sym} 897.5 -520 0 0 {name=l1 lab=GND}
C {INV.sym} 887.5 -620 0 0 {name=x2}
C {devices/lab_pin.sym} 927.5 -559 2 1 {name=l5 sig_type=std_logic lab=Vout_vltn10}
C {devices/lab_pin.sym} 722.5 -620 1 0 {name=l6 sig_type=std_logic lab=Vin}
C {devices/vsource.sym} 1213.75 -666.25 0 0 {name=Vdd2 value=1.98}
C {devices/gnd.sym} 1163.75 -521.25 0 0 {name=l7 lab=GND}
C {INV.sym} 1153.75 -621.25 0 0 {name=x3}
C {devices/lab_pin.sym} 1193.75 -560.25 2 1 {name=l8 sig_type=std_logic lab=Vout_vltp10}
C {devices/lab_pin.sym} 988.75 -621.25 1 0 {name=l9 sig_type=std_logic lab=Vin}
