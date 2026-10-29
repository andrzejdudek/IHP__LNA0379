v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {5 parallel 500 Ohm resistors
with dummy resistor on each 
side of the resistor array} 1760 -1370 0 0 1 1 {}
N 1330 -1240 1330 -1110 {lab=p2}
N 1330 -1430 1330 -1300 {lab=p1}
N 1320 -1430 1330 -1430 {lab=p1}
N 1320 -1110 1330 -1110 {lab=p2}
C {sg13g2_pr/rppd.sym} 1330 -1270 0 0 {name=R1
w=10e-6
l=19e-6
model=rppd
body=sub!
spiceprefix=X
b=0
 m=5
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13g2_pr/rppd.sym} 1190 -1270 0 0 {name=R2
w=10e-6
l=19e-6
model=rppd
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13g2_pr/rppd.sym} 1480 -1270 0 0 {name=R3
w=10e-6
l=19e-6
model=rppd
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {iopin.sym} 1320 -1430 2 0 {name=p1 lab=p1}
C {iopin.sym} 1320 -1110 2 0 {name=p4 lab=p2}
C {title-2.sym} 0 0 0 0 {name=l1 author="Andrzej Dudek" rev=1.0 lock=true}
C {noconn.sym} 1190 -1300 1 0 {name=l2}
C {noconn.sym} 1190 -1240 3 0 {name=l3}
C {noconn.sym} 1480 -1240 3 0 {name=l4}
C {noconn.sym} 1480 -1300 1 0 {name=l5}
