# Ad-Hoc Commands

## Reference Info

* [Introduction to ad-hoc commands](https://docs.ansible.com/ansible/latest/user_guide/intro_adhoc.html#intro-adhoc)
* [Run your first Ansible commands](https://docs.ansible.com/ansible/latest/user_guide/intro_getting_started.html#action-run-your-first-ansible-commands)
* [Introduction to modules](https://docs.ansible.com/ansible/latest/user_guide/modules_intro.html)
* [lineinfile – Manage lines in text files](https://docs.ansible.com/ansible/latest/modules/lineinfile_module.html#lineinfile-module)
* [authorized_key – Adds or removes an SSH authorized key](https://docs.ansible.com/ansible/latest/modules/authorized_key_module.html#authorized-key-module)
* [copy – Copy files to remote locations](https://docs.ansible.com/ansible/latest/modules/copy_module.html#copy-module)
* [yum – Manages packages with the yum package manager](https://docs.ansible.com/ansible/latest/modules/yum_module.html#yum-module)
* [Using lookup plugins](https://docs.ansible.com/ansible/latest/plugins/lookup.html#using-lookup-plugins)
* [Connecting to remote nodes](https://docs.ansible.com/ansible/latest/user_guide/intro_getting_started.html#connecting-to-remote-nodes)

## Info

### What is an ad-hoc command in Ansible?

An Ansible ad-hoc command uses the /usr/bin/ansible command-line tool to automate a single task on one or more managed nodes
* You can run ansible either ad-hoc or as a playbook
* Both methods have the same capabilities
* Ad-hoc commands are effectively one-liners

### Use cases of Ad-hoc

* Operational commands
	* Checking log contents
	* Daemon control
	* Process management

* Informational commands
	* Check installed software
	* Check system properties
	* Gather system performance information (CPU, disk space, memory use)

* Research
	* Work with unfamiliar modules on test systems
	* Practice for playbook engineering

### What are modules?

**Modules** are discrete units of code that can be used from the command line or in a playbook task. Ansible executes each module, usually on the remote target node, and collects return values.

### Commonly used Ansible modules

* Workng with files: [copy](https://docs.ansible.com/ansible/latest/modules/copy_module.html#copy-module), [archive](https://docs.ansible.com/ansible/latest/modules/archive_module.html#archive-module), [unarchive](https://docs.ansible.com/ansible/latest/modules/unarchive_module.html#unarchive-module), [get_url](https://docs.ansible.com/ansible/latest/modules/get_url_module.html#get-url-module)
* [user](https://docs.ansible.com/ansible/latest/modules/user_module.html#user-module), [group](https://docs.ansible.com/ansible/latest/modules/group_module.html#group-module)
* [ping](https://docs.ansible.com/ansible/latest/modules/ping_module.html#ping-module)
* [service](https://docs.ansible.com/ansible/latest/modules/service_module.html#service-module)
* [yum](https://docs.ansible.com/ansible/latest/modules/yum_module.html#yum-module)
* [lineinfile](https://docs.ansible.com/ansible/latest/modules/lineinfile_module.html#lineinfile-module)
* [htpasswd](https://docs.ansible.com/ansible/latest/modules/htpasswd_module.html#htpasswd-module)
* [shell](https://docs.ansible.com/ansible/latest/modules/shell_module.html#shell-module) and [command](https://docs.ansible.com/ansible/latest/modules/command_module.html#command-module) modules
* [script](https://docs.ansible.com/ansible/latest/modules/script_module.html#script-module)
* [debug](https://docs.ansible.com/ansible/latest/modules/debug_module.html#debug-module)

## Tasks

1. Generate an [SSH keypair](https://www.ssh.com/ssh/keygen/) on the control node. 

2. Write a script _adhoc_ that uses Ansible ad-hoc commands to achieve the following (use root user):
	1. Check the connectivity of your servers 
	2. User _ansible_ is created on all inventory hosts (not the control node).
	3. SSH key (that you generated) is copied to all inventory hosts for the ansible user and stored in /home/ansible/.ssh/authorized_keys.
	4. The ansible user is allowed to elevate privileges on all inventory hosts without having to provide a password.

3. Write a script _adhoc-2_ that uses Ansible ad-hoc commands to achieve the following (ansible user):
	1. Copy the file _/etc/hosts_ to _/tmp/hosts_ on webservers
	2. Install elinks on ansible-3
	3. Find the free space of your servers
	4. Find out the memory usage of your servers
	5. Do an ls -l on the targets _/var/log/messages_ file.
	6. Tail the contents of the targets _/var/log/messages_ file.

Run the scripts and provide the output in the text file to the tutor. Provide adhoc and adhoc-2 files as well.
