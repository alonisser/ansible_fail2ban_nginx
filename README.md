
[![Build Status](https://travis-ci.org/alonisser/ansible_fail2ban_nginx.svg)](https://travis-ci.org/alonisser/ansible_fail2ban_nginx) [![Ansible Galaxy](https://img.shields.io/ansible/role/5361.svg?style=flat)](https://galaxy.ansible.com/list#/roles/5361)

ansible_fail2ban_nginx
======================

This role installs sane nginx jails for ansible
Mostly based on this [Digital Ocean article](https://www.digitalocean.com/community/tutorials/how-to-protect-an-nginx-server-with-fail2ban-on-ubuntu-14-04)
This Role assumes you already have fail2ban installed correctly

Requirements
------------

fail2ban installed


Role Variables
--------------

Available vars:

`nginx_logpath` defaults to: /var/log/nginx/access.log

`fail2ban_service_location` defaults to: /etc/init.d/fail2ban

Dependencies
------------


Example Playbook
----------------


    - hosts: nginx_servers
      roles:
        - role: fail2ban_nginx
         
Also see the tests for example

License
-------

MIT

Author Information
------------------

