#!/bin/bash

send_alert() {
    local topic
    curl -d "$1" ntfy.sh/$topic
}

check_server() {
    read -p "Enter the server ip = " location

    ping -c3 "$location"

    if [ $? -ne 0 ]; then
        send_alert "Server is up 🎉"
    else 
        send_alert "Server is down 😭"
    fi
}

send_ping() {
    while true; do
        check_server
        if [ $? -eq 0 ]; then
            exit 0
        fi
    done
}
send_ping