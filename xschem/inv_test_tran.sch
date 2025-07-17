v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {vsource.sym} -70 90 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} 10 90 0 0 {name=Vin value="PULSE(0 1.8 0 0.3n 0.3n 10n 20n 10)" savecurrent=false}
C {gnd.sym} 130 80 0 0 {name=l1 lab=GND}
C {code_shown.sym} -220 -120 0 0 {name=vtc only_toplevel=false value=" .lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.02n 40n
.save all
.end"}
C {gnd.sym} -70 120 0 0 {name=l2 lab=GND}
C {gnd.sym} 10 120 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -70 60 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 10 60 2 0 {name=p5 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 150 -30 1 0 {name=p7 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 220 30 2 0 {name=p8 sig_type=std_logic lab=Vout
}
C {lab_pin.sym} 80 30 0 0 {name=p9 sig_type=std_logic lab=Vin}
C {/home/ap23_27/CMOS_INV/inv_vtc.sym} 180 160 0 0 {name=x1}
C {parax_cap.sym} 220 40 0 0 {name=C1 gnd=0 value=4f m=1}
