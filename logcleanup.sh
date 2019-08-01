#! /bin/bash

running_cvc=$(ps -e -o args | grep -Po 'cvc \+interp sim_modules/tb_ice40.sv tempcode\/\K[^\/]+(?=.+)')
logged_cvc=$(find /home/menon18/nodejs_cvc/logging/ -type d | grep -Po '/home/menon18/nodejs_cvc/logging/\K.+')
readarray -t runarray <<<"$running_cvc"
while read -r line; do
    if [[ " ${runarray[*]} " != *"$line"* ]]; then
        if [[ -f "/home/menon18/nodejs_cvc/logging/$line/cvclog" ]]; then
            data=$(tr -d '\0' < "/home/menon18/nodejs_cvc/logging/$line/cvclog")
            if [[ "$data" != *"WARN"* ]]; then
                echo "Removed $line"
                rm -rf "/home/menon18/nodejs_cvc/logging/$line"
            fi
        else
            echo "Removed $line"
            rm -rf "/home/menon18/nodejs_cvc/logging/$line"
        fi
    fi
done <<< "$logged_cvc"