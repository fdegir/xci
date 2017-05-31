#!/bin/bash

export BIFROST_INVENTORY_SOURCE=/tmp/bifrost-inventory.yml

ansible-playbook /home/jenkins/fdegir/github/xci/playbooks/xci-prepare-environment.yml
ansible-playbook -i /home/jenkins/fdegir/github/bifrost/playbooks/inventory/bifrost_inventory.py /home/jenkins/fdegir/github/xci/playbooks/xci-configure-hosts.yml
