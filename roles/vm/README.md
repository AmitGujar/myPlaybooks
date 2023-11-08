Role Name
=========

This Ansible role is designed to automate the process of creating virtual machines (VMs) on Microsoft Azure which allows the provisioning and management of Azure resources.
The role includes tasks for setting up resource groups, virtual networks, security groups, and VMs according to the provided configuration. It is highly customizable, enabling the creation of VMs with different sizes, disk configurations, and network settings.
This role aims to simplify and streamline the process of VM creation on Azure.

Requirements
------------

- An azure subscription (of course lol)
- Make sure you have configured the azure environment for auth
- Download this collection
```
pip3 install -r /usr/lib/python3/dist-packages/ansible_collections/azure/azcollection/requirements-azure.txt
```

Role Variables
--------------
[/vars/main.yml]
- vm_resource_group: "rg-{{ resource_name }}-001"
- vm_location: "centralindia"
- vm_name: "machine"
- vm_virtual_network: "vnet-{{ resource_name }}"
- vm_public_ip: "pip-{{ resource_name }}"
- vm_nsg_name: "nsg-{{ vm_name }}-001"
- vm_subnet_name: "subnet-{{ vm_name }}"
- vm_nic_name: "nic-{{ vm_name }}"
- vm_vnet_address_prefixes: "10.0.0.0/16"
- vm_days_to_keep: "3"
- vm_size: B1s
- vm_admin_username: amitgujar

[These vars are meant to be used for user prompt]
- resource_name
- vm_count
- delete_resources [bool value => yes/no ]

<!-- Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles. -->

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      vars:
        [refer to the above section]
      roles:
        - amitgujar0.azure_resources_custom.vm

License
-------

MIT

Author Information
------------------

Amit Gujar is really nice guy.
