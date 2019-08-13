
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

### Installation (in beta, use with caution):
---
*Fair warning*: This local version is only meant to be run by users familiar with UNIX operations and debugging code issues. 
If you are not familiar with what that means, this may not be the option for you. Having a setup-everything script for beginners
is not currently on the agenda at the moment.

---
#### From scratch:

If you're running Linux, go straight to Step 2.

1. To get started, [follow these instructions](https://docs.microsoft.com/en-us/windows/wsl/install-win10) to install WSL (Windows Subsystem for Linux) on your own PC. If you're an ECE student who prefers to run Windows, using WSL is a great start to get familiar with the UNIX environment. 

2. For Linux users, open up a Terminal. For Windows users, open Start, type in Ubuntu (if you installed the 
Ubuntu distro, otherwise the name of the distro you installed) and let it open up a new terminal.

3. Type in the following (hit Enter after each one):

      ```bash
        sudo apt update
        sudo apt install -y build-essential nodejs gcc-multilib lib32z1-dev clang bison flex\
	                        libreadline-dev gawk tcl-dev libffi-dev git graphviz xdot pkg-config\
	                        python3 libboost-system-dev libboost-python-dev libboost-filesystem-dev\
                            zlib1g-dev apache2 yosys
        git clone https://github.com/norandomtechie/ece270-simulator 270sim
        cd 270sim
        npm install ws
        cd ~
      ```

      Type in `yosys` to start a prompt. If it appears with a prompt like this:
      ```
        /----------------------------------------------------------------------------\
        |                                                                            |
        |  yosys -- Yosys Open SYnthesis Suite                                       |
        |                                                                            |
        |  Copyright (C) 2012 - 2016  Clifford Wolf <clifford@clifford.at>           |
        |                                                                            |
        |  Permission to use, copy, modify, and/or distribute this software for any  |
        |  purpose with or without fee is hereby granted, provided that the above    |
        |  copyright notice and this permission notice appear in all copies.         |
        |                                                                            |
        |  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES  |
        |  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF          |
        |  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR   |
        |  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    |
        |  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN     |
        |  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF   |
        |  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.            |
        |                                                                            |
        \----------------------------------------------------------------------------/
      ```
      You've done it correctly!

4. Head to the [OSS CVC download request site](https://us8.list-manage.com/subscribe?u=97b9cb8f1ee56931d99fb8bb2&id=e50190c696) to request a copy of the CVC simulation software. You will receive a download
link in the email you provide. It's provided as a .tar.bz2 archive. Windows users will need to move it into WSL, and you can do so by typing in: 
`
  "mv /mnt/c/Users/<YOUR USERNAME HERE>/Downloads/open_src_cvc_700c_tar.bz2 ~/cvc.tar.bz2".
` 
You may need to change the path to the tar.bz2 archive accordingly. Linux users should change the name to cvc.tar.bz2 and move it to home as well, just so you don't have to type in a very long name.

5. Type in: 

      ```bash
      # Assuming you moved the bz2 archive here
      cd ~
      tar xjf ~/cvc.tar.bz2
      
      # may be different, run 'ls' to check what the folder name is
      cd open-src-cvc.700c/src    

      # this adds executables produced by make to the PATH so they can be found later
      export BAKPATH=$PATH
      export PATH=~/open-src-cvc.700c/src:$PATH
      
      # After setting some extra options, build CVC
      sed -i 's/$(OPTFLGS)/$(OPTFLGS) -fPIC -no-pie/g' makefile.cvc64
      make -f makefile.cvc64
      export PATH=$BAKPATH
      sudo mv cvc64 /usr/bin/cvc
      ```

      While it compiles, you may see quite a large list of warnings. That's expected and does not affect CVC's operation.
      Once it's done, type in `cvc` into the prompt. If you see something like this:
      ```
      OSS_CVC_7.00b-x86_64-rhel6x of 07/07/14 (Linux-elf).
      Copyright (c) 1991-2014 Tachyon Design Automation Corp.
        All Rights reserved.  Licensed software subject to prohibitions and
        restrictions.  See OSS CVC artistic license included with release.
      Today is Wed Aug  7 21:50:10 2019.
      **FATAL ERROR** [301] no Verilog input files specified
      ```

      Then it's working. If you get an error saying it couldn't find CVC, simply reopen the Terminal (or Ubuntu). That will refresh the PATH variable properly and allow it to find cvc in /usr/bin.

6. Now, you have to set a symbolic link that allows you to view the webpage in your browser locally, and route the WebSocket connection from that page to the node.js server. To do this, run the following:
      ```bash
      # Create symbolc link
      sudo ln -s ~/270sim /var/www/html/270sim
      cd /var/www/html/270sim
      find . -type f -exec chmod +x {} \;
      find . -type f -exec chmod o+x {} \;
      find . -type f -exec chmod o+r {} \;

      # Enable WebSocket routing
      cd ~
      sudo a2enmod proxy_wstunnel

      # Edit routing settings file
      sudo nano /etc/apache2/sites-available/000-default.conf
      ```

      In the file that opens up, edit the text so it looks like this:
      ```        
        <VirtualHost *:80>
        # Some stuff will be present here, ignore it
        ...

        # Add lines below right before the </VirtualHost> tag.
        
        ProxyRequests Off
        ProxyPass /270sim/wss ws://localhost:8765 retry=0 keepAlive=On
        ProxyPassReverse /270sim/wss ws://localhost:8765 retry=0

        </VirtualHost>
      ```
    Press Ctrl+X, then Y to save the file and exit. Back at the prompt, restart Apache2 with `sudo service apache2 restart`. If no output appears, you've successfully set up the webpage!

    Now for the node.js websocket server. cd back to 270sim with `cd ~/270sim`, and run 

    ```
      chmod +x start_server.sh; 
      ./start_server main         # Should say "starting main server at <current time>"
      tailmainlog                 # No output should appear here. Press ctrl+c to stop watching the log. 
    ```

    That's it! Visit http://localhost/270sim in your browser to run the simulator!

   [CVC]: http://www.tachyon-da.com/what-is-cvc/
   [YoSys]: https://github.com/YosysHQ/yosys
   [node.js]: https://nodejs.org/en/
   [ws]: https://github.com/websockets/ws
   [Apache]: https://help.ubuntu.com/lts/serverguide/httpd.html
   [WSL]: https://docs.microsoft.com/en-us/windows/wsl/install-win10
