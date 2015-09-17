Role Name
=========

This role installs sane nginx jails for ansible
Mostly based on this [DO Article]()
This Role assumes you already have fail2ban installed correctly

Requirements
------------

fail2ban installed


Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------


Example Playbook
----------------


    - hosts: nginx_servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

