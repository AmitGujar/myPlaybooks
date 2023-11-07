#!/bin/bash

setup_env() {
    echo "downloding config......"
    git clone "https://github.com/AmitGujar/dev-toolbox"
    sleep
    if [ $? -ne 0 ]; then
        echo "download failed....."
    else
        echo "download success"
    fi
}
# setup_env

install_tools() {
   sudo apt install nginx -y
}
install_tools