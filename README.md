
# ice40HX8K Verilog Simulator

The ice40HX8K Verilog Simulator is a web interface for enabling easy access to Verilog simulation software to students in Intro to Digital Design courses.

<p align="center">
  <img width=900px src="https://github.com/norandomtechie/ispMACH-Simulator/raw/ice40hx8k_stable/fpga_capture.PNG"/>
</p>

### Introduction:
The site is intended to provide a virtual interface to a modern FPGA to allow students to quickly write, simulate and synthesize their code for use on the actual FPGA + breakout board. The SVG graphic is modeled on an breakout board used on top of the FPGA. Since it can be cumbersome to set up simulation software on one's own computer, the project also provides software to be run on the server in order to "compile" the Verilog code, report syntax errors, and if there are none, instantiate an IcarusVerilog simulation. The simulation is connected via a WebSocket back to the page. From that point, the server remains idle unless the user asserts an input (one the DIP switches in blue, or the two pushbuttons on either side) or an output is asserted during the simulation. When an input is asserted, the webpage sends it back to the server to be registered in the simulation, and when an output is asserted, the server sends it to the webpage, where the JS processes the data and changes the color of the respective LED/character display on the SVG graphic as shown above.

### Features:
- Real-time simulation using IcarusVerilog on a server
- Extremely light CPU and memory usage per simulation
- Able to simulate both combinational and behavioral logic
- Intended to simulate a breakout board for the ice40HX8K FPGA
- Speedy WebSocket connection to quickly exchange I/O on the board

### Technology:
- [Python 3.6+] 
- [MyHDL]
- [psutil]
- [Ubuntu]
- [websocketd]
- [IcarusVerilog]
- [Ace Editor]

### Installation:
#### From scratch:
A lot of the code is oriented around paths used on my own PC, so you may have to change some code when you download it. To get started, first clone the repository:

    git clone https://github.com/norandomtechie/ispMACH-Simulator
cd to the folder and run the following:

    find . -type f -exec sed -i 's/menon18\/ispmach_cgi_approach/$pwd/g' {} \;
TODO

#### Docker container:
Working on this!

   [Python 3.6+]: <https://www.python.org/downloads/>
   [MyHDL]: https://github.com/myhdl/myhdl
   [psutil]: https://pypi.org/project/psutil/
   [Ubuntu]: https://www.ubuntu.com
   [websocketd]: http://websocketd.com
   [IcarusVerilog]: http://iverilog.icarus.com/
   [Ace Editor]: https://ace.c9.io/
