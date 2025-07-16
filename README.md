# CMOS Inverter Analysis
An inverter is a logic gate that outputs the opposite of its input.  
- Input = HIGH → Output = LOW
- Input = LOW → Output  = HIGH

CMOS stands for Complementary Metal Oxide Semiconductor. It is called Complementary because it uses two MOSFETs , which are complementary to each other i.e. when one is in ON state then other is in OFF state and vice-versa.  
Two MOSFETs are :  
- NMOS (n-channel MOSFETs)
- PMOS (p-channel MOSFTEs)

## Why use complementary MOS (CMOS) instead of only NMOS or only PMOS?  
- **Rail to Rail output** - Its ability to provide rail-to-rail output voltage levels, achieving output swings that closely match the supply rails. This ensures robust logic levels and maximizes noise margins.
- **Reduced static power consumption** - In purely NMOS or PMOS logic families, static current continuously flows through pull-up or pull-down resistors or transistors even when the circuit is not switching.  
In contrast, CMOS circuits draw negligible static current because at any steady state, either the NMOS or PMOS is off, effectively breaking the path from supply to ground.

### Why Not only NMOS ?  
Because of **Strong 0** & **Weak 1** .  
- **Strong 0** - Whenever NMOS is on , it provides a conducting path to the capacitor to discharge fully to zero through it and Hence providing a strong pull down network.  
- **Weak 1** - It cannot pass the full V<sub>DD</sub> due to the threshold voltage drop. As the output voltage approaches V<sub>DD</sub>, the gate-to-source voltage V<sub>GS</sub> drops below the threshold, causing the NMOS to turn off before reaching a full logic high.

![Inverter Diagram](images/NMOS_as_inv.png)
<p align="center">
  Figure-1 : NMOS as Inverter
</p>

### Why Not only PMOS ?  
Because of **Strong 1** & **Weak 0** . 
Just opposite to NMOS. 
- Provides a full charging path to the capacitor , resulting to strong 1 and a strong pull up network. but for logic 0, limitation of threshold voltage restricts the output to a value greater than zero. Therfore can't provide strong pul down network.

![Inverter Diagram](images/PMOS_as_inv.png)
<p align="center">
  Figure-2 : PMOS as Inverter
</p>  

## Why CMOS ?
So to overcome these issues a combination of both NMOS & PMOS is used i.e. CMOS , where **NMOS** circuitry acts as **Pull Down N/W** and **PMOS** acts as **Pull Up N/W**.  
Since, PMOS is a Strong 1, we put it between VDD and Vout and NMOS being a STRONG 0, it is placed between Vout and GND. This way, either can act as a load to the other transistor.  
This is referred to as Complementary Metal Oxide Semiconductor(CMOS) Configuration and representing the simplest CMOS circuit known as the CMOS Inverter.

## Schematic, Simulation & Layout
### Tools Used : 
- Xschem - Schematic Capture
- NGSPICE - Spice Netlist Simulation
- Magic - Layout & DRC

## **Schematic** 
![Inverter Diagram](images/INV_Sch_sym.png)
<p align="center">
  Figure-3 : Inverter Symbol 
</p><br>

Here, in this schematic, a symbol is also created and named as NOT for further uses. The Design Parameters are as follows:  
![Inverter Diagram](images/Design_para.png)
<p align="center">
  Figure-4 : Design Parameters of NMOS & PMOS
</p><br>  

## **Simulation**
## DC Analysis  
DC analysis is a type of simulation that calculates the steady-state voltages and currents in a circuit when all inputs are constant.
It is done to plot the voltage transfer characteristics (VTC). In this Vin is swept from Low to High voltage to determine the working of circuit or we can say plot of Vout. The following plot is observed when simulated:

![Inverter Diagram](images/VTC.png)
<p align="center">
  Figure-5 : Voltage Transfer Characteristics (VTC) 
</p>    


#### **Trip Point (or Switching Threshold) of an Inverter**  
- The trip point of a CMOS inverter is the input voltage at which the output voltage switches from HIGH to LOW (or vice versa) — i.e., when both NMOS and PMOS are conducting equally.We can also denote trip point by input voltage at which vin = vout.
  
So, in the above image we can see that trip point(vm) = 0.8698V. For ideal cases , it should be around 0.9V i.e. vdd/2.  
The trip point is primarily set by the relative strengths (W/L ratios). So, now analyzing the effects of (W/L) ratio of PMOS & NMOS on Trip Point.  

