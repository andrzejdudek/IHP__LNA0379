v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {50 Ohm standard realized as 2 parallel resistor array.
Each array has equivalent resistance of 100 Ohms.} 1190 -1110 0 0 1 1 {}
N 1860 -1380 1910 -1380 {lab=signal}
N 1810 -1290 1860 -1290 {lab=signal}
N 1860 -1380 1860 -1290 {lab=signal}
N 1810 -1380 1860 -1380 {lab=signal}
N 1880 -1270 1910 -1270 {lab=signal_ref}
N 1810 -1360 1880 -1360 {lab=signal_ref}
N 1880 -1360 1880 -1270 {lab=signal_ref}
N 1810 -1270 1880 -1270 {lab=signal_ref}
C {MatchResistorArray.sym} 1660 -1370 0 0 {name=x1}
C {MatchResistorArray.sym} 1660 -1280 0 0 {name=x2}
C {iopin.sym} 1910 -1380 0 0 {name=p1 lab=signal}
C {iopin.sym} 1910 -1270 0 0 {name=p2 lab=signal_ref}
C {title-2.sym} 0 0 0 0 {name=l1 author="Andrzej Dudek" rev=1.0 lock=true}
