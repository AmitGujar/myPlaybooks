#!/bin/bash
echo "1. Create/Delete VM"
echo "2. Run your own ansible playbook"
read -p "What do you want to do = " choice

vm_create() {
    read -p "Specify the VM Size = " vm_size
    read -p "Specify the VM username = " vm_admin_username
    echo "Creating the virtual machine"
    ansible-playbook playbooks/vmplaybook.yaml --extra-vars "vm_size=$vm_size vm_admin_username=$vm_admin_username"
    return 0
}

custom_playbook() {
    echo "refer to the documentation...."
}

case $choice in
"1")
    vm_create
    ;;
"2")
    custom_playbook
    ;;
*)
    echo "c & d only options"
    ;;
esac