<p align="center">
  <img src="images/tp_ratio3.png" alt="Image 1" width="45%" style="margin-right: 10px;"/>
  <img src="images/tp_ratio4.png" alt="Image 2" width="45%"/>
</p>  
<p align="center">
  Figure-6(a) : w<sub>p</sub>/w<sub>n</sub> , vm=0.8930V   &    Figure 6(b) : w<sub>p</sub>/w<sub>n</sub> = 4 , vm=0.905
</p>  

So , we can say that as PMOS gets stronger (or w<sub>p</sub>/w<sub>n</sub> increases) then trip point move towards its ideal value i.e. vdd/2 .  

### Noise Margin Analysis
It is the margin (or range) for the noise to cause a fluctuation in input but there is no change in the output.  
Terms related to Noise margin:
- V<sub>IL</sub> - Maximum input voltage that can be considered as logic LOW (0).
- V<sub>IH</sub> - Minimum input voltage that can be considered as logic HIGH (1).
- V<sub>OH</sub> - Minimum voltage the inverter outputs when trying to represent logic HIGH (1).
- V<sub>OL</sub> - Maximum voltage the inverter outputs when trying to represent logic LOW (0).  

![Inverter Diagram](images/noise_margin.png)
<p align="center">
  Figure-7 : Noise Margin Analysis
</p><br>  


![Inverter Diagram](images/voh_vol.png)
<p align="center">
  Figure-8 : Finding V<sub>OH</sub> and V<sub>OL</sub> 
</p><br>

Based on the above two figures, we can estimate that :

- V<sub>IL</sub> = 0.7835V
- V<sub>IH</sub> = 1.0334V
- V<sub>OH</sub> = 1.7464V
- V<sub>OL</sub> = 0.0690V

So, the two values of Noise Margin (or Noise Immunity):
- NM<sub>L</sub>(Noise Margin for LOW) =  V<sub>IL</sub> - V<sub>OL</sub> = 0.7835 - 0.0690 = 0.7145V
- NM<sub>H</sub>(Noise Margin for HIGH) =  V<sub>OH</sub> - V<sub>IH</sub> = 1.7464 - 1.0334 = 0.7130V

Generally, for w<sub>p</sub>/w<sub>n</sub> = 3.5 or 4 ,Noise Margin is nearly symmetrical i.e. NM<sub>L</sub> = NM<sub>H</sub> . 

## Transient Analysis  
Transient analysis is a type of simulation used to study how voltages and currents in a circuit change over time, especially during the switching or response to a change in input.  
### Delay Analysis
In this section, Four terms are widely used:  
- T<sub>PLH</sub> = Time difference between 50% of the input and 50% of the output when output goes from low to high. 
- T<sub>PHL</sub> = Time difference between 50% of the input and 50% of the output when output goes from low to high.
- T<sub>r</sub> = time taken by output to reach 90% from 10% of its max value.
- T<sub>f</sub> = time taken by output to reach 10% from 90% of its max value.  <br>  
![Inverter Diagram](images/delay.jpg)
<p align="center">
  Figure-9 : Delays in an Inverter
</p><br>

![Inverter Diagram](images/tplh_tphl.png)
<p align="center">
  Figure-10 : Propagation Delay 
</p><br>
With reference to above diagram, we can estimate that T<sub>PLH</sub> = 0.4594 nS & T<sub>PHL</sub> = 0.3272 nS . But this propagation delay depends on the input applied , which can be a clock input or input from any other inverter. So this delay changes, if there is any change in the input.
Now, what happens to propagation delay if the rise and fall time of the input V<sub>in</sub> changes.  

![Inverter Diagram](images/tplh_tphl_2.png)
<p align="center">
  Figure-11 : Propagation Delay When V<sub>in</sub> is changed
</p><br>
Above Picture clearly states that T<sub>PLH</sub> & T<sub>PHL</sub> changes as there is some change in input.
T<sub>PLH</sub> = 0.4594 nS & T<sub>PHL</sub> = 0.3272 nS . As a result increasing the rise and fall time of input increases the propagation delay.

Whenever there is a need of isolated analysis of inverter then we go with rise & fall time of output waveform instead of propagation delay.  <br>  
![Inverter Diagram](images/tr_tf.png)
<p align="center">
  Figure-12 : Rise Time & Fall Time
</p><br>
