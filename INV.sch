v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 560 -640 560 -620 { lab=Vout}
N 560 -560 560 -540 { lab=GND}
N 560 -720 560 -700 { lab=VDD}
N 560 -720 620 -720 { lab=VDD}
N 510 -630 510 -590 { lab=Vin}
N 510 -590 520 -590 { lab=Vin}
N 510 -670 510 -630 { lab=Vin}
N 510 -670 520 -670 { lab=Vin}
N 560 -590 570 -590 { lab=VNB}
N 560 -670 570 -670 { lab=VPB}
N 560 -630 580 -630 { lab=Vout}
N 560 -540 570 -540 { lab=GND}
N 570 -540 620 -540 { lab=GND}
N 580 -630 650 -630 { lab=Vout}
N 450 -630 510 -630 { lab=Vin}
N 570 -670 620 -670 { lab=VPB}
N 570 -590 620 -590 { lab=VNB}
N 620 -590 660 -590 { lab=VNB}
N 620 -670 660 -670 { lab=VPB}
C {sky130_fd_pr/nfet_01v8.sym} 540 -590 0 0 {name=M1
L=0.15
W=0.42
nf=1 
mult=1
ad="0.1218" 
as="0.1218" 
pd="1.42" 
ps="1.42"
nrd="0.690476" nrs="0.690476"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 540 -670 0 0 {name=M2
L=0.15
W=0.84
nf=1
mult=1
ad="0.2436" 
as="0.2436" 
pd="2.26" 
ps="2.26"
nrd="0.345238" nrs="0.345238"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 450 -630 0 0 {name=p1 lab=Vin}
C {devices/iopin.sym} 620 -540 1 0 {name=p2 lab=GND}
C {devices/iopin.sym} 620 -720 3 0 {name=p3 lab=VDD}
C {devices/opin.sym} 650 -630 0 0 {name=p4 lab=Vout}
C {devices/iopin.sym} 660 -670 3 0 {name=p5 lab=VPB}
C {devices/iopin.sym} 660 -590 1 0 {name=p6 lab=VNB}
