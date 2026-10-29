v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 660 -400 1460 0 {flags=graph
y2=20
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=999015
x2=1.768173e+11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="re(s11db)
re(s12db)
re(s21db)
re(s22db)"
color="7 10 8 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/TB_D-band_amplifier.raw
sim_type=sp
autoload=1
y1=-20}
B 2 660 10 1460 410 {flags=graph
y1=0
y2=20
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=999015
x2=1.768173e+11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="re(nf)
re(nfmin)"
color="8 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/TB_D-band_amplifier.raw
autoload=1
sim_type=sp}
B 2 660 420 1460 820 {flags=graph
y1=0
y2=20
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=999015
x2=1.768173e+11
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="re(k)
re(delta)"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=sp
autoload=1
rawfile=$netlist_dir/TB_D-band_amplifier.raw}
N 20 80 20 100 {lab=GND}
N -480 20 -480 40 {lab=GND}
N -480 -60 -480 -40 {lab=#net1}
N 20 -100 20 -80 {lab=VCC}
N -480 -140 -480 -120 {lab=VCC}
N -280 -40 -280 -30 {lab=#net2}
N -280 30 -280 40 {lab=#net3}
N 170 -40 290 -40 {lab=#net4}
N 290 -40 290 -30 {lab=#net4}
N 170 40 290 40 {lab=#net5}
N 290 30 290 40 {lab=#net5}
N -280 -40 -130 -40 {lab=#net2}
N -280 40 -130 40 {lab=#net3}
C {gnd.sym} 20 100 0 0 {name=l1 lab=GND}
C {gnd.sym} -480 40 0 0 {name=l2 lab=GND}
C {vsource.sym} -480 -10 0 0 {name=V1 value=2.5 savecurrent=false}
C {vsource.sym} -280 0 0 0 {name=V2 value="DC 0 AC 0 portnum 1 z0 100" savecurrent=false}
C {vsource.sym} 290 0 0 0 {name=V3 value="DC 0 AC 0 portnum 2 z0 100" savecurrent=false}
C {vdd.sym} -480 -140 0 0 {name=l3 lab=VCC}
C {vdd.sym} 20 -100 0 0 {name=l4 lab=VCC}
C {ammeter.sym} -480 -90 2 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {simulator_commands_shown.sym} -1180 120 0 0 {
        name=Libs_Ngspice
        simulator=ngspice
        only_toplevel=false
        value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include EM_2_ports.lib
.include EM_3_ports.lib
.include rlgc_models.lib
"
      }
C {code_shown.sym} -780 120 0 0 {name=s1 only_toplevel=false value="
.param supply=2.5
#.options savecurrents
.param temp=27

.control
save all
op
let pdc = abs(i(vmeas) * vcc)
echo $&pdc
write TB_D-band_amplifier.raw
set appendwrite

sp dec 101 1MEG 180G 1
let z0 = 100
let s11db = db(S_1_1)
let s21db = db(S_2_1)
let s12db = db(S_1_2)
let s22db = db(S_2_2)
let zin = z_1_1 - (z_1_2 * z_2_1)/(z_2_2 + z0)
let zout = z_2_2 - (z_1_2 * z_2_1)/(z_1_1 + z0)
let k = (1 - mag(S_1_1)^2 - mag(S_2_2)^2 + mag(S_1_1*S_2_2 - S_1_2*S_2_1)^2) / (2*mag(S_1_2)*mag(S_2_1))
let delta = mag(S_1_1 * S_2_2 - S_1_2 * S_2_1)
meas sp k_min MIN k
meas sp delta_max MAX delta
#meas sp nf140 FIND nf AT=140G
#meas sp nfmin140 FIND nfmin AT=140G
#meas sp gain140 FIND s21db AT=140G
meas sp nf120 FIND nf AT=120G
meas sp nfmin120 FIND nfmin AT=120G
meas sp gain120 FIND s21db AT=120G
meas sp gain_max MAX s21db
write TB_D-band_amplifier.raw
.endc
"}
C {devices/launcher.sym} -1110 390 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {launcher.sym} -1110 340 0 0 {name=h1
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
file mkdir $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {launcher.sym} -1110 440 0 0 {name=h5
descr="load waves" 
tclcommand="
xschem raw_read $netlist_dir/TB_D-band_amplifier.raw sp
xschem raw_read $netlist_dir/TB_D-band_amplifier.raw op
"
}
C {LNA0379_core.sym} 20 0 0 0 {name=x1}
