v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -100 90 -80 {lab=vdd}
N 90 -20 90 20 {lab=vout}
N 90 20 200 20 {lab=vout}
N 200 20 200 90 {lab=vout}
N 90 -40 120 -40 {lab=vdd}
N 120 -90 120 -40 {lab=vdd}
N 90 -90 120 -90 {lab=vdd}
N 90 20 90 50 {lab=vout}
N 90 -80 90 -70 {lab=vdd}
N 50 80 50 110 {lab=GND}
N 50 110 90 110 {lab=GND}
N 120 -40 120 80 {lab=vdd}
N 90 80 120 80 {lab=vdd}
C {vsource.sym} -170 60 0 0 {name=V1 value="pulse(0 5.0 0 500ps 500ps 4ns 10ns 5)" savecurrent=false}
C {vsource.sym} -250 60 0 0 {name=V2 value=5 savecurrent=false}
C {gnd.sym} -170 90 0 0 {name=l1 lab=GND}
C {gnd.sym} -250 90 0 0 {name=l2 lab=GND}
C {parax_cap.sym} 200 100 0 0 {name=C1 gnd=0 value=4f m=1}
C {lab_pin.sym} -170 30 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} -250 30 2 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 90 -100 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {/usr/local/share/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/pfet_20v0.sym} 70 -40 0 0 {name=M1
W=60
L=0.5
mult=1
model=pfet_20v0
spiceprefix=X
}
C {gnd.sym} 90 110 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 50 -40 0 0 {name=p4 sig_type=std_logic lab=vin}
C {lab_pin.sym} 200 20 2 0 {name=p5 sig_type=std_logic lab=vout}
C {code_shown.sym} -320 -120 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 100ps 30ns
.save all
.end"}
C {/usr/local/share/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/pfet_20v0.sym} 70 80 0 0 {name=M2
W=60
L=0.5
mult=1
model=pfet_20v0
spiceprefix=X
}
