v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 330 -60 330 -30 {lab=Vout}
N 330 -50 450 -50 {lab=Vout}
N 450 -50 450 -10 {lab=Vout}
N 330 0 380 0 {lab=GND}
N 380 0 380 40 {lab=GND}
N 330 30 330 40 {lab=GND}
C {/usr/local/share/pdk/sky130B/libs.tech/xschem/sky130_fd_pr/nfet_05v0_nvt.sym} 310 0 0 0 {name=M2
W=1
L=0.9
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_05v0_nvt
spiceprefix=X
}
C {res.sym} 330 -90 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 330 40 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 330 -120 1 0 {name=p1 sig_type=std_logic lab=Vdd
}
C {lab_pin.sym} 290 0 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {parax_cap.sym} 450 0 0 0 {name=C1 gnd=0 value=4f m=1}
C {lab_pin.sym} 450 -50 2 0 {name=p3 sig_type=std_logic lab=Vout
}
C {vsource.sym} 60 10 0 0 {name=V1 value="Pulse(5.0 0 500ps 500ps 4ns 10ns 5)" savecurrent=false}
C {vsource.sym} -20 10 0 0 {name=V2 value=5 savecurrent=false}
C {lab_pin.sym} -20 -20 2 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 60 -20 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {gnd.sym} 60 40 0 0 {name=l3 lab=GND}
C {gnd.sym} -20 40 0 0 {name=l4 lab=GND}
C {gnd.sym} 380 40 0 0 {name=l5 lab=GND}
C {code_shown.sym} -30 -120 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 100ps 10ns
.save all
.end"}
