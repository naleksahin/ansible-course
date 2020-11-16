# Scheduled tasks

## Reference Info

* [cron – Manage cron.d and crontab entries](https://docs.ansible.com/ansible/latest/modules/cron_module.html#cron-module)
* [file – Manage files and file properties](https://docs.ansible.com/ansible/latest/modules/file_module.html#file-module)
* [at – Schedule the execution of a command or script file via the at command](https://docs.ansible.com/ansible/latest/collections/ansible/posix/at_module.html)


## Tasks

1. Create a playbook _regular\_tasks.yml_ that runs on servers in the **proxy** host group and does the following:
    * A root crontab record is created that runs every hour.
    * The cron job appends the file _/var/log/time.log_ with the output from the **date** command.
2. Create a playbook _at\_tasks_ that runs on servers in the **database** host group and does the following:
    * Make sure _at_ package is installed and _atd_ service is running
    * An at task for root is created that checks disk space (df -h) and saves result in _/tmp/diskspace_. Task should be started in 20 minutes.

Run playbooks, make sure both jobs (cron and at) exist, and provide the output in the text file to the tutor. Provide all files you've created as well. 