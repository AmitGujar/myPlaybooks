#!/bin/bash
# ansible-playbook playbooks/vmplaybook.yaml $1
echo "executing the config task"
if [ $? -eq 0 ]; then
    ansible-playbook playbooks/configplay.yml
    echo "it's good"
else
    echo "something went wrong"
fi
