# Create and work with roles  (error handling, templates, ansible facts)

## Reference Info

* [Roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html)
* [service – Manage services](https://docs.ansible.com/ansible/latest/modules/service_module.html)
* [firewalld – Manage arbitrary ports/services with firewalld](https://docs.ansible.com/ansible/latest/modules/firewalld_module.html#firewalld-module)
* [template – Template a file out to a remote server](https://docs.ansible.com/ansible/latest/modules/template_module.html#template-module)
* [Error Handling In Playbooks](https://docs.ansible.com/ansible/latest/user_guide/playbooks_error_handling.html)
* [Handlers: Running Operations On Change](https://docs.ansible.com/ansible/latest/user_guide/playbooks_intro.html#handlers-running-operations-on-change)



## Tasks

1. Create a role called **sapache** and store it in _roles/_. The role should satisfy the following requirements:
	* The **httpd**, **mod_ssl**, **php**, **firewalld** packages are installed. 
	* Apache service is running and enabled on boot.
	* Firewall is configured to allow all incoming traffic on HTTP port TCP 80 and HTTPS port TCP 443.
	* Apache service should be restarted every time the file _/var/www/html/index.html_ is modified. 
	  A Jinja2 template file index.html.j2 is used to create the file _/var/www/html/index.html_ with the following content:
```bsh
Hello from HOSTNAME IPV4ADDRESS
DISTRIBUTION is my OS
```
**HOSTNAME** is the hostname of the mnaged node (pay attention to [special variables](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html))

**IPV4ADDRESS** is the IP address of the managed node (pay attention to [ansible facts](https://docs.ansible.com/ansible/devel/user_guide/playbooks_vars_facts.html#ansible-facts))

**DISTRIBUTION** is the OS name of the managed node (pay attention to [ansible facts](https://docs.ansible.com/ansible/devel/user_guide/playbooks_vars_facts.html#ansible-facts))

2. Create a playbook _apache.yml_ that uses the role and runs on hosts in the **webservers** host group.

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well.
