# Software Repositories

## Reference Info

* [yum_repository – Add or remove YUM repositories](https://docs.ansible.com/ansible/latest/modules/yum_repository_module.html#yum-repository-module)


## Tasks

Create a playbook _repository.yml_ that runs on servers in the **database** host group and does the following:
* A YUM repository file is created.
* The name of the repository is **mysql56-community**.
* The description of the repository is “MySQL 5.6 YUM Repo”.
* Repository baseurl is **http://repo.mysql.com/yum/mysql-5.6-community/el/7/x86_64/**.
* Repository GPG key is at **http://repo.mysql.com/RPM-GPG-KEY-mysql**.
* Repository GPG check is enabled.
* Repository is enabled.

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well. 