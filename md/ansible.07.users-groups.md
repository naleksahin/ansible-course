# Users and groups

## Reference Info

* [Ansible Vault](https://docs.ansible.com/ansible/latest/user_guide/vault.html)
* [Using Vault in playbooks](https://docs.ansible.com/ansible/latest/user_guide/playbooks_vault.html#using-vault-in-playbooks)
* [Using Variables](https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html)
* [Loops](https://docs.ansible.com/ansible/latest/user_guide/playbooks_loops.html)
* [items – list of items](https://docs.ansible.com/ansible/latest/plugins/lookup/items.html)
* [Conditionals](https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html)
* [Hashing filters](https://docs.ansible.com/ansible/latest/user_guide/playbooks_filters.html#hashing-filters)
* [Other Useful Filters](https://docs.ansible.com/ansible/latest/user_guide/playbooks_filters.html#id8)
* [user – Manage user accounts](https://docs.ansible.com/ansible/latest/modules/user_module.html#user-module)
* [group – Add or remove groups](https://docs.ansible.com/ansible/latest/modules/group_module.html#group-module)


## Tasks

1. Use _vars/user_list.yml_ file to save this content.

```yaml---
users:
- username: alice
  uid: 1201
- username: vincent
  uid: 1202
- username: sandy
  uid: 2201
- username: patrick
  uid: 2202
- username: jack
  uid: 11111
- username: david
  uid: 22222
  ```
2. Create a playbook _users.yml_ that uses the vault file _secret.yml_ to achieve the following:
	1. Users whose user ID starts with 1 should be created on servers in the **webservers** host group. User password should be used from the **user_password** variable.
	2. Users whose user ID starts with 2 should be created on servers in the **database** host group. User password should be used from the **user_password** variable.
	3. All users should be members of a supplementary group **wheel**.
	4. Shell should be set to _/bin/bash_ for all users.
	5. Account passwords should use the SHA512 hash format.
	6. Each user should have an SSH key uploaded (use the SSH key that you created previously, see task #2).

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well. 

