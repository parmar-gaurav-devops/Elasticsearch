#!/bin/bash
echo 'clone elasticsearch'
ansible-galaxy install elastic.elasticsearch
echo 'upload selfsigned certificate'
cp -R certs/  ~/.ansible/roles/elastic.elasticsearch/files/
echo 'Configuring AWS Infrastructure..'
terraform init
terraform plan
terraform apply 
cp host.ini ansible/
echo 'Installing Ansible'
ansible-playbook -i ansible/host.ini -b -u ubuntu --key-file=~/.ssh/id_rsa ansible/main.yaml
