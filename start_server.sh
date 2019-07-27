#! /bin/bash

if [[ $# -ne 1 ]]
then
    echo "No args provided: main or dev?"
    echo "Usage: "
    echo "start_server [main|dev]"
    exit 0
else
    if [[ "$1" = "main" ]]
    then
        echo "Starting main server at $(date "+%F-%T")"
        node js_cvc_interface_prod.js 2>&1 > logging/main_"$(date "+%F-%T")" &
    else if [[ "$1" = "dev" ]] 
         then
            echo "Starting dev server at $(date "+%F-%T")"
            node js_cvc_interface.js 2>&1 > logging/dev_"$(date "+%F-%T")" &
         fi
    fi

fi

