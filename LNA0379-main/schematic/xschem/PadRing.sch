v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {ESD protection between 
the VCC and GND pads} 1110 -1600 0 0 1 1 {}
T {50 Ohm standard 
for calibration} 1900 -1480 0 0 1 1 {}
N 1460 -1290 1600 -1290 {lab=VEE}
N 1600 -1340 1600 -1290 {lab=VEE}
N 1460 -1340 1460 -1290 {lab=VEE}
N 1300 -1290 1460 -1290 {lab=VEE}
N 1300 -1340 1300 -1290 {lab=VEE}
N 1220 -1290 1300 -1290 {lab=VEE}
N 1220 -1290 1220 -1150 {lab=VEE}
N 1210 -1290 1220 -1290 {lab=VEE}
N 1460 -1150 1600 -1150 {lab=VEE}
N 1600 -1170 1600 -1150 {lab=VEE}
N 1460 -1170 1460 -1150 {lab=VEE}
N 1300 -1150 1460 -1150 {lab=VEE}
N 1300 -1170 1300 -1150 {lab=VEE}
N 1220 -1150 1300 -1150 {lab=VEE}
N 1460 -1410 1600 -1410 {lab=VCC}
N 1600 -1410 1600 -1400 {lab=VCC}
N 1460 -1410 1460 -1400 {lab=VCC}
N 1300 -1410 1460 -1410 {lab=VCC}
N 1300 -1410 1300 -1400 {lab=VCC}
N 1250 -1410 1300 -1410 {lab=VCC}
N 1210 -1410 1250 -1410 {lab=VCC}
N 1460 -1240 1600 -1240 {lab=VCC}
N 1250 -1410 1250 -1240 {lab=VCC}
N 1600 -1240 1600 -1230 {lab=VCC}
N 1460 -1240 1460 -1230 {lab=VCC}
N 1300 -1240 1460 -1240 {lab=VCC}
N 1300 -1240 1300 -1230 {lab=VCC}
N 1250 -1240 1300 -1240 {lab=VCC}
C {sg13g2_pr/nmoscl_4.sym} 1300 -1370 0 0 {name=D1
model=nmoscl_4
m=2
spiceprefix=X
}
C {sg13g2_pr/nmoscl_4.sym} 1460 -1370 0 0 {name=D2
model=nmoscl_4
m=2
spiceprefix=X
}
C {sg13g2_pr/nmoscl_4.sym} 1600 -1370 0 0 {name=D3
model=nmoscl_4
m=2
spiceprefix=X
}
C {sg13g2_pr/nmoscl_4.sym} 1300 -1200 0 0 {name=D4
model=nmoscl_4
m=2
spiceprefix=X
}
C {sg13g2_pr/nmoscl_4.sym} 1460 -1200 0 0 {name=D5
model=nmoscl_4
m=2
spiceprefix=X
}
C {sg13g2_pr/nmoscl_4.sym} 1600 -1200 0 0 {name=D6
model=nmoscl_4
m=2
spiceprefix=X
}
C {iopin.sym} 1210 -1410 2 0 {name=p1 lab=VCC}
C {iopin.sym} 1210 -1290 2 0 {name=p2 lab=VEE}
C {MatchStandard.sym} 2110 -1220 0 0 {name=x1}
C {title-2.sym} 0 0 0 0 {name=l1 author="Andrzej Dudek" rev=1.0 lock=true}
