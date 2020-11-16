# Use Archiving
## Reference Info

* [archive – Creates a compressed archive of one or more files or trees](https://docs.ansible.com/ansible/latest/modules/archive_module.html#archive-module)
* [unarchive – Unpacks an archive after (optionally) copying it from the local machine](https://docs.ansible.com/ansible/latest/modules/unarchive_module.html#unarchive-module)
* [lineinfile – Manage lines in text files](https://docs.ansible.com/ansible/latest/modules/lineinfile_module.html#lineinfile-module)
* [fetch – Fetch files from remote nodes](https://docs.ansible.com/ansible/latest/modules/fetch_module.html)


## Tasks

Create a playbook _archive.yml_ that runs on hosts in the **database** host group and does the following:
* A file _/mnt/mysql_backups/database_list.txt_ is created that contains the following line: dev,test,qa,prod.
* A gzip archive of the file _/mnt/mysql_backups/database_list.txt_ is created and stored in _/mnt/mysql_backups/archive.gz_.
* Copy archive to the /home/ansible/ on controle node and unarchive.

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well.
