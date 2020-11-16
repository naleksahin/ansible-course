# Use Conditionals to Control Play Execution
## Reference Info

* [Conditionals](https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html#conditionals)
* [sysctl – Manage entries in sysctl.conf](https://docs.ansible.com/ansible/latest/modules/sysctl_module.html#sysctl-manage-entries-in-sysctl-conf)
* [debug – Print statements during execution](https://docs.ansible.com/ansible/latest/modules/debug_module.html#debug-module)
* [Variables discovered from systems: Facts](https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html#variables-discovered-from-systems-facts)


## Tasks

Create a playbook _sysctl.yml_ that runs on all inventory hosts and does the following:
* If a server has more than 2048MB of RAM, then parameter _vm.swappiness_ is set to 10.
* If a server has less than 2048MB of RAM, then the following error message is displayed:

```
Server memory less than 2048MB
```

Run the playbook and provide the output in the text file to the tutor. Provide sysctl.yml file as well.    
