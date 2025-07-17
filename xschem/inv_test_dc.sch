v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {vsource.sym} -120 70 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} -40 70 0 0 {name=Vin value=3 savecurrent=false}
C {gnd.sym} 80 60 0 0 {name=l1 lab=GND}
C {code_shown.sym} -270 -140 0 0 {name=vtc only_toplevel=false value=" .lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.dc Vin 0 2 1m
.save all
.end"}
C {gnd.sym} -120 100 0 0 {name=l2 lab=GND}
C {gnd.sym} -40 100 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -120 40 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -40 40 2 0 {name=p5 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 100 -50 1 0 {name=p7 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 170 10 2 0 {name=p8 sig_type=std_logic lab=Vout
}
C {lab_pin.sym} 30 10 0 0 {name=p9 sig_type=std_logic lab=Vin}
C {/home/ap23_27/CMOS_INV/inv_vtc.sym} 130 140 0 0 {name=x1}
