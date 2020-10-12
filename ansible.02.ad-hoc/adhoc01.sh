#!/bin/bash

ansible all -m ping -i all 

ansible all -m user -a "name=ansible createhome=yes"

ansible all -m shell -a "rm -rf /home/ansible/.ssh"

ansible all -m authorized_key -a "user=ansible state=present key='{{ lookup('file', '/home/ansible/.ssh/id_rsa.pub') }}'" 

ansible all -m lineinfile -a "dest=/etc/sudoers state=present line='%ansible ALL=(ALL:ALL) NOPASSWD: ALL'"
