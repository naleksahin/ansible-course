#!/bin/bash

ansible all -m ping -i all 

ansible all -m user -a "name=ansible createhome=yes"

ansible all -m shell -a "mkdir /home/ansible/.ssh; touch /home/ansible/.ssh/authorized_keys"
ansible all -m copy -a "src=/home/ansible/.ssh/id_rsa.pub dest=/home/ansible/.ssh/id_rsa.pub"
ansible all -m shell -a "cat /home/ansible/.ssh/id_rsa.pub >> /home/ansible/.ssh/authorized_keys"

ansible all -m lineinfile -a "dest=/etc/sudoers state=present line='%ansible ALL=(ALL:ALL) NOPASSWD: ALL'"
