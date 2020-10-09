#!/bin/bash

ansible webservers -m copy -a "src=/etc/hosts dest=/tmp/hosts"
ansible ansible-3 -m yum -a "name=elinks" -b
ansible all -a "df -h"
ansible all -m shell -a 'free -m'
ansible all -a "ls -l /var/log/messages"
ansible all -a "tail /var/log/messages" -b