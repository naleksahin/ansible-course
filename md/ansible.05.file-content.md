# File content

## Reference Info

* [Working With Playbooks](https://docs.ansible.com/ansible/latest/user_guide/playbooks.html)
* [Conditionals](https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html)
* [Special Variables](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html)
* [copy – Copy files to remote locations](https://docs.ansible.com/ansible/latest/modules/copy_module.html#copy-module)



## Tasks

1. Create a playbook _motd.yml_ that runs on all inventory hosts and does the following:
	* Replace any existing content of _/etc/motd_ with text. Text depends on the host group:
		* On hosts in the *proxy* host group the line should be *“Welcome to HAProxy server”*.
		* On hosts in the *webservers* host group the line should be *“Welcome to Apache server”*.
		* On hosts in the *database* host group the line should be *“Welcome to MySQL server”*.

Run the playbook and provide the output in the text file to the tutor. Provide motd.yml file as well. 