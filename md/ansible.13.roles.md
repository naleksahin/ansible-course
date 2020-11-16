# Create and work with roles  (working with filesystem)

## Reference Info

* [Roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html)
* [parted – Configure block device partitions](https://docs.ansible.com/ansible/latest/modules/parted_module.html)
* [lvg – Configure LVM volume groups](https://docs.ansible.com/ansible/latest/modules/lvg_module.html#lvg-module)
* [lvol – Configure LVM logical volumes](https://docs.ansible.com/ansible/latest/modules/lvol_module.html#lvol-module)
* [filesystem – Makes a filesystem](https://docs.ansible.com/ansible/latest/modules/filesystem_module.html#filesystem-module)
* [file – Manage files and file properties](https://docs.ansible.com/ansible/latest/modules/file_module.html)
* [mount – Control active and configured mount points](https://docs.ansible.com/ansible/latest/modules/mount_module.html#mount-module)
* [yum – Manages packages with the yum package manager](https://docs.ansible.com/ansible/latest/modules/yum_module.html#yum-module)
* [Standard loops](https://docs.ansible.com/ansible/latest/user_guide/playbooks_loops.html#standard-loops)
* [service – Manage services](https://docs.ansible.com/ansible/latest/modules/service_module.html)
* [firewalld – Manage arbitrary ports/services with firewalld](https://docs.ansible.com/ansible/latest/modules/firewalld_module.html#firewalld-module)
* [template – Template a file out to a remote server](https://docs.ansible.com/ansible/latest/modules/template_module.html#template-module)



## Tasks

1. Create a role called _mysql_ and store it in _roles/_. The role should satisfy the following requirements:
    * A primary partition number 1 of size 800MB on device /dev/sdb is created.
	* An LVM volume group called vg_database is created that uses the primary partition created above.
	* An LVM logical volume called lv_mysql is created of size 512MB in the volume group vg_database.
	* An XFS filesystem on the logical volume lv_mysql is created.
	* Create folder /mnt/mysql_backups.
	* Logical volume lv_mysql is permanently mounted on /mnt/mysql_backups.
	* mysql-community-server and firewalld packages are installed. 
	* Make sure filewall service is enabled and running 
	* Firewall is configured to allow all incoming traffic on MySQL port TCP 3306.
	* MySQL root user password should be set from the variable database_password.
	* MySQL server and firewalld service should be started and enabled on boot.
	* MySQL server configuration file is generated from the my.cnf.j2 Jinja2 template with the following content (destination config: /etc/my.cnf):
```ini
[mysqld]
bind_address = {{ ansible_default_ipv4.address }}
skip_name_resolve
datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock

symbolic-links=0
sql_mode=NO_ENGINE_SUBSTITUTION,STRICT_TRANS_TABLES

[mysqld_safe]
log-error=/var/log/mysqld.log
pid-file=/var/run/mysqld/mysqld.pid
```
2. Create a playbook _mysql.yml_ that uses the role and runs on hosts in the database host group.

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well. 