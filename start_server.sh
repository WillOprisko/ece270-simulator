#! /bin/bash

if [[ $# -ne 1 ]]
then
    echo "No args provided: main or dev?"
    echo "Usage: "
    echo "start_server [main|dev]"
    exit 0
else
    time="$(date "+%F-%T")"
    if [[ "$1" = "main" ]]
    then
        ps axf | grep "node /home/menon18/nodejs_cvc/js_cvc_interface_prod.js" | grep -v grep | awk '{print "kill -9 " $1}' | sh
        echo "Starting main server at $time"
        node ~/nodejs_cvc/js_cvc_interface_prod.js 2>&1 > ~/nodejs_cvc/logging/main_"$time" &
	alias nanomainlog="nano ~/nodejs_cvc/logging/main_$time"
	alias tailmainlog="tail -f ~/nodejs_cvc/logging/main_$time"
    else if [[ "$1" = "dev" ]] 
         then
	    ps axf | grep "node /home/menon18/nodejs_cvc/js_cvc_interface.js" | grep -v grep | awk '{print "kill -9 " $1}' | sh
            echo "Starting dev server at $time"
            node ~/nodejs_cvc/js_cvc_interface.js 2>&1 > ~/nodejs_cvc/logging/dev_"$time" &
    	    alias nanodevlog="nano ~/nodejs_cvc/logging/dev_$time"
    	    alias taildevlog="tail -f ~/nodejs_cvc/logging/dev_$time"
         fi
    fi

fi

