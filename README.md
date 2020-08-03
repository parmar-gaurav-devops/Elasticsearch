# Elasticsearch

Requirements:
  - Terraform = 0.11
  - Ansible = 2.19
  - Ansible Galaxy
  - AWS Access keys
  - AWS Secret Keys
  - SSH keys
  - EC2 instance <t3a.medium>

Tech Stack:
Elasticsearch - 7.x

Proposed solution uses Terraform to spin up AWS EC2 Instance to host secure and password protected Elasticsearch 7.x. Terraform script also creates VPC to host EC2 instance. 
In addition to that Ansible uses Ansible Galaxy to install elastic.elasticsearch on newly created instance.

Terraform and Ansible provides reusablity, tracebility and verifyability to solve given problems.

#How to ?  

- Install suggested prerequisite
- clone Git repo - https://github.com/parmar-gaurav-devops/Elasticsearch
- go to directory elk-project
- run chmod +x bootstrap-elk.sh
- execute ./bootstrap-elk.sh

Default username - elastic and password - password123
