#! /bin/bash

cd ~  # this will only work in the home directory!
sudo apt update
sudo apt install -y build-essential gcc-multilib lib32z1-dev clang bison flex\
                        libreadline-dev gawk tcl-dev libffi-dev graphviz xdot pkg-config\
                        python3 libboost-system-dev libboost-python-dev libboost-filesystem-dev\
                    zlib1g-dev apache2 git
		    
# Set up Node
wget https://nodejs.org/dist/v10.16.2/node-v10.16.2-linux-x64.tar.xz
tar -xf node-v10.16.2-linux-x64.tar.xz
rm -rf node-v10.16.2-linux-x64.tar.xz
export PATH=~/node-v10.16.2-linux-x64/bin:$PATH

# Set up Yosys
wget -qO- https://github.com/YosysHQ/yosys/archive/yosys-0.8.tar.gz | tar -xzf -
cd ~/yosys-yosys-0.8/
echo "This make may take a long time, so be prepared to wait a while."
sleep 3
make -j16  # If you have issues running yosys, remove the -j16 flag and run this command again
export PATH=~/yosys-yosys-0.8/:$PATH

# Install the simulator
# git clone https://github.com/norandomtechie/ece270-simulator 270sim
cd ~/270sim/open-src-cvc.700c/src
export PATH=~/270sim/open-src-cvc.700c/src:$PATH
make -f makefile.cvc -j16 # one time to build all objects quickly with multithreading
make -f makefile.cvc # two times to link the objects together to form the cvc exe
printf 'export PATH=~/node-v10.16.2-linux-x64/bin:~/yosys-yosys-0.8/:~/270sim/open-src-cvc.700c/src:$PATH\n' >> ~/.bashrc
printf 'alias start_server=". ~/270sim/start_server.sh"\n' >> ~/.bashrc
source ~/.bashrc

# Set up simulator directory as webpage
sudo ln -s ~/270sim /var/www/html/270sim
cd /var/www/html/270sim

# Enable WebSocket routing
sudo a2enmod proxy_wstunnel

# Edit routing settings file
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/bak_000-default.conf
echo "WARNING: Any existing config at /etc/apache2/sites-available/000-default.conf will be backed up to /etc/apache2/sites-available/000-default.bak.conf in the event that you need to restore or merge your old configuration."
sleep 3
sudo cp 000-default-sim.conf /etc/apache2/sites-available/000-default.conf

sudo service apache2 restart

cd ~/270sim
chmod +x start_server.sh
mkdir logging tempcode
. ./start_server.sh main
printf "\nDisplaying logfile:\nIf any output appears after this line that looks like an error, report it as an issue. If not, press Ctrl+C to stop viewing the log for the Node server. You now have the simulator running on http://localhost/270sim!"
tailmainlog
echo "To restart the Node server if needed, enter 'start_server main' into a terminal/WSL session."
