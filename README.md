ASM-oracle
=======================

We need to take several steps to run this role.

**step 1**: you need to install ansible. for install ansible Follow these commands.

`[root@ansibleserver]# yum install ansible`

**step 2**: go to this path `/etc/ansible/` and edit hosts file, add this line of code to the end of the file.

```
[root@ansibleserver]# vim /etc/ansible/hosts

[ora]
oracle ansible_host=192.168.231.91
```
**step 3**: Download the role and move to the specified path. `/etc/ansible/roles/` and `unzip` file and then `rename` to `asm-oracle`

**step 4**: Now, we need to create playbook file. so, follow these commands:

```
[root@ansibleserver]# vim /etc/ansible/playbook-ora.yml

---
    - hosts:
        - ora
      roles:
        - asm-oracle
```

**step 5**: Finally, we run the following role

```
[root@ansibleserver]# cd /etc/ansible
[root@ansibleserver ansible]# ansible-palybook playbook-ora.yml
