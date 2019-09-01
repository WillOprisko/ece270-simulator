#! /bin/bash

if [[ $# -ne 1 ]]
then
    echo "No args provided: main or dev?"
    echo "Usage: "
    echo "start_server [main|dev]"
else
    cd ~/270sim
    time="$(date "+%F-%T")"
    if [[ "$1" = "main" ]]
    then
	pkill -9 cvc
        ps axf | grep "sudo node /home/menon18/270sim/js_cvc_interface_prod.js" | grep -v grep | awk '{print "kill -9 " $1}' | sh
        echo "Starting main server at $time"
        sudo node ~/270sim/js_cvc_interface_prod.js 2>&1 > ~/270sim/logging/main_"$time" &
	alias nanomainlog="nano ~/270sim/logging/main_$time"
	alias tailmainlog="tail -f ~/270sim/logging/main_$time"
	printf "alias nanomainlog=\"nano ~/270sim/logging/main_$time\"\nalias tailmainlog=\"tail -f ~/270sim/logging/main_$time\"\n" > sourcelogs
    else if [[ "$1" = "dev" ]] 
         then
   	    pkill -9 cvc
	    ps axf | grep "sudo node /home/menon18/270sim/js_cvc_interface.js" | grep -v grep | awk '{print "kill -9 " $1}' | sh
            echo "Starting dev server at $time"
            sudo node ~/270sim/js_cvc_interface.js 2>&1 > ~/270sim/logging/dev_"$time" &
    	    alias nanodevlog="nano ~/270sim/logging/dev_$time"
    	    alias taildevlog="tail -f ~/270sim/logging/dev_$time"
	    printf "alias nanodevlog=\"nano ~/270sim/logging/dev_$time\"\nalias taildevlog=\"tail -f ~/270sim/logging/dev_$time\"\n" > sourcelogs
         fi
    fi
    cd - > /dev/null
fi

