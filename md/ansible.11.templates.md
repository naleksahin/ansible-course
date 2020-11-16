# Create and use templates
## Reference Info

* [template – Template a file out to a remote server](https://docs.ansible.com/ansible/latest/modules/template_module.html#template-module)


## Tasks

1. Create a playbook _server_list.yml_ that does the following:
    1. Playbook uses a Jinja2 template _server_list.j2_ to create a file _/etc/server_list.txt_ on hosts in the **database** host group.
    2. The file _/etc/server_list.txt_ is owned by the _ansible_ user.
    3. File permissions are set to 0600.
    4. SELinux file label should be set to net_conf_t.
    5. The content of the file is a list of FQDNs of all inventory hosts.

    After running the playbook, the content of the file /etc/server_list.txt should be the following:
    ```txt
    ansible-2
    ansible-3
    ansible-4
    ansible-5
    ```
    Note: if the FQDN of any inventory host changes, re-running the playbook should update the file with the new values.

    6. Run tha playbook and ensure the files are correctly deployed

2. Create a playbook _sudoers.yml_ that does the following: 
    1. Playbook uses the template module to deploy a Jinja2 template _sudoers.j2_ on all servers after validating the syntax of the generated file
    2. Create a template sudoers file in sudoers.j2 that produces a file with appropriate output for each host:
        ```bash
        %sysops <SERVER_IP> = (ALL) ALL
        Host_Alias WEBSERVERS = <server1, server2>
        Host_Alias DBSERVERS = <serverA>
        %httpd WEBSERVERS = /bin/su - webuser
        %dba DBSERVERS = /bin/su - dbuser 
        ```
        SERVER_IP - IP address of the managed host
        server1, server2 - servers of group webservers
        serverA - server of group database
    
    Command for validation: /sbin/visudo -cf <filename>

    3. Run tha playbook and ensure the files are correctly deployed

Provide the output in the text file to the tutor. Provide all files you've created as well.     







