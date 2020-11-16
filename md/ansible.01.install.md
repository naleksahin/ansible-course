# Ansible Installation and configuration

## Reference Info

* [Ansible concepts](https://docs.ansible.com/ansible/latest/user_guide/basic_concepts.html)
* [Installation guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installation-guide)
* [Configuring Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_configuration.html)

## Info

### Definitions:

* **Tasks**: A task is the smallest unit of work. It can be an action like “Install a database,” “Install a web server,” “Create a firewall rule,” or “Copy this configuration file to that server.”
* **Plays**: A play is made up of tasks. For example, the play: “Prepare a database to be used by a web server” is made
up of tasks: 1) Install the database package; 2) Set a password for the database administrator; 3) Create a database; and 4) Set access to the database.
* **Playbook**: A playbook is made up of plays. A playbook could be: “Prepare my website with a database backend,” and the plays would be 1) Set up the database server; and 2) Set up the web server.
* **Roles**: Roles are used to save and organize playbooks and allow sharing and reuse of playbooks. Following the previous examples, if you need to fully configure a web server,
you can use a role that others have written and shared to do just that. Since roles are highly configurable (if written correctly), they can be easily reused to suit any given deployment requirements.
* **Ansible Galaxy**: Ansible Galaxy is an online repository where roles are uploaded so they can be shared with others. It is integrated with GitHub, so roles can be organized into Git repositories and then shared via Ansible Galaxy. 

### Tips for writing playbooks

The best source for learning Ansible is the official documentation site. And, as usual, online search is your friend. 
Once you are ready, follow these guidelines:
* When testing, use a small subset of servers so that your plays execute faster. If they are successful in one server, they will be successful in others.
* Always do a dry run to make sure all commands are working (run with --check-mode flag).
* Test as often as you need to without fear of breaking things. Tasks describe a desired state, so if a desired state is already achieved, it will simply be ignored.
* Be sure all host names defined in /etc/ansible/hosts (or your custom inventory file) are resolvable.
* Because communication to remote hosts is done using SSH, keys have to be accepted by the control machine, so either 1) exchange keys with remote hosts prior to starting; or 2) be ready to type in “Yes” to accept SSH key exchange requests for each remote host you want to manage.
* Although you can combine tasks for different Linux distributions in one playbook, it’s cleaner to write a separate playbook for each distro. 

## Tasks

1. Install ansible package on the control node. Create a regular user **ansible** with the password of **devops**. Use this user for all tasks and playbooks.
   All playbooks and other Ansible configuration that you create should be stored in _/home/ansible/plays_.

2. Create a configuration file _ansible.cfg_ to meet the following requirements:
	1. The roles path should include _/home/ansible/plays/roles_.
	2. The inventory file path is _/home/ansible/plays/inventory_.
	3. Privilege escallation is **disabled** by default.
	4. Ansible should be able to manage **10 hosts** at a single time.
	5. Ansible should connect to all managed nodes using the **ansible** user.
	6. Increase the default timeout to 60 seconds by default for Ansible

3. Create an inventory file _inventory_ with the following:
	1. ansible-2 is a member of the **proxy** host group.
	2. ansible-3 is a member of the **webservers** host group.
	3. ansible-4 is a member of the **webservers** host group.
	4. ansible-5 is a member of the **database** host group.

Provide ansible.cfg and inventory files to the tutor.

