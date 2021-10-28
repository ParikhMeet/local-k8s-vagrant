#!/usr/bin/env bash

echo "Provisioning"
ansible-playbook -i ansible/hosts.ini ansible/provision.yml

echo "Join Nodes"
ansible-playbook -i ansible/hosts.ini ansible/join-node.yml

echo "Scaffolding"
ansible-playbook -i ansible/hosts.ini ansible/setup.yml

echo "Enjoy your new environment ☁️"