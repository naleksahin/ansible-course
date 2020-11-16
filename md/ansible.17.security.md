# Security

## Reference Info

* [seboolean – Toggles SELinux booleans](https://docs.ansible.com/ansible/latest/modules/seboolean_module.html)
* [getenforce - get the current mode of SELinux](https://man7.org/linux/man-pages/man8/getenforce.8.html)

## Info

### Some Ansible modules for Security

* selinux - Configure the SELinux mode and policy
* firewalld and iptables - Both manage firewall policies
* pamd - Manages PAM modules

## Tasks

1. Create a playbook _selinux-check.yml_ that runs on all hosts and checks the status of SELinux. 
   SELinux should get set to an enforcing so you should ensure all nodes get set correctly.
2. Create a playbook _selinux.yml_ that runs on hosts in the **webservers** host group and does the following:
    * Uses the selinux [**Linux system role**](https://galaxy.ansible.com/linux-system-roles/selinux). Familiarize yourself with the role by reading the README.mb (roles/linux-system-roles.selinux/README.md) and example of use (roles/linux-system-roles.selinux/selinux-playbook.yml)
    * Enables **httpd_can_network_connect** SELinux boolean.
    * The change must survive system reboot.

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well.
