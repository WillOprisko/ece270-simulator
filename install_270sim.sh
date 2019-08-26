#! /bin/bash

# Update Debian distro
cd ~  # this will only work in the home directory!
echo "1.1 --- Updating apt repos..."
sudo apt-get update -qq
echo "1.2 --- Installing prerequisites... (may take some time)"
sudo apt-get install -y build-essential gcc-multilib lib32z1-dev clang bison flex zlib1g-dev\
                    	libreadline-dev gawk tcl-dev libffi-dev graphviz xdot pkg-config apache2\
                    	python3 libboost-system-dev libboost-python-dev libboost-filesystem-dev git > /dev/null
		   
# Set up Node
echo
echo "2.1 --- Setting up node.js..."
wget -q https://nodejs.org/dist/v10.16.2/node-v10.16.2-linux-x64.tar.xz
tar -xf node-v10.16.2-linux-x64.tar.xz
rm -rf node-v10.16.2-linux-x64.tar.xz
export PATH=~/node-v10.16.2-linux-x64/bin:$PATH

# Set up Yosys
echo "2.2 --- Setting up Yosys..."
wget -qO- https://github.com/YosysHQ/yosys/archive/yosys-0.8.tar.gz | tar -xzf -
cd ~/yosys-yosys-0.8/
echo "This make may take a long time, so be prepared to wait a while."
echo "If you have issues running yosys after this setup, remove the -j16 flag from the make command in this script and run it again."
sleep 3
make -j$(nproc)
export PATH=~/yosys-yosys-0.8/:$PATH

# Install the simulator
echo "2.3 --- Setting up CVC..."
cd ~/270sim/open-src-cvc.700c/src
export PATH=~/270sim/open-src-cvc.700c/src:$PATH
make -f makefile.cvc -j$(nproc) # one time to build all objects quickly with multithreading
make -f makefile.cvc # two times to link the objects together to form the cvc exe
printf 'export PATH=~/node-v10.16.2-linux-x64/bin:~/yosys-yosys-0.8/:~/270sim/open-src-cvc.700c/src:$PATH\n' >> ~/.bashrc
printf 'alias start_server=". ~/270sim/start_server.sh"\n' >> ~/.bashrc
source ~/.bashrc

# Set up simulator directory as webpage
echo "2.4 --- Setting up Apache..."
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

echo
echo "3.0 --- Spinning up node websocket server..."
cd ~/270sim
chmod +x start_server.sh
mkdir logging tempcode
. ./start_server.sh main
echo "   --- Script complete! ---"
echo "If the page shows 'server is down', enter 'cd ~/270sim; . ./start_server main' into a terminal/WSL session to start the node server again."
