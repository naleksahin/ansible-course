# Work with Ansible Galaxy

## Reference Info

* [ansible-galaxy cli](https://docs.ansible.com/ansible/latest/cli/ansible-galaxy.html)
* [Galaxy User Guide](https://docs.ansible.com/ansible/latest/galaxy/user_guide.html#galaxy-user-guide)


## Tasks

Use Ansible Galaxy to download and install geerlingguy.haproxy role in _roles/_.
Create a playbook _haproxy.yml_ that runs on servers in the **proxy** host group and does the following:
* Use geerlingguy.haproxy role to load balance request between hosts in the **webservers** host group.
* Use roundrobin load balancing method.
* HAProxy backend servers should be configured for HTTP only (port 80).
* Firewall is configured to allow all incoming traffic on port TCP 80.

If your playbook works, then doing “curl http://ansible-2/” should return output from the web server (see task #14). Running the command again should return output from the other web server.

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well.
