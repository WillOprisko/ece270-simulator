
# ice40HX8K Verilog Simulator

The ice40HX8K Verilog Simulator is a web interface for enabling easy access to Verilog simulation software to students in Intro to Digital Design courses.

<p align="center">
  <img width=900px src="https://github.com/norandomtechie/ece270-simulator/raw/master/fpga_capture.PNG"/>
</p>

### Introduction:
The site is intended to provide a virtual interface to a modern FPGA to allow students to quickly write, simulate and synthesize their code for use on the actual FPGA + breakout board. The SVG graphic is modeled on an breakout board used on top of the FPGA. Since it can be cumbersome to set up simulation software on one's own computer, the project also provides software to be run on the server in order to "compile" the Verilog code, report syntax errors, and if there are none, instantiate an IcarusVerilog simulation. The simulation is connected via a WebSocket back to the page. From that point, the server remains idle unless the user asserts an input (any of the pushbuttons) or an output is asserted during the simulation. When an input is asserted, the webpage sends it back to the server to be registered in the simulation, and when an output is asserted, the server sends it to the webpage, where the JS processes the data and changes the color of the respective LED/character display on the SVG graphic as shown above.

### Features:
- Real-time gate-level simulation using Yosys and CVC on the server
- Extremely light CPU and memory usage per simulation
- Able to simulate both combinational and behavioral logic
- Intended to simulate a breakout board for the ice40HX8K FPGA
- Low-latency WebSocket connection to quickly display and transmit I/O from/to the board

### Backend software:
- [CVC]
- [YoSys]
- [node.js]
  - [ws]
- [Apache]
- [WSL]

### Installation:
---
Fair warning: This local version is only meant to be run by users familiar with UNIX operations and debugging code issues. 
If you are not familiar with what that means, this may not be the option for you. Having a setup-everything script for beginners
is not currently on the agenda at the moment.
---
#### From scratch:

To get started, follow these instructions to install WSL (Windows Subsystem for Linux) on your own PC.

#### Docker container:
Working on this!

   [CVC]: http://www.tachyon-da.com/what-is-cvc/
   [YoSys]: https://github.com/YosysHQ/yosys
   [node.js]: https://nodejs.org/en/
   [ws]: https://github.com/websockets/ws
   [Apache]: https://help.ubuntu.com/lts/serverguide/httpd.html
   [WSL]: https://docs.microsoft.com/en-us/windows/wsl/install-win10
