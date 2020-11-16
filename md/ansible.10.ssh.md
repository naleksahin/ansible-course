# Configure SSH server

## Reference Info

* [sshd_config](https://linux.die.net/man/5/sshd_config)
* [lineinfile – Manage lines in text files](https://docs.ansible.com/ansible/latest/modules/lineinfile_module.html#lineinfile-module)
* [service – Manage services](https://docs.ansible.com/ansible/latest/modules/service_module.html#service-module)
* [shell – Execute shell commands on targets](https://docs.ansible.com/ansible/latest/modules/shell_module.html#shell-module)

## Tasks

* Create a playbook _sshd.yml_ that runs on all inventory hosts and configures SSHD daemon as follows:
	* banner is set to _/etc/motd_
	* X11Forwarding is disabled
	* MaxAuthTries is set to 3
	* Restart daemon

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well. 


