#  Digital Clock on FPGA (Verilog | Nexys A7 | Vivado)

##  Overview
This project implements a real-time digital clock on an FPGA using a modular datapath and control-path architecture. The design performs second, minute, and hour counting using combinational and sequential logic, and displays the time on a seven-segment display after binary-to-BCD conversion. A custom clock divider generates a stable 1 Hz signal from the 100 MHz onboard clock of the Nexys A7 FPGA board.

---

## Tools & Technologies
- **Verilog HDL**
- **Xilinx Vivado Design Suite**
- **Nexys A7 FPGA Board (Artix-7 XC7A100T-CSG324)**
- Seven-Segment Displays

---

##  Key Features
- Structured **datapath + control-path architecture**
- Real-time timekeeping with **second, minute, hour counters**
- **Binary-to-BCD conversion** for display compatibility
- **Clock division** from 100 MHz → 1 Hz
- Fully **FPGA-validated** using Vivado Hardware Manager
- Clean and modular Verilog RTL

---


## System Architecture

###  **1. Datapath**
The datapath performs the core operations required to maintain time:
- **Second counter** (00–59)  
- **Minute counter** (00–59)  
- **Hour counter** (00–23)  
- **Registers** for storing current values  
- **Adders** for increment logic  
- **Multiplexers** for value selection  
- **Binary-to-BCD converter**  
- **Seven-segment encoder**  

This ensures the clock performs all arithmetic and data handling functions.

---

###  **2. Control Path**
The control path generates control signals such as:
- Enable signals for second, minute, and hour counters  
- Reset signals for rollover conditions
  - 59 → 00 for seconds  
  - 59 → 00 for minutes  
  - 23 → 00 for hours  
- Digit enable signals for multiplexed display  
- Update pulses based on the 1 Hz clock  

The control path ensures proper sequencing and synchronizes the datapath components.

---

###  **3. Clock Divider**
The Nexys A7 board provides a **100 MHz clock**.  
A custom divider reduces it to **1 Hz**, enabling real-time updates.

Divider responsibilities:
- Count 100,000,000 cycles  
- Generate a 1 Hz pulse  
- Maintain stable timing  
- Drive all counter modules synchronously  

---

###  **4. Display Module**
Shows HH:MM:SS using:
- Binary-to-BCD conversion  
- BCD-to-seven-segment encoding  
- Display multiplexing at high frequency  
- Digit scanning with enable signals  

This ensures flicker-free and readable display output.

---

### Block Diagram :
![Alt Text](Images/block_diagram.png)

 ---
 
## How to Run on Vivado / FPGA
1. Clone this repository  
2. Open **Xilinx Vivado** → Create a new project  
3. Add all `.v` files from the `src/` folder  
4. Add the `constraints/` XDC file  
5. Run:
   - Synthesis  
   - Implementation  
   - Bitstream Generation  
6. Connect the **Nexys A7** board and program it using Vivado  
7. The seven-segment display shows real-time HH:MM:SS  

 ---

### Schematic :
![Alt Text](Images/schematic.png)

 ---
### Simulation Result :
![Alt Text](Images/Simulation.png)

---

###  FPGA Implementation :
![Alt Text](Images/fpga_demo.png)


---

## License
This project is licensed under the **MIT License**.  
See the `LICENSE` file for details.

---

##  Author
**Ravanam V S M Sesha Suresh**  
B.Tech Electronics & Communication Engineering  
RGUKT – Nuzvid
