# 
## Reference Info

* [Error handling in playbooks](https://docs.ansible.com/ansible/latest/user_guide/playbooks_error_handling.html)
* [Handling errors with blocks](https://docs.ansible.com/ansible/latest/user_guide/playbooks_blocks.html#handling-errors-with-blocks)


## Tasks

Create a playbook _html.yml_ that does the following:
* Playbook downloads http://INVENTOY_HOSTNAME/index.html on localhost. Do it 2 times:
    1. Use _ignore_errors_ to avoid playbook failure. Download file to /home/ansible/INVENTORY_HOSTNAME-1 
    2. Use _block_ to avoid failure:
        1. Output "File downloaded" if attempt succed
        2. Configure the playbook to handle failure by outputting "The file doesn't exists!"
        3. Configure the playbook to output "Attempt completed" to stdout whether it was successful or not
        
       Download file to /home/ansible/INVENTORY_HOSTNAME-2

Run the playbook and provide the output in the text file to the tutor. Provide all files you've created as well. 






