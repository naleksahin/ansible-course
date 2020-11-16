**Ansible** is an open source automation tool used to configure servers, install software, and perform a wide variety of IT tasks from one central location. 
It is a one-to-many agentless mechanism where all instructions are run from a control machine that communicates with remote clients over SSH, although other protocols
are also supported.

5 VMs will be used in this course. One VM will be configured as an Ansible control node. Other four VMs will be used to apply playbooks:

	1. ansible-control – Ansible control node
	2. ansible-2 – managed host
	3. ansible-3 – managed host
	4. ansible-4 – managed host
	5. ansible-5 – managed host
	
ansible-5 server has a 1GB secondary /dev/sdb disk attached.
	
**Useful commands:**
* **ansible-doc --list | grep _ANSIBLE_MODULE_**
* **ansible-doc _ANSIBLE_MODULE_** : to find out listed example of Ansible modules
* **ansible-playbook playbookname.yml --check-syntax**
* **ansible --version** : to find out which Ansible config file is currently in use
* **ansible-config view** : display the content from Ansible config file
