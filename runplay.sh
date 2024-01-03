#!/bin/bash

PLAYBOOK_PATH="/home/amitdg/Desktop/myplaybooks/playbooks/"
IMAGE_NAME="amitgujar/ansible:alpha"

docker run -v $PLAYBOOK_PATH:/testplaybook.yml -it $IMAGE_NAME ansible-playbook -i localhost playbooks/testplaybook.yml