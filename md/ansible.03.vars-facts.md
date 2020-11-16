# Work with Ansible Facts
## Reference Info

* [Working With Playbooks](https://docs.ansible.com/ansible/latest/user_guide/playbooks.html)
* [Conditionals](https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html)
* [Special Variables](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html)
* [Discovering variables: facts and magic variables](https://docs.ansible.com/ansible/devel/user_guide/playbooks_vars_facts.html#discovering-variables-facts-and-magic-variables)
* [ansible-playbook](https://docs.ansible.com/ansible/latest/cli/ansible-playbook.html)

## Info

While ad-hoc commands are useful for testing and simple one-off tasks, playbooks can be used to capture a set of repeatable tasks to run in the future. A playbook contains one or more plays which define a set of hosts to configure and a list of tasks to be performed.

### Ansible variables

* Review on [naming](https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html) convention
* Some more places to define [variables](https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html#using-variables):
	* vars, vars_files, vars_prompt
	* Command line: ansible-playbook play.yml -e '{"my_var":"my_val"}'
	* Roles, blocks, inventories.
* A note on [quotes](https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html#hey-wait-a-yaml-gotcha)

### Dictionary variables

* Yaml fomatting allows for python style dictionaries to be used as variables
* There are two fomats to access dictionary values:
	* employee['name']
	* employee.name
  The bracket syntax is safer as the dot notation can hae collisions with python incertain circumstances

### Magic variables and 

Ansible defines several special variables knowns as [magic variables](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html#magic)
The most [commonly used magic variables](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html#magic):
* hostvars
* groups
* group_names
* inventory_hostname
You can use [Jinja2 filters](https://jinja.palletsprojects.com/en/2.10.x/templates/) to manipulate text fomat

### What are facts

**Facts** are infomation discovered by Ansible about a target system.
There are two ways facts are collected:
* Using the setup module with an ad-hoc command: ansible all -m setup
* Facts are gathered by default when a playbook is executed
You can disable Fact Gathering in playbooks using the _gather_facts_ attribute

### How to use facts
* Any collected facts may be accessed though variables: {{ ansible_default_ipv4.address }}
* It is possible to use filters with regex, in ad-hoc mode, to match certain fact names
* Facts may also be used with conditionals to have plays behave differently on hosts that meet certain criteria

### Facts.d - custom facts
* It is possible to define custom facts on your servers using the facts.d directory
* Create /etc/ansible/facts.d directory on target system. All valid files withib this directory ending in .fact are returnes under _ansible_local_ with facts
* Fact file may be INI, JSON, or an executable that returns JSON


## Tasks

1. Create a playbook _facts.yml_ that runs on hosts in the **database** host group and does the following:
    * A custom Ansible fact _server_role=mysql_ is created that can be retrieved from ansible_local.custom.role when using Ansible setup module.

Run the playbook and provide the output in the text file to the tutor. Provide facts.yml file as well.    




