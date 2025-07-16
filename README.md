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

### Why Not only PMOS ?  
Because of **Strong 1** & **Weak 0** . 
Just opposite to NMOS. 
- Provides a full charging path to the capacitor , resulting to strong 1 and a strong pull up network. but for logic 0, limitation of threshold voltage restricts the output to a value greater than zero. Therfore can't provide strong pul down network.  

So to overcome these issues a combination of both NMOS & PMOS is used i.e. CMOS , where **NMOS** circuitry acts as **Pull Down N/W** and **PMOS** acts as **Pull Up N/W**.  
